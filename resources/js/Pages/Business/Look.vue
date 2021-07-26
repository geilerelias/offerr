<template>
    <app-layout>
        <v-card
            class="d-flex justify-center transparent mt-n12"
            flat
            tile
        >
            <v-card flat class="text-center transparent"
                    width="100vw">
                <v-img
                    :src=" data.business_path_cover_image==null?'/images/not-found-image.jpg':`/storage/${data.business_path_cover_image}`"
                    max-height="45vh"
                    max-width="100vw"
                    :aspect-ratio="26/9"
                    style="box-shadow: 0 3px 1px -2px rgb(0 0 0 / 20%), 0 2px 2px 0 rgb(0 0 0 / 14%), 0 1px 5px 0 rgb(0 0 0 / 12%);"
                >

                </v-img>
                <div class="d-flex text-left">
                    <v-avatar elevation="2" class=" ma-0 pa-0 ml-6 "
                              style="box-shadow: 0 3px 1px -2px rgb(0 0 0 / 20%), 0 2px 2px 0 rgb(0 0 0 / 14%), 0 1px 5px 0 rgb(0 0 0 / 12%);"
                              :class="$vuetify.breakpoint.mdAndUp?'mt-n12':'mt-n2'"
                              :size="$vuetify.breakpoint.mdAndUp?'200':'100'">
                        <v-img :aspect-ratio="16/9"
                               :src=" data.business_path_profile_image==null?'/images/not-found-image.jpg':`/storage/${data.business_path_profile_image}`">
                        </v-img>
                    </v-avatar>
                    <v-card flat class="d-flex flex-column justify-center transparent">

                        <v-card-title class="mb-1 py-0 text-h6 font-weight-bold">
                            {{ data.business_name }}
                        </v-card-title>

                        <v-card-text class="ma-0 py-0">
                            <div class="subtitle-1">{{ data.business_email }}</div>
                            <div class="subtitle-1" v-if="business!==null">
                                {{ business }}
                                <template v-if="business>1">
                                    seguidores
                                </template>
                                <template v-else>
                                    Seguidor
                                </template>
                            </div>
                            <div class="subtitle-1 my-0 py-0">
                                <v-icon>
                                    mdi-map-marker
                                </v-icon>
                                {{ data.business_city }}
                            </div>
                        </v-card-text>
                    </v-card>

                </div>
                <v-card-actions class="mt-6">
                    <v-row class="d-flex flex-md-row-reverse">
                        <v-col cols="12" md="6" class="d-flex justify-space-around justify-md-end ">
                            <v-btn outlined class="mr-md-2">
                                mensaje
                            </v-btn>
                            <v-btn outlined @click="follower()" color="primary">seguir</v-btn>
                        </v-col>
                        <v-col cols="12" md="6" class="d-flex justify-space-around col-in">
                            <div class="d-flex align-center flex-column">
                                <v-btn x-large icon>
                                    <v-icon x-large>
                                        mdi-file-document-outline
                                    </v-icon>
                                </v-btn>
                                menu
                            </div>

                            <div class="d-flex align-center flex-column">
                                <v-btn x-large icon>
                                    <v-icon x-large>
                                        mdi-account-outline
                                    </v-icon>
                                </v-btn>
                                info
                            </div>

                            <div class="d-flex align-center flex-column">
                                <v-btn x-large icon>
                                    <v-icon x-large>
                                        mdi-star-outline
                                    </v-icon>
                                </v-btn>
                                reseñas
                            </div>
                        </v-col>
                    </v-row>
                </v-card-actions>
            </v-card>
        </v-card>
        <v-container>
            <v-divider></v-divider>
            <section class="mt-12">
                <div class="d-flex justify-space-between align-center">
                    <div class="d-flex flex-column">
                        <h2 class="text-h6 font-weight-bold  mb-0 pb-0 mt-6">
                            Subcategorías
                        </h2>
                        <div class="mb-5 secondary " style="width: 80px; height: 4px;"></div>
                    </div>
                </div>
                <v-row align="center">
                    <v-col cols="6">
                        <v-subheader>
                            Elige una subcategoría
                        </v-subheader>
                    </v-col>

                    <v-col cols="6">
                        <v-select
                            v-model="select"
                            :hint="select.id!==undefined?`${select.subcategory_name}`:''"
                            :items="subcategories"
                            item-text="subcategory_name"
                            item-value="id"
                            label="Select"
                            persistent-hint
                            return-object
                            single-line
                        ></v-select>
                    </v-col>
                </v-row>

                <!--<v-row>
                                    <template v-if="subcategories.length>0">
                                                                <v-col
                                                                    v-for="(item,i) in subcategories.slice(0,4)"
                                                                    :key="item.id" cols="12"
                                                                    sm="6" md="4" lg="3" xl="3">
                                                                    <v-card link class="elevation-cs my-5 ml-0">
                                                                        <div tabindex="-1" class="v-list-item v-list-item&#45;&#45;three-line theme&#45;&#45;light">
                                                                            <v-list-item-avatar size="80" class="grey lighten-4">
                                                                                <v-icon v-if="item.subcategory_path_image===null" size="40">
                                                                                    mdi-package-variant
                                                                                </v-icon>
                                                                                <v-img v-else :src="'/storage/'+item.subcategory_path_image"></v-img>
                                                                            </v-list-item-avatar>
                                                                            <v-list-item-content>
                                                                                <div class="overline">{{ getDate(item.created_at) }}</div>
                                                                                <v-list-item-title class="title mb-1 success&#45;&#45;text">
                                                                                    {{ item.subcategory_name }}
                                                                                </v-list-item-title>
                                                                                <v-list-item-subtitle>
                                                                                    {{ item.subcategory_description }}
                                                                                </v-list-item-subtitle>
                                                                            </v-list-item-content>
                                                                        </div>
                                                                        <v-card-actions>
                                                                            <v-spacer></v-spacer>
                                                                            <inertia-link :href="route('subcategory.show',item.id)">
                                                                                <v-btn text>Ver mas
                                                                                    <v-icon right>
                                                                                        mdi-chevron-right
                                                                                    </v-icon>
                                                                                </v-btn>
                                                                            </inertia-link>
                                                                        </v-card-actions>
                                                                    </v-card>
                                                                </v-col>
                                    </template>

                                    <v-col v-else-if="loadingSubcategories" sm="6" md="4" lg="3" v-for="i in 3" :key="i">
                                        <v-skeleton-loader
                                            type="list-item-avatar, list-item-three-line,actions"
                                        ></v-skeleton-loader>
                                    </v-col>
                                    <v-col v-else sm="6" md="4" lg="3">
                                        <p>
                                            Aun no tienes registros
                                        </p>
                                    </v-col>
                                </v-row>-->
            </section>

            <section class="my-6">
                <div class="d-flex justify-space-between align-center">
                    <div class="d-flex flex-column">
                        <h2 class="text-h6 font-weight-bold  mb-0 pb-0 mt-6">
                            Productos
                        </h2>
                        <div class="mb-5 secondary " style="width: 80px; height: 4px;"></div>
                    </div>
                </div>
                <v-row class="align-center justify-center">
                    <template v-if="products.length>0">
                        <v-col v-for="item in filterProducts" :key="item.id" cols="12">
                            <v-card :href="route('product.watch',item.id)"
                                    class="elevation-cs ml-0 d-flex align-center pa-6 justify-center justify-md-space-between rounded-lg">
                                <div
                                    class="align-center align-md-center d-flex flex-column flex-md-row justify-center mx-0 mx-md-12">
                                    <v-avatar tile size="90" class="grey lighten-4">
                                        <v-icon
                                            v-if="item.product_path_image===null ||getFirstImage(item.product_path_image)===undefined"
                                            size="40">
                                            mdi-decagram
                                        </v-icon>
                                        <v-img v-else :src="'/storage/'+getFirstImage(item.product_path_image)">
                                        </v-img>
                                    </v-avatar>

                                    <div class="mx-0 mx-md-12 text-center text-md-left w-100">
                                        <p class="font-weight-bold black--text" v-text="item.product_name"></p>
                                        <p v-text="item.product_description"></p>
                                        <h2 class="font-weight-bold primary--text">
                                            Precio ${{ item.product_price }}
                                        </h2>
                                        <p>
                                            <span class="grey--text">Cantidad disponible</span>
                                            {{ item.product_stock }} unidades
                                        </p>
                                    </div>
                                </div>
                            </v-card>
                        </v-col>
                    </template>
                    <v-col v-else-if="loadingProducts" cols="12" v-for="i in 3" :key="i">
                        <v-skeleton-loader
                            type="list-item-avatar, list-item-three-line"
                        ></v-skeleton-loader>
                    </v-col>
                    <v-col v-else cols="12">
                        <p>
                            Aun no tienes registros
                        </p>
                    </v-col>
                </v-row>
            </section>
        </v-container>
    </app-layout>
