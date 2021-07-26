<template>
    <App-layout>
        <v-container fluid class="my-8">
            <v-card
                class="mx-auto "
                style="max-width:800px"
            >
                <v-toolbar
                    color="primary"
                    dark
                >

                    <v-toolbar-title>Edición de Comercio</v-toolbar-title>

                    <v-spacer></v-spacer>

                </v-toolbar>
                <v-container fluid class="ma-0 pa-0">
                    <v-card
                        class="d-flex justify-center transparent"
                        flat
                        tile
                    >
                        <v-card flat class="text-center transparent"
                                width="800">
                            <picture-input
                                ref="pictureInputCover"
                                @change="onChangeCover"
                                height="500"
                                width="800"
                                style="box-shadow: 0 3px 1px -2px rgb(0 0 0 / 20%), 0 2px 2px 0 rgb(0 0 0 / 14%), 0 1px 5px 0 rgb(0 0 0 / 12%);"
                                size="10"
                                button-class="v-btn v-btn--contained theme--light v-size--small info"
                                removeButtonClass="v-btn v-btn--contained theme--light v-size--small error"
                                :zIndex="0"
                                radius="0"
                                :prefill="data.business_path_cover_image!==null?`/storage/${data.business_path_cover_image}`:''"
                                :customStrings="customStrings"
                                :removable="false"
                                hideChangeButton
                            >

                            </picture-input>
                            <div class="d-flex text-left">
                                <v-card flat class="rounded-circle ma-0 pa-0 ml-2 transparent"
                                        :class="$vuetify.breakpoint.mdAndUp?'mt-n12':'mt-n2'"
                                        :height="$vuetify.breakpoint.mdAndUp?'200':'100'"
                                        :width="$vuetify.breakpoint.mdAndUp?'200':'100'">
                                    <picture-input
                                        style="box-shadow: 0 3px 1px -2px rgb(0 0 0 / 20%), 0 2px 2px 0 rgb(0 0 0 / 14%), 0 1px 5px 0 rgb(0 0 0 / 12%);"
                                        ref="pictureInputProfile"
                                        @change="onChangeProfile"
                                        size="10"
                                        button-class="v-btn v-btn--contained theme--light v-size--small info"
                                        removeButtonClass="v-btn v-btn--contained theme--light v-size--small error"
                                        :zIndex="1"
                                        radius="50"
                                        :prefill="business.business_path_profile_image!==null?`/storage/${business.business_path_profile_image}`:''"
                                        :customStrings="customStrings"
                                        :removable="false"
                                        hideChangeButton
                                    >
                                    </picture-input>
                                </v-card>
                                <v-card flat class="d-flex flex-column justify-center transparent">
                                    <v-card-title class="mb-1 py-0 h6">
                                        {{ business.business_name }}
                                    </v-card-title>

                                    <v-card-text class="ma-0 py-0">
                                        <div class="subtitle-1">{{ business.business_email }}</div>
                                        <div class="subtitle-1 my-0 py-0">
                                            <v-icon>
                                                mdi-map-marker
                                            </v-icon>
                                            {{ business.business_city }}
                                        </div>
                                    </v-card-text>
                                </v-card>
                            </div>
                        </v-card>
                    </v-card>

                    <v-card flat class="d-flex justify-center pa-0 ma-0" color="transparent">
                        <v-card flat class="pa-0 ma-0" color="transparent" width="800">
                            <v-card-text class="px-0 mx-0">
                                <v-expansion-panels flat>
                                    <v-expansion-panel class=" transparent">
                                        <v-expansion-panel-header v-slot="{ open }">
                                            <v-row no-gutters>
                                                <v-col cols="12" sm="4">
                                                    Información General
                                                </v-col>
                                                <v-col
                                                    cols="12"
                                                    sm="8"
                                                    class="text--secondary"
                                                >
                                                    <v-fade-transition leave-absolute>
                                                <span
                                                    v-if="open">¿Como identificamos el comercio?</span>
                                                        <v-row
                                                            v-else
                                                            no-gutters
                                                            style="width: 100%"
                                                        >
                                                            <v-col cols="12" sm="6">
                                                                Nombre o razón social:
                                                                {{
                                                                business.business_name || 'No definido'
                                                                }}
                                                            </v-col>
                                                            <v-col cols="12" sm="6">
                                                                Sigla:
                                                                {{
                                                                business.business_acronym !== 'undefined' ?
                                                                business.business_acronym
                                                                : 'No definido'
                                                                }}
                                                            </v-col>
                                                        </v-row>
                                                    </v-fade-transition>
                                                </v-col>
                                            </v-row>
                                        </v-expansion-panel-header>

                                        <v-expansion-panel-content>
                                            <v-row
                                                justify="space-around"
                                                no-gutters
                                            >
                                                <v-col cols="12" md="8">
                                                    <v-text-field
                                                        v-model="business.business_name"
                                                        :rules="nameRules"
                                                        counter="50"
                                                        label="Nombre o razón social de la empresa *"
                                                        required
                                                    ></v-text-field>
                                                </v-col>

                                                <v-col cols="12" md="4">
                                                    <v-text-field
                                                        :class="$vuetify.breakpoint.smAndUp?'ml-2':''"
                                                        v-model="business.business_acronym"
                                                        placeholder="Sigla del comercio"
                                                        label="Sigla del comercio"
                                                    ></v-text-field>
                                                </v-col>
                                            </v-row>
                                        </v-expansion-panel-content>
                                    </v-expansion-panel>

                                    <v-expansion-panel class="transparent">
                                        <v-expansion-panel-header v-slot="{ open }">
                                            <v-row no-gutters>
                                                <v-col cols="12" sm="4">
                                                    Información de contacto
                                                </v-col>
                                                <v-col
                                                    cols="12"
                                                    sm="8"
                                                    class="text--secondary"
                                                >
                                                    <v-fade-transition leave-absolute>
                                                        <span v-if="open">¿Como contactar su comercio?</span>
                                                        <v-row
                                                            v-else
                                                            no-gutters
                                                            style="width: 100%"
                                                        >
                                                            <v-col cols="12" sm="4">
                                                                Email: {{ business.business_email || 'No definido' }}
                                                            </v-col>
                                                            <v-col cols="12" sm="4">
                                                                Telefono: {{ business.business_phone || 'No definido' }}
                                                            </v-col>
                                                            <v-col cols="12" sm="4">
                                                                Website: {{
                                                                business.business_website || 'No definido'
                                                                }}
                                                            </v-col>
                                                        </v-row>
                                                    </v-fade-transition>
                                                </v-col>
                                            </v-row>
                                        </v-expansion-panel-header>

                                        <v-expansion-panel-content>
                                            <v-row
                                                justify="space-around"
                                                no-gutters
                                            >
                                                <v-col cols="12" md="4">
                                                    <v-text-field
                                                        v-model="business.business_email"
                                                        :rules="emailRules"
                                                        label="E-mail *"
                                                        required
                                                    ></v-text-field>
                                                </v-col>

                                                <v-col cols="12" md="4">
                                                    <v-text-field
                                                        :class="$vuetify.breakpoint.smAndUp?'mx-2':''"
                                                        type="number"
                                                        v-model="business.business_phone"
                                                        :rules="[v => !!v || 'Phone is required']"
                                                        label="Telefono de contacto"
                                                        required
                                                    ></v-text-field>
                                                </v-col>
                                                <v-col cols="12" md="4">
                                                    <v-text-field
                                                        type="url"
                                                        v-model="business.business_website"
                                                        placeholder="Website"
                                                        label="Website"
                                                    ></v-text-field>
                                                </v-col>
                                            </v-row>
                                        </v-expansion-panel-content>
                                    </v-expansion-panel>

                                    <v-expansion-panel class="transparent">
                                        <v-expansion-panel-header v-slot="{ open }">
                                            <v-row no-gutters>
                                                <v-col cols="12" sm="4">
                                                    Información de localización
                                                </v-col>
                                                <v-col
                                                    cols="12"
                                                    sm="8"
                                                    class="text--secondary"
                                                >
                                                    <v-fade-transition leave-absolute>
                                                        <span v-if="open">¿Como localizar su comercio?</span>
                                                        <v-row
                                                            v-else
                                                            no-gutters
                                                            style="width: 100%"
                                                        >
                                                            <v-col cols="12" sm="4">
                                                                Departamento: {{ business.business_department || 'No definido' }}
                                                            </v-col>
                                                            <v-col cols="12" sm="4">
                                                                Ciudad: {{ business.business_city || 'No definido' }}
                                                            </v-col>
                                                            <v-col cols="12" sm="4">
                                                                Dirección: {{
                                                                business.business_address || 'No definido'
                                                                }}
                                                            </v-col>
                                                        </v-row>
                                                    </v-fade-transition>
                                                </v-col>
                                            </v-row>
                                        </v-expansion-panel-header>

                                        <v-expansion-panel-content>
                                            <v-row
                                                justify="space-around"
                                                no-gutters
                                            >
                                                <v-col cols="12" md="4">
                                                    <v-select
                                                        v-model="business.business_department"
                                                        :items="department"
                                                        :rules="[v => !!v || 'Department is required']"
                                                        label="Departamento *"
                                                        required
                                                    ></v-select>
                                                </v-col>

                                                <v-col cols="12" md="4">
                                                    <v-select
                                                        :class="$vuetify.breakpoint.smAndUp?'mx-2':''"
                                                        v-model="business.business_city"
                                                        :items="getCities(business.business_department)"
                                                        :rules="[v => !!v || 'City is required']"
                                                        label="Ciudad *"
                                                        required
                                                    ></v-select>
                                                </v-col>

                                                <v-col cols="12" md="4">
                                                    <v-text-field
                                                        v-model="business.business_address"
                                                        :rules="[v => !!v || 'Address is required']"
                                                        label="Dirección *"
                                                        required
                                                    ></v-text-field>
                                                </v-col>
                                            </v-row>
                                        </v-expansion-panel-content>
                                    </v-expansion-panel>

                                    <v-expansion-panel class="transparent">
                                        <v-expansion-panel-header v-slot="{ open }">
                                            <v-row no-gutters>
                                                <v-col cols="12" sm="4">
                                                    Información clasificatoria
                                                </v-col>
                                                <v-col
                                                    cols="12"
                                                    sm="8"
                                                    class="text--secondary"
                                                >
                                                    <v-fade-transition leave-absolute>
                                                        <span v-if="open">¿A que categoría pertenece el comercio?</span>
                                                        <v-row
                                                            v-else
                                                            no-gutters
                                                            style="width: 100%"
                                                        >
                                                            <v-col>
                                                                Categoría: {{
                                                                categories
                                                                .find(element => element.id === business.category_id)
                                                                .category_name || 'No definido'
                                                                }}
                                                            </v-col>
                                                        </v-row>
                                                    </v-fade-transition>
                                                </v-col>
                                            </v-row>
                                        </v-expansion-panel-header>

                                        <v-expansion-panel-content>
                                            <v-row>
                                                <v-col>
                                                    <v-select
                                                        v-model="business.category_id"
                                                        :items="categories"
                                                        :rules="[v => !!v || 'Country is required']"
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
                                                    {{ subcategories }}
                                                </v-col>
                                            </v-row>
                                        </v-expansion-panel-content>
                                    </v-expansion-panel>
                                </v-expansion-panels>
                            </v-card-text>
                            <v-card-actions>
                                <v-spacer></v-spacer>
                                <v-btn
                                    color="success"
                                    class="mr-4"
                                    @click="saved"
                                    :loading="saving"
                                >
                                    Actualizar información
                                </v-btn>
                            </v-card-actions>
                        </v-card>
                    </v-card>
                </v-container>
            </v-card>
        </v-container>
    </App-layout>
