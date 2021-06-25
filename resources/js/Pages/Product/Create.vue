<template>
    <App-layout>
        <v-container class="my-12">
            <div class="max-w-7xl mx-auto sm:px-6 lg:px-8">
                <v-card>
                    <v-toolbar
                        color="primary"
                        dark
                    >

                        <v-toolbar-title>Nuevo Producto</v-toolbar-title>

                        <v-spacer></v-spacer>

                    </v-toolbar>

                    <v-card-text>
                        <v-form
                            ref="form"
                            v-model="valid"
                        >
                            <v-row>
                                <v-col cols="12" md="6">
                                    <v-row>

                                        <v-col cols="12">
                                            <v-text-field
                                                v-model="product.product_name"
                                                :rules="rules.name"
                                                label="Nombre"
                                                required
                                            ></v-text-field>
                                        </v-col>

                                        <v-col cols="12">
                                            <v-textarea
                                                v-model="product.product_description"
                                                :rules="rules.select"
                                                rows="2"
                                                label="Descripción"
                                                required
                                            ></v-textarea>
                                        </v-col>

                                        <v-col cols="12">
                                            <v-text-field
                                                type="number"
                                                v-model="product.product_price"
                                                :rules="rules.numeric"
                                                label="Precio"
                                                required
                                            ></v-text-field>
                                        </v-col>

                                        <v-col cols="12">
                                            <v-select
                                                v-model="product.subcategory_id"
                                                :items="subcategories"
                                                :rules="rules.select"
                                                item-text="subcategory_name"
                                                item-value="id"
                                                label="Subcategoría"
                                                required
                                            >
                                                <inertia-link :href="route('subcategory.create')"
                                                              slot="append-outer">
                                                    <v-icon
                                                        color="primary"
                                                    >
                                                        mdi-plus
                                                    </v-icon>
                                                </inertia-link>
                                            </v-select>
                                        </v-col>

                                        <v-col cols="12">
                                            <v-slider
                                                v-model="product.product_stock"
                                                label="Cantidad"
                                                thumb-color="secondary"
                                                min="1"
                                                max="100"
                                                thumb-label
                                            ></v-slider>
                                        </v-col>
                                    </v-row>
                                </v-col>
                                <v-col cols="12" md="6">
                                    <v-card v-if="url.length>0" flat
                                            class="mx-auto mb-3"
                                            max-width="500"
                                    >
                                        <v-expand-transition>
                                            <v-sheet
                                                class="mx-auto transparent"
                                                v-if="model != null"
                                                height="200"
                                                tile
                                            >
                                                <v-row
                                                    class="fill-height mt-2"
                                                    align="center"
                                                    justify="center"
                                                >
                                                    <v-hover v-slot="{ hover }">
                                                        <v-card
                                                            flat
                                                            class="mx-auto "
                                                            color="transparent"
                                                            max-width="400"
                                                            min-height="300"
                                                            min-width="300"
                                                        >
                                                            <v-img :aspect-ratio="16/9"
                                                                   :src="url[model]">
                                                                <v-expand-transition>
                                                                    <div
                                                                        v-if="hover"
                                                                        class="d-flex transition-fast-in-fast-out secondary darken-2 v-card--reveal text-h2 white--text"
                                                                        style="height: 100%;"
                                                                    >
                                                                        <v-btn icon @click="removeItemImagen">
                                                                            <v-icon color="red">
                                                                                mdi-delete
                                                                            </v-icon>

                                                                        </v-btn>
                                                                    </div>
                                                                </v-expand-transition>
                                                            </v-img>
                                                        </v-card>
                                                    </v-hover>
                                                </v-row>
                                            </v-sheet>
                                        </v-expand-transition>
                                        <v-slide-group
                                            v-model="model"
                                            class="pa-4"
                                            show-arrows
                                        >
                                            <v-slide-item
                                                v-if="url" v-for="item in url" :key="item.id"
                                                v-slot="{ active, toggle }"
                                            >
                                                <v-card
                                                    :color="active ? 'primary' : 'grey lighten-1'"
                                                    class="ma-4"
                                                    :height="$vuetify.breakpoint.smAndDown?'50':'100'"
                                                    :width="$vuetify.breakpoint.smAndDown?'50':'100'"
                                                    @click="toggle"
                                                >
                                                    <v-img :aspect-ratio="1"
                                                           cover
                                                           :height="$vuetify.breakpoint.smAndDown?'50':'100'"
                                                           :width="$vuetify.breakpoint.smAndDown?'50':'100'"
                                                           :src="item">
                                                        <v-row
                                                            class="fill-height"
                                                            align="center"
                                                            justify="center"
                                                        >
                                                            <v-scale-transition>
                                                                <v-icon
                                                                    v-if="active"
                                                                    color="white"
                                                                    v-text="'mdi-check'"
                                                                ></v-icon>
                                                            </v-scale-transition>
                                                        </v-row>
                                                    </v-img>
                                                </v-card>
                                            </v-slide-item>
                                        </v-slide-group>
                                    </v-card>
                                    <v-card @click="$refs.file.$refs.input.click()"
                                            max-width="400"
                                            class="mx-auto d-flex justify-center align-center">
                                        <div class="mt-n2">
                                            <v-file-input
                                                progress
                                                multiple
                                                v-model="files"
                                                ref="file"
                                                hide-input
                                                accept="image/*"
                                                prepend-icon="mdi-camera"
                                                @change="onFileChange"
                                            />
                                        </div>
                                    </v-card>
                                </v-col>
                            </v-row>
                        </v-form>
                    </v-card-text>
                    <v-divider></v-divider>
                    <v-card-actions>
                        <v-btn
                            text
                            @click="resetForm"
                        >
                            Cancel
                        </v-btn>
                        <v-spacer></v-spacer>
                        <v-btn
                            :disabled="!valid"
                            color="primary"
                            @click="saved"
                        >
                            Register
                        </v-btn>
                    </v-card-actions>
                </v-card>
            </div>
        </v-container>
    </App-layout>
