<template>
    <page-layout>
        <v-container fluid
                     class="mt-n3"
                     :class="$vuetify.breakpoint.smAndUp?'pa-12 ':''">
            <v-card
                outlined
                class="rounded-xl mx-auto transition-swing my-6 py-0 px-0"
                min-height="200"
                max-height="45vh"
                :aspect-ratio="$vuetify.breakpoint.mdAndUp?26/9:8/5"
                width="100%">
                <v-img cover :src="joven" class="rounded-xl my-0 py-0" max-height="45vh"
                       :aspect-ratio="$vuetify.breakpoint.mdAndUp?26/9:8/5"></v-img>
            </v-card>


            <section class="mt-12">

                <h2 class="text-h5 font-weight-bold  mb-0 pb-0 ">
                    Categorías
                </h2>
                <div class="mb-5 secondary " style="width: 80px; height: 4px;"></div>

                <v-card v-if="$vuetify.breakpoint.lgAndUp"
                        class="d-flex justify-space-between mb-6"
                        color="white"
                        flat
                        tile
                >
                    <inertia-link :href="`/category/show/${item.id}`"
                                  cols="4" md="2"
                                  v-for="(item,c) in categories" :key="c">
                        <v-card outlined
                                :height="$vuetify.breakpoint.mdAndUp?200:100"
                                :width="$vuetify.breakpoint.mdAndUp?150:80">
                            <v-img class="rounded" cover
                                   :height="$vuetify.breakpoint.mdAndUp?200:100"
                                   :width="$vuetify.breakpoint.mdAndUp?150:80"
                                   :src="`/storage/${item.category_path_image}`">
                            </v-img>
                            <v-card-actions>
                                <p class="text-caption text-center mx-auto text-truncate"
                                   v-text="item.category_name">
                                </p>
                            </v-card-actions>
                        </v-card>
                    </inertia-link>


                    <div class="text-center">
                        <v-dialog
                            v-model="dialog"
                            width="500"
                        >
                            <template v-slot:activator="{ on, attrs }">
                                <v-card v-bind="attrs"
                                        v-on="on"
                                        link
                                        outlined
                                        :height="$vuetify.breakpoint.mdAndUp?200:100"
                                        width="150">
                                    <v-img src="#" class="text-center md:inline-flex justify-center align-center"
                                           :height="$vuetify.breakpoint.mdAndUp?200:100"
                                           width="150">
                                        <v-icon :size="$vuetify.breakpoint.mdAndUp?120:80" color="primary">
                                            mdi-menu
                                        </v-icon>
                                    </v-img>
                                    <v-card-actions>
                                        <p class="text-caption text-center mx-auto font-weight-black ">
                                            Ver todos
                                        </p>
                                    </v-card-actions>
                                </v-card>
                            </template>

                            <v-card>
                                <v-card-title class="text-center">
                                    Categorias disponibles

                                    <v-spacer></v-spacer>
                                    <v-btn
                                        icon
                                        light
                                        @click="dialog = false"
                                    >
                                        <v-icon>mdi-close</v-icon>
                                    </v-btn>
                                </v-card-title>
                                <v-divider></v-divider>
                                <v-card-text>

                                    <v-list subheader
                                            two-line>
                                        <inertia-link
                                            :href="`category/show/${category.id}`"
                                            v-for="category in categories"
                                            :key="category.id">
                                            <v-list-item link>
                                                <v-list-item-avatar>
                                                    <img :src="`/storage/${category.category_path_image}`"
                                                         alt="">
                                                </v-list-item-avatar>

                                                <v-list-item-content>
                                                    <v-list-item-title
                                                        v-text="category.category_name">
                                                    </v-list-item-title>
                                                    <v-list-item-subtitle>
                                                        <v-chip small
                                                                class="ml-1"
                                                                v-for="item in JSON.parse(category.category_subcategories)"
                                                                :key="item.id">
                                                            {{ item.name }}
                                                        </v-chip>
                                                    </v-list-item-subtitle>
                                                </v-list-item-content>

                                            </v-list-item>
                                        </inertia-link>
                                    </v-list>
                                </v-card-text>

                                <v-divider></v-divider>

                                <v-card-actions class=" d-flex justify-center text-center">
                                    <p class="primary--text">
                                        Seleccionar una categoría
                                    </p>
                                </v-card-actions>
                            </v-card>
                        </v-dialog>
                    </div>


                </v-card>

                <v-row
                    v-else
                    class="d-flex justify-space-between mb-6"
                    color="white"
                    flat
                    tile
                >
                    <v-col cols="4" md="2" class="mb-4 md:inline-flex justify-center"
                           v-for="(item,c) in categories" :key="c">
                        <inertia-link :href="`/category/show/${item.id}`">
                            <v-card outlined
                                    :height="$vuetify.breakpoint.mdAndUp?200:80"
                                    :width="$vuetify.breakpoint.mdAndUp?150:110">
                                <v-img class="rounded" cover
                                       :height="$vuetify.breakpoint.mdAndUp?200:80"
                                       :width="$vuetify.breakpoint.mdAndUp?150:110"
                                       :src="`/storage/${item.category_path_image}`">
                                </v-img>
                                <v-card-actions>
                                    <p class="text-caption text-center mx-auto text-truncate"
                                       v-text="item.category_name">
                                    </p>
                                </v-card-actions>
                            </v-card>
                        </inertia-link>
                    </v-col>

                    <v-col cols="4" md="2" class="mb-4 md:inline-flex justify-center">

                        <inertia-link href="category/list">
                            <v-card @click="" href="#" outlined
                                    :height="$vuetify.breakpoint.mdAndUp?200:80"
                                    :width="$vuetify.breakpoint.mdAndUp?150:110">
                                <v-img src="#" class="text-center md:inline-flex justify-center align-center"
                                       :height="$vuetify.breakpoint.mdAndUp?200:80"
                                       :width="$vuetify.breakpoint.mdAndUp?150:110">
                                    <v-icon :size="$vuetify.breakpoint.mdAndUp?120:80" color="primary">
                                        mdi-menu
                                    </v-icon>
                                </v-img>
                                <v-card-actions>
                                    <p class="text-caption text-center mx-auto font-weight-black ">
                                        Ver todos
                                    </p>
                                </v-card-actions>
                            </v-card>
                        </inertia-link>
                    </v-col>
                </v-row>

            </section>

            <section class="mb-12 py-12 mt-12">

                <h2 class="text-h5 font-weight-bold  mb-0 pb-0 mt-6">
                    Perfiles Destacados
                </h2>
                <div class="mb-5 secondary " style="width: 80px; height: 4px;"></div>
                <v-card class="d-flex justify-space-between mb-6"
                        color="white"
                        flat
                        tile
                >
                    <v-card class="text-center col-3 rounded-circle"
                            flat
                            v-for="(item,p) in perfiles" :key="p"
                    >
                        <v-avatar :size="$vuetify.breakpoint.mobile?60:80"
                                  color="white" outline
                                  style="border:solid 1px black !important; ">
                            <v-img contain
                                   :src="item.src"
                                   :alt="item.name"
                            ></v-img>
                        </v-avatar>
                        <div class="text-caption mt-2" v-text="item.name"></div>
                    </v-card>
                </v-card>

            </section>
        </v-container>
    </page-layout>
</template>

<script>
import PageLayout from "@/Layouts/PageLayout";
import joven from '../../images/joven.jpg';

import colchonesYMuebles from '../../images/colchones y muebles.jpg';

import moda from '../../images/moda.jpg';
import restaurant from '../../images/restaurant.jpg';
import tecnologia from '../../images/tecnologia.jpg';
import electrodomesticos from '../../images/electrodomesticos.jpg';

import el_corral from '../../images/comercios/el_corral.jpg';
import jamar from '../../images/comercios/jamar.jpg';
import papa_johns from '../../images/comercios/papa_johns.jpg' ;
import solumec from '../../images/comercios/solumec.jpg';


export default {
    components: {
        PageLayout
    },
    name: "Home",
    data: () => ({
        dialog: false,
        joven: joven,
        categories: [],
        perfiles: [
            {name: 'El corral', src: el_corral},
            {name: 'Jamar', src: jamar},
            {name: 'Papa johns', src: papa_johns},
            {name: 'Solumec', src: solumec},
        ]
    }),
    created() {
        axios
            .get(`/category/all`)
            .then(response => {
                this.categories = response.data;
            })
            .catch(error => {
                console.log(error);
            });
    }
};
</script>

<style>
</style>
