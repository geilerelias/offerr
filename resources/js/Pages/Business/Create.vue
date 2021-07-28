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
                                    <v-select
                                        v-model="business.category_id"
                                        :items="categories"
                                        :rules="[v => !!v || 'department is required']"
                                        item-text="category_name"
                                        item-value="id"
                                        label="Categoría"
                                        required
                                    >
                                        <inertia-link :href="route('category.create')"
                                                      slot="append-outer">
                                            <v-icon
                                                color="primary"
                                            >
                                                mdi-plus
                                            </v-icon>
                                        </inertia-link>
                                    </v-select>

                                </v-col>
                            </v-row>
                            <v-row v-if="getSubcategories()!==null">
                                <v-col>
                                    <p class="subtitle-2 mb-2">Elige una o mas Subcategorías</p>
                                    <div v-for="item in getSubcategories()" :key="item.id">
                                        <v-checkbox
                                            v-model="subcategories"
                                            :label="item.name"
                                            :value="item.name"
                                            hide-details
                                        ></v-checkbox>
                                    </div>
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
                                        v-model="business.business_department"
                                        :items="department"
                                        :rules="[v => !!v || 'department is required']"
                                        label="Departamento *"
                                        required
                                    ></v-select>
                                </v-col>
                                <v-col>
                                    <v-select
                                        :disabled="business.business_department===null"
                                        v-model="business.business_city"
                                        :items="getCities(business.business_department)"
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
import colombiaJson from '../../../assets/colombia.json'


export default {
    name: "Create",
    components: {
        AppLayout,
        PictureInput,
    },
    created() {
        for (const item in colombiaJson) {
            this.department.push(colombiaJson[item].departamento);
        }
        this.department = this.department.sort();

        axios
            .get("/category/all")
            .then(response => {
                this.categories = response.data;
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
        department: [],
        business: {
            business_name: '',
            business_email: '',
            business_phone: '',
            business_website: '',
            business_department: null,
            business_city: null,
            business_address: '',
            category_id: '',
        },
        categories: [],
        subcategories: [],
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

        getSubcategories() {
            try {
                let subcategories = JSON.parse(this.categories.find(element => element.id == this.business.category_id).category_subcategories);
                console.log('sub => ', subcategories)
                if (subcategories === null) {
                    console.log('es null')
                    return null;
                }
                console.log('no es null')
                return subcategories;
            } catch (e) {
                return null;
            }
            return null;
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
                formData.append("business_department", this.business.business_department);
                formData.append("business_city", this.business.business_city);
                formData.append("business_address", this.business.business_address);
                formData.append("business_subcategory", JSON.stringify(this.subcategories));
                formData.append("category_id", this.business.category_id);
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
                            this.saving = false;
                            if (result.isConfirmed) {

                                this.business.business_name = '';
                                this.business.business_email = '';
                                this.business.business_phone = '';
                                this.business.business_website = '';
                                this.business.business_department = null;
                                this.business.business_city = null;
                                this.business.business_address = '';
                                this.business.category_id = null;

                                this.reset();
                                this.resetValidation();
                                this.$inertia.get('/business', null, {replace: true});
                            }
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
        getCities(department) {
            try {
                return colombiaJson.filter(
                    function (colombiaJson) {
                        return colombiaJson.departamento == department
                    }
                )[0].ciudades;

            } catch (e) {
                return [];
            }
        },

        back() {
            window.history.back();
            //location.reload();
        }

    }
    ,
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
