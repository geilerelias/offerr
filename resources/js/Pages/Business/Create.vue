<template>
    <App-layout>
        <v-container class="mt-8">
            <v-card
                class="mx-auto"
                style="max-width:800px"
            >
                <v-toolbar
                    color="primary"
                    dark
                >
                    <v-btn text dark fab class="mr-1" @click="back">
                        <v-icon>
                            mdi-arrow-left
                            {{ route() }}
                        </v-icon>
                    </v-btn>

                    <v-toolbar-title>Registro de Comercio</v-toolbar-title>

                    <v-spacer></v-spacer>

                </v-toolbar>
                <v-card-text>
                    <div
                        class="mx-auto pa-6"
                    >
                        <v-form
                            ref="form"
                            v-model="valid"
                        >
                            <v-text-field
                                v-model="business.business_name"
                                :rules="nameRules"
                                counter="50"
                                label="Nombre o razón social de la empresa *"
                                required
                            ></v-text-field>

                            <v-row>
                                <v-col>
                                    <v-text-field
                                        v-model="business.business_email"
                                        :rules="emailRules"
                                        label="E-mail *"
                                        required
                                    ></v-text-field>
                                </v-col>
                                <v-col>
                                    <v-text-field
                                        v-model="email"
                                        :rules="[
                                                v => !!v || 'E-mail confirmation es requerido',
                                                v => v===business.business_email || 'El E-mail no coincide'
                                                ]"
                                        label="Confirmación de E-mail"
                                        required
                                    ></v-text-field>
                                </v-col>
                            </v-row>
                            <v-row>
                                <v-col>
                                    <v-text-field
                                        type="number"
                                        v-model="business.business_phone"
                                        :rules="[v => !!v || 'Phone is required']"
                                        label="Telefono de contacto"
                                        required
                                    ></v-text-field>
                                </v-col>
                                <v-col>
                                    <v-text-field
                                        v-model="business.business_website"
                                        label="Website"
                                    ></v-text-field>
                                </v-col>
                            </v-row>
                            <v-row>
                                <v-col>
                                    <v-select
                                        v-model="business.business_country"
                                        :items="countries"
                                        :rules="[v => !!v || 'Country is required']"
                                        label="País *"
                                        required
                                    ></v-select>
                                </v-col>
                                <v-col>
                                    <v-select
                                        v-model="business.business_city"
                                        :items="countriesCities[business.business_country]"
                                        :rules="[v => !!v || 'City is required']"
                                        label="Ciudad *"
                                        required
                                    ></v-select>
                                </v-col>
                            </v-row>
                            <v-text-field
                                v-model="business.business_address"
                                :rules="[v => !!v || 'Address is required']"
                                label="Dirección *"
                                required
                            ></v-text-field>


                        </v-form>
                    </div>
                </v-card-text>
                <v-divider></v-divider>

                <v-card-actions>

                    <v-spacer></v-spacer>
                    <v-btn
                        :disabled="!valid"
                        color="success"
                        class="mr-4"
                        @click="saved"
                        :loading="saving"
                    >
                        Guardar
                    </v-btn>
                </v-card-actions>
            </v-card>

        </v-container>
    </App-layout>
</template>

<script>
import AppLayout from './../../Layouts/AppLayout'
import PictureInput from 'vue-picture-input'
import countries_cities from '../../../assets/countries_cities.json'

export default {
    name: "Create",
    components: {
        AppLayout,
        PictureInput
    },
    created: function () {
        let str = '';
        for (const item in countries_cities) {
            str = str + `${item},`;
        }
        this.countries = str.split(',');
    },
    data: () => ({
        saving: false,
        valid: false,
        name: '',
        imageUrl: '',
        imageFile: null,
        imageName: '',
        nameRules: [
            v => !!v || 'Name is required',
            v => (v && v.length <= 50) || 'Name must be less than 50 characters',
        ],
        email: '',
        emailRules: [
            v => !!v || 'E-mail is required',
            v => /.+@.+\..+/.test(v) || 'E-mail must be valid',
        ],
        websiteRules: [
            v => !!v || 'Website is required',
            v => /https?:\/(?:[-w]+.)?([-w]+).w+(?:.w+)?\/?.*/i.test(v) || 'Website must be valid',
        ],
        numberRules: [
            v => !!v || 'El numero de identificación es requerido',
            v => /^\d+$/.test(v) || 'Number must be valid',
        ],
        countries: null,
        countriesCities: countries_cities,
        business: {
            business_name: '',
            business_email: '',
            business_phone: '',
            business_website: '',
            business_country: null,
            business_city: null,
            business_address: '',
        },

    }),

    methods: {
        validate() {
            this.$refs.form.validate()
        },
        reset() {
            this.$refs.form.reset()
        },
        resetValidation() {
            this.$refs.form.resetValidation()
        },

        saved() {
            this.validate();
            this.saving = true;
            if (!this.valid) {
                this.$swal.fire(
                    "Campos Obligatorio!",
                    "Ingresa los campos obligatorios!",
                    "error"
                )
            } else {
                let formData = new FormData();
                formData.append("image", this.business.business_image);
                formData.append("business_name", this.business.business_name);
                formData.append("business_acronym", this.business.business_acronym);
                formData.append("business_email", this.business.business_email);
                formData.append("business_phone", this.business.business_phone);
                formData.append("business_website", this.business.business_website);
                formData.append("business_country", this.business.business_country);
                formData.append("business_city", this.business.business_city);
                formData.append("business_address", this.business.business_address);
                formData.append("user_id", this.$page.user.id);

                axios
                    .post("/business", formData)
                    .then(response => {
                        let res = response.data;
                        this.$swal.fire(
                            "Agregado!",
                            "Su comercio ha sido agregado exitosamente!",
                            "success"
                        ).then(result => {

                            this.business.business_name = '';
                            this.business.business_email = '';
                            this.business.business_phone = '';
                            this.business.business_website = '';
                            this.business.business_country = null;
                            this.business.business_city = null;
                            this.business.business_address = '';
                            this.reset();
                            this.resetValidation();
                            this.saving = false;
                        });
                    })
                    .catch(error => {
                        console.log(error);
                        const array = error.response.data.errors;
                        let text = "";
                        for (var clave in array) {
                            text += clave + ": " + array[clave] + "\n ";
                        }
                        this.$swal.fire("Error!", text, "error");
                        console.log(text);
                    });
            }
        },
        back() {
            window.history.back();
        }

    },
}
</script>

<style>
input[type="submit"],
input[type="reset"],
input[type="button"],
button {
    background: none;
    border: 0;
    color: inherit;
    /* cursor: default; */
    font: inherit;
    line-height: normal;
    overflow: visible;
    padding: 0;
    -webkit-user-select: none; /* for button */
    -webkit-appearance: button; /* for input */
    -moz-user-select: none;
    -ms-user-select: none;
}


</style>
