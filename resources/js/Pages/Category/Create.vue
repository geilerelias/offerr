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
                    <inertia-link :href="route('category.index')">
                        <v-btn text dark fab class="mr-1">
                            <v-icon>
                                mdi-arrow-left

                            </v-icon>
                        </v-btn>
                    </inertia-link>

                    <v-toolbar-title>Crear categoria</v-toolbar-title>

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
                            <v-row>
                                <v-col>
                                    <picture-input
                                        ref="pictureInput"
                                        @change="onChange"
                                        style="box-shadow: 0 3px 1px -2px rgb(0 0 0 / 20%), 0 2px 2px 0 rgb(0 0 0 / 14%), 0 1px 5px 0 rgb(0 0 0 / 12%);"
                                        size="10"
                                        button-class="v-btn v-btn--contained theme--light v-size--small info"
                                        removeButtonClass="v-btn v-btn--contained theme--light v-size--small error"
                                        :zIndex="0"
                                        radius="0"
                                        :customStrings="customStrings"
                                        :removable="true"
                                    >

                                    </picture-input>
                                </v-col>
                                <v-col>
                                    <v-select
                                        v-model="category.business_id"
                                        :items="data"
                                        item-text="business_name"
                                        item-value="id"
                                        :rules="[v => !!v || 'comercio is required']"
                                        label="Comercio al que pertenece*"
                                        required
                                    ></v-select>

                                    <v-text-field
                                        v-model="category.category_name"
                                        :rules="nameRules"
                                        counter="50"
                                        label="Nombre de la categoria *"
                                        clearable
                                        required
                                    ></v-text-field>

                                    <v-textarea
                                        v-model="category.category_description"
                                        :rules="[v => !!v || 'Description is required', v => (v && v.length <= 250) || 'Name must be less than 50 characters']"
                                        label="Descripciónde la categoria *"
                                        counter="250"
                                        clearable
                                        required
                                    ></v-textarea>
                                </v-col>
                            </v-row>
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

import AppLayout from './../../Layouts/AppLayout';
import PictureInput from 'vue-picture-input'

export default {
    name: "Create",
    components: {
        AppLayout,
        PictureInput
    },
    props: ['data'],
    data: () => ({
        saving: false,
        valid: false,
        nameRules: [
            v => !!v || 'Name is required',
            v => (v && v.length <= 50) || 'Name must be less than 50 characters',
        ],
        category: {
            category_name: '',
            category_description: '',
            category_path_image: null,
            business_id: null
        },
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
                formData.append("category_image", this.category.category_path_image);
                formData.append("category_name", this.category.category_name);
                formData.append("category_description", this.category.category_description);
                formData.append("business_id", this.category.business_id);

                axios
                    .post("/category", formData)
                    .then(response => {
                        let res = response.data;
                        this.$swal.fire(
                            "Agregado!",
                            "Su categoria ha sido agregada exitosamente!",
                            "success"
                        ).then(result => {

                            this.category.category_path_image = '';
                            this.category.category_name = '';
                            this.category.category_description = '';
                            this.category.business_id = '';

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
                        this.saving = false;
                    });
            }
        },
        onChange(image) {
            if (image) {
                console.log("Cover Picture loaded.");
                this.category.category_path_image = this.$refs.pictureInput.file;
                console.log(this.$refs.pictureInput.file);
            } else {
                console.log(
                    "FileReader API not supported: use the <form>, Luke!"
                );
            }
        },

    }
    ,
}
</script>
