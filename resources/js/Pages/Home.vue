<template>
    <page-layout>
        <v-container
            class="px-6">
            <v-row class="justify-center">
                <v-card
                    color="#f7f8fc"
                    outlined
                    class="rounded-xl mx-auto transition-swing my-6 py-0 px-0"
                    elevation="12"
                    min-height="200"
                    width="100%">
                    <v-img contain :src="joven" class="rounded-xl my-0 py-0"></v-img>
                </v-card>
            </v-row>
        </v-container>

        <v-sheet>
            <v-container>
                <div class="mb-3 secondary mt-6" style="width: 80px; height: 4px;"></div>
                <h2 class="text-h5 font-weight-bold  mb-3">
                    Categorias
                </h2>
                <v-row>
                    <v-col cols="4" md="2"
                           v-for="(item,c) in categorias" :key="c"
                           class="text-center">
                        <v-card @click="" href="#" outlined height="100" width="150">
                            <v-img cover height="100" width="150" :src="item.src">
                            </v-img>
                        </v-card>
                        <p class="text-caption mt-2 " v-text="item.name"></p>
                    </v-col>
                    <v-col class="text-center" cols="4" md="2">
                        <v-card @click="" href="#" outlined height="100" width="150"
                                class="d-flex justify-center align-middle">
                            <v-icon size="80">
                                mdi-expand-all-outline
                            </v-icon>
                        </v-card>
                        <p class="text-caption mt-2"> Ver todos</p>
                    </v-col>
                </v-row>
            </v-container>
        </v-sheet>

        <section>
            <v-container class="mt-6">
                <div class="mb-3 secondary" style="width: 80px; height: 4px;"></div>
                <h2 class="text-h5 font-weight-bold  mb-3">
                    Perfiles Destacados
                </h2>
                <v-row >
                    <v-col class="text-center col-3" v-for="(item,p) in perfiles" :key="p">
                        <v-avatar size="80" color="white">
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
        categorias: [
            {name: 'Moda', src: moda},
            {name: 'Muebles y colchones', src: colchonesYMuebles},
            {name: 'Restaurante', src: restaurant},
            {name: 'Tecnologia', src: tecnologia},
            {name: 'Electrodomesticos', src: electrodomesticos},
        ],
        perfiles:[
            {name: 'El corral', src: el_corral},
            {name: 'Jamar', src: jamar},
            {name: 'Papa johns', src: papa_johns},
            {name: 'Solumec', src: solumec},
        ]
    })
};
</script>

<style>
</style>