</template>


<script>
import AppLayout from './../../Layouts/AppLayout'
import PictureInput from 'vue-picture-input'
import colombiaJson from "../../../assets/colombia.json";

export default {
    name: "Edit",
    components: {
        AppLayout,
        PictureInput
    },
    props: {
        data: {
            type: Object,
            default: {
                business_path_cover_image: null,
                business_path_profile_image: null,
                business_name: '',
                business_acronym: '',
                business_email: '',
                business_phone: '',
                business_website: '',
                business_department: null,
                business_city: null,
                business_address: '',
                category_id: null
            }
        },
    },

    data: () => ({
        valid: null,
        saving: false,
        date: null,
        trip: {
            name: '',
            location: null,
            start: null,
            end: null,
        },
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
        business: null,
        categories: [],
        subcategories: [],
        /* {
            business_path_cover_image: null,
            business_path_profile_image: null,
            business_name: '',
            business_acronym: '',
            business_email: '',
            business_phone: '',
            business_website: '',
            business_country: null,
            business_city: null,
            business_address: '',
        },*/
        customStrings: {
            upload: "<p> Su dispositivo no admite la carga de archivos. </p>", // HTML allowed
            drag: "Arrastre una imagen o <br> haga clic aquí para seleccionar", // HTML allowed
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
    created() {

        this.business = this.data;
        console.log(this.business)
        for (const item in colombiaJson) {
            this.department.push(colombiaJson[item].departamento);
        }

        axios
            .get("/category/all")
            .then(response => {
                this.categories = response.data;
                this.subcategories = this.business.business_subcategory !== undefined ? JSON.parse(this.business.business_subcategory) : [];
                console.log("subcategories => ", this.business.business_subcategory)
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
    methods: {
        onChangeProfile(image) {
            if (image) {
                console.log("Profile Picture loaded.");
                this.business.business_path_profile_image = this.$refs.pictureInputProfile.file;
                console.log(this.$refs.pictureInputProfile.file);
            } else {
                console.log(
                    "FileReader API not supported: use the <form>, Luke!"
                );
            }
        },
        onChangeCover(image) {
            if (image) {
                console.log("Cover Picture loaded.");
                this.business.business_path_cover_image = this.$refs.pictureInputCover.file;
                console.log(this.$refs.pictureInputCover.file);
            } else {
                console.log(
                    "FileReader API not supported: use the <form>, Luke!"
                );
            }
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
            let formData = new FormData();
            formData.append("cover_image", this.business.business_path_cover_image);
            formData.append("profile_image", this.business.business_path_profile_image);
            formData.append("business_name", this.business.business_name);
            formData.append("business_acronym", this.business.business_acronym);
            formData.append("business_email", this.business.business_email);
            formData.append("business_phone", this.business.business_phone);
            formData.append("business_website", this.business.business_website);
            formData.append("business_country", this.business.business_country);
            formData.append("business_city", this.business.business_city);
            formData.append("business_address", this.business.business_address);
            formData.append("business_subcategory", JSON.stringify(this.subcategories));
            formData.append("category_id", this.business.category_id);
            formData.append('_method', 'PATCH');
            console.log('formData: ', formData)

            this.saving = true;
            axios
                .post(`/business/${this.business.id}`, formData)
                .then(response => {
                    let noticeAux = response.data;
                    this.$swal.fire({
                        position: 'top-end',
                        icon: 'success',
                        title: 'Tu información ha sido modificada',
                        showConfirmButton: false,
                        timer: 1500
                    }).then(result => {

                        /* this.business.business_name = '';
                         this.business.business_acronym = '';
                         this.business.business_name_of_legal_representative = '';
                         this.business.business_contact_name = '';
                         this.business.business_email = '';
                         this.business.business_phone = '';
                         this.business.business_website = '';
                         this.business.business_country = null;
                         this.business.business_city = null;
                         this.business.business_address = '';

                         this.reset();
                         this.resetValidation();*/
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
            //return document.referrer;
        }
    }
}
</script>

<style scoped>

</style>
