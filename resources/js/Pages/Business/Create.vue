<template>
    <App-layout>
        <v-container class="mt-6">
            <v-card
                class="mx-auto"
                style="max-width:800px"
            >
                <v-toolbar
                    color="primary"
                    dark
                >

                    <inertia-link :href="route('business.index')">
                        <v-btn text dark fab class="mr-1">
                            <v-icon>
                                mdi-arrow-left
                                {{ route() }}
                            </v-icon>
                        </v-btn>
                    </inertia-link>

                    <v-toolbar-title>Registro de Comercio</v-toolbar-title>

                    <v-spacer></v-spacer>

                </v-toolbar>

                <v-card-title class="title font-weight-regular justify-space-between">
                    <span>{{ currentTitle }}</span>
                    <v-avatar
                        color="secondary"
                        class="subheading white--text"
                        size="35"
                        v-text="step"
                    ></v-avatar>
                </v-card-title>
                <v-card-text>
                    <div
                        class="mx-auto mb-12 pa-6"
                    >
                        <v-form
                            ref="form"
                            v-model="valid"
                        >
                            <v-window class="fill-height" v-model="step">
                                <v-window-item :value="1">
                                    <v-row>
                                        <v-col class="d-flex  justify-center text-center">
                                            <!-- Here the image preview -->
                                            <picture-input
                                                ref="pictureInput"
                                                @change="onChange"
                                                width="250"
                                                height="180"
                                                margin="16"
                                                accept="image/jpeg,image/png"
                                                size="10"
                                                :removable="true"
                                                button-class="v-btn v-btn--contained theme--light v-size--small info"
                                                removeButtonClass="v-btn v-btn--contained theme--light v-size--small error"
                                                :zIndex="1"
                                                radius="5"
                                                :customStrings="customStrings"
                                            >
                                            </picture-input>
                                        </v-col>
                                        <v-col>
                                            <v-select
                                                v-model="business.business_identification_type"
                                                :items="['NIT Empresa','Otro documento']"
                                                :rules="[v => !!v || 'Tipo de Identificación es requerido']"
                                                label="Tipo de Identificación *"
                                                required
                                            ></v-select>

                                            <v-text-field
                                                type="number"
                                                v-model="business.business_identification_number"
                                                :rules="numberRules"
                                                label="Numero de identificación de la empresa *"
                                                required
                                            ></v-text-field>

                                            <v-text-field
                                                v-model="business.business_name"
                                                :rules="nameRules"
                                                counter="50"
                                                label="Nombre o razón social de la empresa *"
                                                required
                                            ></v-text-field>
                                        </v-col>
                                    </v-row>

                                    <v-text-field
                                        v-model="business.business_acronym"
                                        label="Sigla de la empresa"
                                    ></v-text-field>

                                    <v-text-field
                                        v-model="business.business_name_of_legal_representative"
                                        label="Nombre del representante legal"
                                    ></v-text-field>

                                    <v-text-field
                                        v-model="business.business_contact_name"
                                        label="Nombre de contacto"
                                    ></v-text-field>
                                </v-window-item>

                                <v-window-item :value="2">
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
                                                label="País"
                                                required
                                            ></v-select>
                                        </v-col>
                                        <v-col>
                                            <v-select
                                                v-model="business.business_city"
                                                :items=" countriesCities[business.business_country]"
                                                :rules="[v => !!v || 'City is required']"
                                                label="Ciudad"
                                                required
                                            ></v-select>
                                        </v-col>
                                    </v-row>
                                    <v-text-field
                                        v-model="business.business_address"
                                        :rules="[v => !!v || 'Address is required']"
                                        label="Dirección"
                                        required
                                    ></v-text-field>
                                </v-window-item>
                            </v-window>

                        </v-form>
                    </div>
                </v-card-text>
                <v-divider></v-divider>

                <v-card-actions>
                    <v-btn
                        :disabled="step === 1"
                        text
                        @click="step--"
                    >
                        Back
                    </v-btn>
                    <v-spacer></v-spacer>
                    <v-btn
                        :disabled="step === 2"
                        v-if="step !== 2"
                        color="primary"
                        depressed
                        @click="step++"
                    >
                        Next
                    </v-btn>
                    <v-btn
                        v-if="step === 2"
                        :disabled="!valid"
                        color="success"
                        class="mr-4"
                        @click="saved"
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
        step: 1,
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
        /*
                countries: ['Afghanistan', 'Albania', 'Algeria', 'Andorra', 'Angola', 'Antigua and Barbuda', 'Argentina', 'Armenia', 'Aruba', 'Australia', 'Austria', 'Azerbaijan', 'Bahamas', 'Bahrain', 'Bangladesh', 'Barbados', 'Belarus', 'Belgium', 'Belize', 'Bolivia', 'Bosnia and Herzegovina', 'Botswana', 'Brazil', 'Brunei', 'Bulgaria', 'Cambodia', 'Cameroon', 'Canada', 'Cayman Islands', 'Chile', 'China', 'Colombia', 'Congo', 'Costa Rica', 'Croatia', 'Cuba', 'Cyprus', 'Czech Republic', 'Denmark', 'Dominican Republic', 'Ecuador', 'Egypt', 'El Salvador', 'Estonia', 'Faroe Islands', 'Finland', 'France', 'French Polynesia', 'Gabon', 'Georgia', 'Germany', 'Ghana', 'Greece', 'Greenland', 'Guadeloupe', 'Guam', 'Guatemala', 'Guinea', 'Haiti', 'Hashemite Kingdom of Jordan', 'Honduras', 'Hong Kong', 'Hungary', 'Iceland', 'India', 'Indonesia', 'Iran', 'Iraq', 'Ireland', 'Isle of Man', 'Israel', 'Italy', 'Jamaica', 'Japan', 'Kazakhstan', 'Kenya', 'Kosovo', 'Kuwait', 'Latvia', 'Lebanon', 'Libya', 'Liechtenstein', 'Luxembourg', 'Macedonia', 'Madagascar', 'Malaysia', 'Malta', 'Martinique', 'Mauritius', 'Mayotte', 'Mexico', 'Mongolia', 'Montenegro', 'Morocco', 'Mozambique', 'Myanmar [Burma]', 'Namibia', 'Nepal', 'Netherlands', 'New Caledonia', 'New Zealand', 'Nicaragua', 'Nigeria', 'Norway', 'Oman', 'Pakistan', 'Palestine', 'Panama', 'Papua New Guinea', 'Paraguay', 'Peru', 'Philippines', 'Poland', 'Portugal', 'Puerto Rico', 'Republic of Korea', 'Republic of Lithuania', 'Republic of Moldova', 'Romania', 'Russia', 'Saint Lucia', 'San Marino', 'Saudi Arabia', 'Senegal', 'Serbia', 'Singapore', 'Slovakia', 'Slovenia', 'South Africa', 'Spain', 'Sri Lanka', 'Sudan', 'Suriname', 'Swaziland', 'Sweden', 'Switzerland', 'Taiwan', 'Tanzania', 'Thailand', 'Trinidad and Tobago', 'Tunisia', 'Turkey', 'U.S. Virgin Islands', 'Ukraine', 'United Arab Emirates', 'United Kingdom', 'United States', 'Uruguay', 'Venezuela', 'Vietnam', 'Zambia', 'Zimbabwe'],
        */
        countries: null,
        countriesCities: countries_cities,
        select: null,
        items: [
            'Item 1',
            'Item 2',
            'Item 3',
            'Item 4',
        ],
        checkbox: false,
        business: {
            business_image: null,
            business_identification_type: '',
            business_identification_number: '',
            business_name: '',
            business_acronym: '',
            business_name_of_legal_representative: '',
            business_contact_name: '',
            business_email: '',
            business_phone: '',
            business_website: '',
            business_country: null,
            business_city: null,
            business_address: '',
        },
        customStrings: {
            upload: "<p> Su dispositivo no admite la carga de archivos. </p>", // HTML allowed
            drag:
                "Arrastre una imagen o <br> haga clic aquí para seleccionar", // HTML allowed
            tap: "Toque aquí para seleccionar una foto <br> de su galería", // HTML allowed
            change: "Cambiar", // Text only
            remove: "Eliminar", // Text only
            select: "Selecciona una foto", // Text only
            selected: '<p>Photo successfully selected!</p>', // HTML allowed
            fileType: "Este tipo de archivo no es compatible.",
            fileSize: 'The file size exceeds the limit', // Text only
            aspect: 'Landscape/Portrait',// Text only
        }
    }),
    computed: {
        currentTitle() {
            switch (this.step) {
                case 1:
                    return 'Datos básicos'
                case 2:
                    return 'Datos Generales'
            }
        },
    },
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
        onChange(image) {
            console.log("New picture selected!");
            if (image) {
                console.log("Picture loaded.");
                this.business.business_image = this.$refs.pictureInput.file;
                console.log(this.$refs.pictureInput.file);
            } else {
                console.log(
                    "FileReader API not supported: use the <form>, Luke!"
                );
            }
        },
        removeImage() {
            this.$refs.pictureInput.removeImage();
        },
        saved() {
            this.validate();
            if (!this.valid) {
                this.$swal.fire(
                    "Campos Obligatorio!",
                    "Ingresa los campos obligatorios!",
                    "error"
                )
            } else {
                let formData = new FormData();
                formData.append("image", this.business.business_image);
                formData.append("business_identification_type", this.business.business_identification_type);
                formData.append("business_identification_number", this.business.business_identification_number);
                formData.append("business_name", this.business.business_name);
                formData.append("business_acronym", this.business.business_acronym);
                formData.append("business_name_of_legal_representative", this.business.business_name_of_legal_representative);
                formData.append("business_contact_name", this.business.business_contact_name);
                formData.append("business_email", this.business.business_email);
                formData.append("business_phone", this.business.business_phone);
                formData.append("business_website", this.business.business_website);
                formData.append("business_country", this.business.business_country);
                formData.append("business_city", this.business.business_city);
                formData.append("business_address", this.business.business_address);

                console.log(formData);

                axios
                    .post("/business", formData)
                    .then(response => {
                        let noticeAux = response.data;
                        //this.notice = response.data;
                        console.log("este es response", response.data);
                        this.$swal.fire(
                            "Agregado!",
                            "Su comercio ha sido agregado exitosamente!",
                            "success"
                        ).then(result => {
                            this.business.business_image = null;
                            this.business.business_identification_type = '';
                            this.business.business_identification_number = '';
                            this.business.business_name = '';
                            this.business.business_acronym = '';
                            this.business.business_name_of_legal_representative = '';
                            this.business.business_contact_name = '';
                            this.business.business_email = '';
                            this.business.business_phone = '';
                            this.business.business_website = '';
                            this.business.business_country = null;
                            this.business.business_city = null;
                            this.business.business_address = '';

                            this.removeImage();
                            this.reset();
                            this.resetValidation();
                            this.step = 1;
                        });
                        console.log(response.data);
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