</template>

<script>

import AppLayout from './../../Layouts/AppLayout';


export default {
    name: "Create",
    components: {
        AppLayout,
    },
    props: ['data'],
    data: () => ({
        valid: false,
        model: null,
        url: [],
        files: [],
        subcategories: [],
        product: {
            product_name: '',
            product_description: '',
            product_price: '',
            product_stock: '',
            subcategory_id: '',
            images: []
        },
        rules: {
            age: [
                val => val < 10 || `I don't believe you!`,
            ],
            select: [val => !!val || 'This field is required'],
            name: [val => (val || '').length > 0 || 'This field is required'],
            description: [val => (val || '').length > 0 || 'This field is required'],
            numeric: [val => !!val || 'This field is required']
        },


    }),
    created() {
        axios
            .get("/subcategory/user/all")
            .then(response => {
                this.subcategories = response.data;
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

        onFileChange(e) {
            const files = this.files;
            for (let i = 0; i < files.length; i++) {
                this.url.push(URL.createObjectURL(files[i]));
                this.product.images.push(files[i]);
            }
            console.log(this.product.images);
            this.model = 0;
        },
        removeItemImagen() {
            this.url.splice(this.model, 1)
            this.product.images.splice(this.model, 1)
        },
        resetForm() {
            this.files = null;
            this.url = [];
            this.$refs.form.reset();
            this.$refs.form.resetValidation();
        },
        resetValidation() {

        },
        validate() {
            this.$refs.form.validate()
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
                const filesForUpload = this.product.images;
                filesForUpload.map(file => {
                    formData.append('images[]', file);
                });
                formData.append("product_name", this.product.product_name);
                formData.append("product_stock", this.product.product_stock);
                formData.append("product_description", this.product.product_description);
                formData.append("product_price", this.product.product_price);
                formData.append("subcategory_id", this.product.subcategory_id);

                console.log(formData)

                axios
                    .post("/product", formData)
                    .then(response => {
                        let res = response.data;
                        this.$swal.fire(
                            "Agregado!",
                            "Su producto ha sido agregado exitosamente!",
                            "success"
                        ).then(result => {
                            this.saving = false;
                            if (result.isConfirmed) {
                                this.product.images = [];
                                this.product.product_name = '';
                                this.product.product_stock = '';
                                this.product.product_description = '';
                                this.product.product_price = '';
                                this.product.business_id = '';
                                this.product.subcategory_id = '';
                                this.resetForm();
                                this.$inertia.get('/product', null, {replace: true});
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
                        this.saving = false;
                    });
            }
        },
        back() {
            window.history.back();
            //return document.referrer;
        }

    }
}
</script>

<style>
.v-card--reveal {
    align-items: center;
    bottom: 0;
    justify-content: center;
    opacity: .5;
    position: absolute;
    width: 100%;
}
</style>

