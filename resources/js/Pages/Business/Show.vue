<template>
    <App-layout>
        <v-btn text dark fab class="mr-1" @click="back">
            <v-icon>
                mdi-arrow-left
                {{ route() }}
            </v-icon>
        </v-btn>
        <v-card
            class="d-flex justify-center transparent"
            flat
            tile
        >
            <v-card flat class="text-center transparent"
                    width="800">
                <v-img
                    :src="`/storage/${data.business_path_cover_image}`"
                    max-height="500"
                    max-width="800"
                    :aspect-ratio="16/9"
                    style="box-shadow: 0 3px 1px -2px rgb(0 0 0 / 20%), 0 2px 2px 0 rgb(0 0 0 / 14%), 0 1px 5px 0 rgb(0 0 0 / 12%);"
                >

                </v-img>
                <div class="d-flex text-left">
                    <v-avatar elevation="2" class=" ma-0 pa-0 ml-2"
                              style="box-shadow: 0 3px 1px -2px rgb(0 0 0 / 20%), 0 2px 2px 0 rgb(0 0 0 / 14%), 0 1px 5px 0 rgb(0 0 0 / 12%);"
                              :class="$vuetify.breakpoint.mdAndUp?'mt-n12':'mt-n2'"
                              :size="$vuetify.breakpoint.mdAndUp?'200':'100'">
                        <v-img :aspect-ratio="16/9" :src="`/storage/${data.business_path_profile_image}`">
                        </v-img>
                    </v-avatar>
                    <v-card flat class="d-flex flex-column justify-center transparent">

                        <v-card-title class="mb-1 py-0 text-h6 font-weight-bold">
                            {{ data.business_name }}
                        </v-card-title>

                        <v-card-text class="ma-0 py-0">
                            <div class="subtitle-1">{{ data.business_email }}</div>
                            <div class="subtitle-1 my-0 py-0">
                                <v-icon>
                                    mdi-map-marker
                                </v-icon>
                                {{ data.business_city }}
                            </div>
                        </v-card-text>
                    </v-card>

                </div>
            </v-card>
        </v-card>

        <v-container>
            <section class="mt-12">
                <div class="d-flex justify-space-between align-center">
                    <div class="d-flex flex-column">
                        <h2 class="text-h6 font-weight-bold  mb-0 pb-0 mt-6">
                            Categorías
                        </h2>
                        <div class="mb-5 secondary " style="width: 80px; height: 4px;"></div>
                    </div>
                    <v-spacer></v-spacer>
                    <inertia-link :href="route('category.index')">
                        <v-btn rounded text small>
                            View all
                            <v-icon size="16">
                                mdi-chevron-double-right
                            </v-icon>
                        </v-btn>
                    </inertia-link>
                </div>
                <v-row>
                    <v-col v-for="i in 4" :key="i.id" cols="12" sm="6" md="4" lg="3" xl="3">
                        <v-card link class="elevation-cs my-5 ml-0">
                            <div tabindex="-1" class="v-list-item v-list-item--three-line theme--light">
                                <v-list-item-avatar size="80" class="grey lighten-4">
                                    <v-icon size="40">
                                        mdi-package-variant
                                    </v-icon>
                                </v-list-item-avatar>
                                <v-list-item-content>
                                    <div class="overline">15/11/2020</div>
                                    <v-list-item-title class="title mb-1 success--text">
                                        Will be delivered tomorrow
                                    </v-list-item-title>
                                    <v-list-item-subtitle>Lorem ipsum dolor sit.</v-list-item-subtitle>
                                </v-list-item-content>
                            </div>
                            <v-card-actions>
                                <v-spacer></v-spacer>
                                <v-btn text>View order
                                    <v-icon right>
                                        mdi-chevron-right
                                    </v-icon>
                                </v-btn>
                            </v-card-actions>
                        </v-card>
                    </v-col>
                </v-row>
            </section>

            <section class="my-6">
                <div class="d-flex justify-space-between align-center">
                    <div class="d-flex flex-column">
                        <h2 class="text-h6 font-weight-bold  mb-0 pb-0 mt-6">
                            Productos
                        </h2>
                        <div class="mb-5 secondary " style="width: 80px; height: 4px;"></div>
                    </div>
                    <v-spacer></v-spacer>
                    <inertia-link :href="route('product.index')">
                        <v-btn rounded text small>
                            View all
                            <v-icon size="16">
                                mdi-chevron-double-right
                            </v-icon>
                        </v-btn>
                    </inertia-link>
                </div>
                <v-row class="align-center justify-center">
                    <v-col v-for="i in 4" :key="i.id" cols="12">
                        <v-card href="/product/1"
                                class="elevation-cs ml-0 d-flex align-center pa-6 justify-center justify-md-space-between rounded-lg">
                            <div
                                class="align-center align-md-center d-flex flex-column flex-md-row justify-center mx-0 mx-md-12">
                                <v-avatar size="90">
                                    <v-img contain
                                           src="https://ecommerce-vuetify-template.netlify.app/_nuxt/img/2.888c5df.jpg">
                                    </v-img>
                                </v-avatar>

                                <div class="mx-0 mx-md-12 text-center text-md-left w-100">
                                    <h2 class="font-weight-bold primary--text">
                                        Pay 799$ now
                                    </h2>
                                    <p>to avoid any additional costs.</p>
                                </div>
                            </div>
                        </v-card>
                    </v-col>
                </v-row>
            </section>
        </v-container>
    </App-layout>
</template>

<script>
import AppLayout from './../../Layouts/AppLayout';

export default {
    name: "Show",
    components: {
        AppLayout,
    },
    props: ['data'],
    methods: {

        back() {
            window.history.back();
        }
    }
}
</script>

<style scoped>

</style>
