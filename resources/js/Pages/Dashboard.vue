<template>
    <app-layout>
        <div class="py-12">
            <div class="max-w-7xl mx-auto sm:px-6 lg:px-8">
                <!--                <div class="bg-white overflow-hidden shadow-xl sm:rounded-lg">-->
                <v-container v-if="charging">
                    <v-row>
                        <v-col
                            v-for="i in 3" :key="i.id"
                            cols="12"
                            md="4"
                        >
                            <v-skeleton-loader
                                elevation="2"
                                class="mx-auto"
                                type="card-avatar, article,card-heading, actions"
                            ></v-skeleton-loader>
                        </v-col>
                    </v-row>
                </v-container>
                <v-container v-else>
                    <v-row>
                        <template v-if="data.length>0">
                            <v-col cols="12" sm="6" md="4" v-for="item in data" :key="item.id">
                                <v-card class="card-shadow mb-6">

                                    <v-img
                                        :src="`/storage/${item.business_path_cover_image}`"
                                        style="height: 258px;">
                                    </v-img>

                                    <v-avatar absolute
                                              class="avatar-absolute"
                                              size="140">
                                        <v-img :src="`/storage/${item.business_path_profile_image}`">
                                        </v-img>
                                    </v-avatar>

                                    <div class="mt-4 card-header-padding text-center">
                                        <div class="d-flex justify-space-between">
                                            <inertia-link :href="route('business.edit',item.id)">
                                                <v-btn small
                                                       class="font-weight-600 text-capitalize  primary rounded-sm px-2 py-1">
                                                    Editar
                                                </v-btn>
                                            </inertia-link>
                                            <inertia-link :href="route('business.show',item.id)">
                                                <v-btn small
                                                       class="font-weight-600 text-capitalize  secondary rounded-sm px-2 py-1">
                                                    Ver todo
                                                </v-btn>
                                            </inertia-link>
                                        </div>
                                    </div>

                                    <v-card-text class="pt-0">
                                        <v-list class="py-4">
                                            <v-list-item tabindex="-1" role="listitem" class="px-0 py-4  theme--light">
                                                <v-row class="d-flex justify-center">
                                                    <v-col class="py-0  col-auto">
                                                        <v-list-item-content class=" text-center">
                                                            <span class="font-weight-bold body-1 mb-1">
                                                                {{ Math.floor(Math.random() * (100 - 1) + 1) }}
                                                            </span>
                                                            <v-list-item-title
                                                                class="description body-2 ls-0 mb-2">
                                                                Categorías
                                                            </v-list-item-title>
                                                        </v-list-item-content>
                                                    </v-col>
                                                    <v-col class="py-0 col col-auto">
                                                        <div class="v-list-item__content text-center">
                                                            <span class="font-weight-bold body-1 mb-1">
                                                                {{ Math.floor(Math.random() * (1000 - 10) + 10) }}
                                                            </span>
                                                            <v-list-item-title
                                                                class="description text-body-2 ls-0 mb-2">
                                                                Productos
                                                            </v-list-item-title>
                                                        </div>
                                                    </v-col>
                                                    <v-col class="py-0 col col-auto">
                                                        <v-list-item-content class="text-center">
                                                            <span class="font-weight-bold body-1 mb-1">
                                                                {{ Math.floor(Math.random() * (1000 - 10) + 10) }}
                                                            </span>
                                                            <v-list-item-title
                                                                class="description text-body-2 ls-0 mb-2">
                                                                Seguidores
                                                            </v-list-item-title>
                                                        </v-list-item-content>
                                                    </v-col>
                                                </v-row>
                                            </v-list-item>
                                        </v-list>
                                        <div class="text-center">
                                            <h3 class="title font-weight-600  mb-2">
                                                {{ item.business_name }}
                                                <span class="font-weight-light">, {{ item.business_acronym }}</span>
                                            </h3>

                                            <div class="h5 primary--text text--darken-4 font-weight-thin">
                                                {{ item.business_city }},
                                                {{ item.business_country }}
                                            </div>
                                            <div class="text-body font-size-root mt-3">
                                                {{ item.business_address }}
                                            </div>
                                            <div class="h5 text-typo font-weight-600 mt-5">
                                                {{ item.business_email }} - {{ item.business_phone }}
                                            </div>

                                        </div>
                                    </v-card-text>
                                </v-card>
                            </v-col>
                        </template>
                        <v-col v-else
                               class="d-flex justify-center align-center fill-height"
                               cols="12"
                               style="height: 60vh">

                            <v-card
                                class="pa-2 transparent text-center"
                                flat
                            >
                                <p class="headline">No hay contenido para mostrar</p>
                                <inertia-link :href="route('business.index')">
                                    <v-btn class="primary">
                                        Registrar Comercios
                                    </v-btn>
                                </inertia-link>
                            </v-card>
                        </v-col>
                    </v-row>
                </v-container>
                <!--                </div>-->
            </div>
        </div>
    </app-layout>
</template>

<script>
import AppLayout from '@/Layouts/AppLayout'
import Welcome from '@/Jetstream/Welcome'

export default {
    components: {
        AppLayout,
        Welcome,
    },
    data: () => ({
        data: null,
        charging: true,
        attrs: {
            class: 'mb-6',
            elevation: 2,
        },
    }),
    created() {
        let business_all = 'all';
        axios
            .get("/business/user/all")
            .then(response => {
                this.data = response.data;
                this.charging = false;
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

}
</script>

<style>
.avatar-absolute {
    position: absolute;
    left: 0;
    right: 0;
    margin-left: auto;
    margin-right: auto;
    transform: translateY(-50%) scale(1);
    border: 3px solid #fff;
    transition: all .15s ease;
}
</style>
