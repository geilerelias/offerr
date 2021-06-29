<template>
    <page-layout>
        <v-container
            class="mt-n12">
                <v-card
                    outlined
                    class="rounded-xl mx-auto transition-swing my-6 py-0 px-0"
                    min-height="200"
                    :aspect-ratio="8/5"
                    width="100%">
                    <v-img cover :src="joven" class="rounded-xl my-0 py-0" :aspect-ratio="8/5"></v-img>
                </v-card>
        </v-container>

        <section>
            <v-container>
                <h2 class="text-h5 font-weight-bold  mb-0 pb-0 mt-6">
                    Categorías
                </h2>
                <div class="mb-5 secondary " style="width: 80px; height: 4px;"></div>
                <v-row>
                    <v-col cols="4" md="2"
                           v-for="(item,c) in categories" :key="c"
                           class="text-center d-flex flex-column mt-4">
                        <v-card outlined @click="" href="#" outlined height="100" width="150">
                            <v-img class="rounded" cover height="100" width="150"
                                   :src="`/storage/${item.category_path_image}`">
                            </v-img>
                            <v-card-actions>
                                <p class="text-caption text-center mx-auto text-truncate" v-text="item.category_name">
                                </p>
                            </v-card-actions>
                        </v-card>
                    </v-col>
                    <v-col class="text-center mt-4" cols="4" md="2">
                        <inertia-link href="category/list">
                            <v-card @click="" href="#" outlined height="100" width="150">
                                <v-img src="#" class="md:inline-flex justify-center align-center" height="100"
                                       width="150">
                                    <v-icon size="80" color="primary">
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
            </v-container>
        </section>

        <section class="mb-12 pb-12">
            <v-container class="mt-6">
                <h2 class="text-h5 font-weight-bold  mb-0 pb-0 mt-6">
                    Perfiles Destacados
                </h2>
                <div class="mb-5 secondary " style="width: 80px; height: 4px;"></div>
                <v-row>
                    <v-col class="text-center col-3" v-for="(item,p) in perfiles" :key="p">
                        <v-avatar :size="$vuetify.breakpoint.mobile?60:80" color="white" outline
                                  style="border:solid 1px black !important; ">
                            <v-img contain
                                   :src="item.src"
                                   :alt="item.name"
                            ></v-img>
                        </v-avatar>
                        <div class="text-caption mt-2" v-text="item.name"></div>
                    </v-col>
                </v-row>
            </v-container>
        </section>
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