</template>

<script>
import AppLayout from "../../Layouts/AppLayout";

export default {
    name: "Look",
    components: {
        AppLayout,
    },
    props: ['data'],
    data: () => ({
        loadingSubcategories: true,
        subcategories: [],
        loadingProducts: true,
        products: [],
        business: null,
        select: {subcategory_name: 'all', id: null},
    }),

    created() {
        axios
            .get(`/business/${this.data.id}/subcategory`)
            .then(response => {
                this.subcategories = response.data.concat({subcategory_name: 'all', id: null});
                this.loadingSubcategories = false;
                this.getProducts();
            });
        this.followers();
    },
    computed: {
        filterProducts: function () {
            if (this.select.id === null) return this.products;
            const id = this.select.id;
            return this.products.filter(item => {
                return id === item.subcategory_id
            })
        }
    },
    methods: {

        back() {
            window.history.back();
            //return document.referrer;
        },
        getDate(str) {
            let ms = Date.parse(str);
            let fecha = new Date(ms);
            return `${fecha.getDay()}/${fecha.getMonth()}/${fecha.getFullYear()}`;
        },
        getFirstImage(images) {
            try {
                return JSON.parse(images)[0];
            } catch (e) {
                return null;
            }
        },
        getProducts() {
            for (let i = 0; i < this.subcategories.length; i++) {
                if (this.subcategories[i].id !== null) {
                    let id = this.subcategories[i].id;

                    axios
                        .get(`/subcategory/${id}/product`)
                        .then(response => {
                            let array = response.data;
                            this.products = this.products.concat(response.data);
                            this.loadingProducts = false;
                        });
                }
            }
        },
        follower() {
            this.$inertia
                .post('/follower/add', {business_id: this.data.id}, {
                    onSuccess: (page) => {
                        this.$swal.fire({
                            position: 'top-end',
                            icon: this.$page.flash.message.icon,
                            title: this.$page.flash.message.text,
                            showConfirmButton: false,
                            timer: 2000
                        })
                    },
                })
        },
        followers() {
            axios
                .post(`/follower/${this.data.id}/business`)
                .then(response => {
                    this.business = response.data;
                });
        }
    }
}
</script>

<style scoped>

</style>
