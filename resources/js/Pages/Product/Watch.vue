<template>
    <App-layout>
        <v-container class="py-12 my-12">
            <v-row>
                <v-col class="col-md-12 col-lg-7 col-xl-6 col-12">
                    <div class="d-flex flex-column-reverse flex-lg-column-reverse flex-md-row flex-xl-row">
                        <div class="d-flex flex-lg-row flex-md-column flex-xl-column justify-center">
                            <div class="ma-3" v-for="item in JSON.parse(data.product_path_image)" :key="item.id">
                                <v-hover
                                    v-slot="{ hover }"
                                    open-delay="200"
                                >
                                    <v-card flat :elevation="hover ? 6 : 0"
                                            class="pa-0 ma-0 rounded-0"
                                            :class="{ 'on-hover': hover }"
                                            @click="updateUrl(item)">
                                        <v-img :src="`/storage/${item}`"
                                               height="35"
                                               width="50"
                                               cover
                                               :aspect-ratio="1"
                                               rounded class="ma-0 pa-0 cursor-pointer">
                                            <template v-slot:placeholder>
                                                <v-responsive
                                                    class="fill-height ma-0"
                                                    align="center"
                                                    justify="center"
                                                >
                                                    <v-skeleton-loader
                                                        :aspect-ratio="1"
                                                        type="image"
                                                    ></v-skeleton-loader>
                                                </v-responsive>
                                            </template>
                                        </v-img>
                                    </v-card>
                                </v-hover>
                            </div>
                        </div>

                        <v-img :src="url" cover
                               elevation="12"
                               class="rounded mx-4"
                               :aspect-ratio="1"
                               style="max-height: 390px; max-width: 580px;">
                            <template v-slot:placeholder>
                                <v-responsive
                                    class="fill-height ma-0"
                                    align="center"
                                    justify="center"
                                >
                                    <v-skeleton-loader
                                        :aspect-ratio="1"
                                        type="image"
                                    ></v-skeleton-loader>
                                </v-responsive>
                            </template>
                        </v-img>

                    </div>
                </v-col>
                <v-col class="col-md-12 col-lg-5 col-xl-6 col-12">
                    <h2>{{ data.product_name }}</h2>
                    <v-rating
                        :value="4"
                        background-color="orange lighten-3"
                        color="orange"
                        small
                    ></v-rating>

                    <h2 class="font-weight-bold">$ {{ data.product_price }}</h2>
                    <p class="font-weight-light mt-3 mb-8">
                        {{ data.product_description }}
                    </p>

                    <v-text-field
                        min="0"
                        v-model="quantity"
                        dense
                        type="number"
                        label="Cantidad"
                        outlined
                        persistent-placeholder
                        style="max-width: 150px;"
                    >
                        <v-icon @click="quantity++"
                                slot="append-outer"
                                color="primary"
                        >
                            mdi-plus
                        </v-icon>
                        <v-icon
                            @click="quantity>=1?quantity--:quantity=quantity"
                            slot="prepend"
                            color="primary"
                        >
                            mdi-minus
                        </v-icon>
                    </v-text-field>

                    <v-row>
                        <v-col>
                            <p v-if="total>0">
                                total: $ {{ total }}
                            </p>
                        </v-col>
                    </v-row>
                    <v-row class="row align-center">
                        <v-col class="col-sm-8 col-md-8 col-lg-6 col-xl-6 col-12">
                            <v-btn @click="addToCart()" contained type="button" class="primary">
                                Agregar al Carrito
                                <v-icon right size="16"> mdi-cart</v-icon>
                            </v-btn>
                        </v-col>
                        <v-col class="col-sm-8 col-md-8 col-lg-6 col-xl-6 col-12">
                            <v-btn text outlined type="button" class="grey&#45;&#45;text text&#45;&#45;lighten-1">
                                <span class="grey--text">Comprar ahora</span>
                                <v-icon right size="16">mdi-cart-add</v-icon>
                            </v-btn>
                        </v-col>
                    </v-row>
                    <v-divider class="mt-4 py-1"></v-divider>
                    <!--<div class="d-flex flex-column flex-sm-row justify-sm-space-between">
                            <div class="d-flex align-center justify-start">
                                Share:
                                <div class="d-flex social-icons">
                                    <v-btn icon>
                                        <v-icon size="20"> mdi-facebook</v-icon>
                                    </v-btn>
                                    <v-btn icon>
                                        <v-icon size="20">mdi-twitter</v-icon>
                                    </v-btn>
                                    <v-btn icon>
                                        <v-icon size="20">mdi-instagram</v-icon>
                                    </v-btn>
                                    <v-btn icon>
                                        <v-icon size="20">mdi-whatsapp</v-icon>
                                    </v-btn>
                                </div>
                            </div>
                        </div>-->
                </v-col>
            </v-row>
        </v-container>

    </App-layout>
</template>

<script>
import AppLayout from './../../Layouts/AppLayout';

export default {
    name: "Watch",
    components: {
        AppLayout,
    },
    props: ['data'],
    data: () => ({
        url: '',
        quantity: 0,
        saving: false
    }),
    created() {
        try {
            console.log(this.data.product_path_image)
            if (this.data.product_path_image === null) {
                this.url = "/images/not-found-image.jpg"
            } else {
                this.url = `/storage/${JSON.parse(this.data.product_path_image)[0]}`;
            }

        } catch (e) {

        }
    },
    computed: {
        total() {
            try {
                return this.data.product_price * this.quantity;
            } catch (e) {
                console.log(e)
            }

        }
    },
    methods: {
        updateUrl(item) {
            this.url = `/storage/${item}`
        },
        addToCart() {
            let cart = {
                product_id: this.data.id,
                product_quantity: this.quantity
            }
            if (this.quantity > 0) {
                this.saving = true;
                axios
                    .post('/cart', cart)
                    .then(response => {
                        this.$swal.fire(
                            "Agregado!",
                            "Su Producto fue agregado exitosamente al carrito!",
                            "success"
                        ).then(result => {
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
            } else {
                this.$swal.fire(
                    "Cantidad Insuficiente!",
                    "La cantidad debe ser superior a 0!",
                    "error"
                )

            }

        }
    }
}
</script>

<style scoped>

</style>
