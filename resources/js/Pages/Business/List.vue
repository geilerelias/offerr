<template>
    <App-layout>
        <v-container class="my-6">
            <v-toolbar flat>
                <v-toolbar-title class="ml-2">
                    Comercios
                </v-toolbar-title>

                <v-spacer></v-spacer>
                <inertia-link :href="route('business.index')">
                    <v-btn>
                        Gestionar Comercios
                    </v-btn>
                </inertia-link>
            </v-toolbar>
            <v-list two-line class="rounded-0 pa-4">
                <v-list-item-group v-model="selectedItem"
                                   color="primary">

                    <inertia-link :href="route('business.products',item.id)"
                                  v-for="(item, index) in data"
                                  :key="index">
                        <v-list-item @click="setIdBusiness(item.id)">
                            <v-list-item-avatar>
                                <v-img :src="`/storage/${item.business_path_profile_image}`"></v-img>
                            </v-list-item-avatar>

                            <v-list-item-content>
                                <v-list-item-title v-html="item.business_name"></v-list-item-title>
                                <v-list-item-subtitle>
                                    {{ item.business_city }} - {{ item.business_country }}
                                </v-list-item-subtitle>
                            </v-list-item-content>
                        </v-list-item>
                        <v-divider inset></v-divider>
                    </inertia-link>
                </v-list-item-group>
            </v-list>
        </v-container>
    </App-layout>
</template>

<script>
import AppLayout from './../../Layouts/AppLayout'
import {mapMutations, mapState} from "vuex";
export default {
    name: "List",
    props: ['data'],
    components: {
        AppLayout,
    },
    data: () => ({
        selectedItem: null,
    }),
    computed: {
        ...mapState(["idBusiness"]),
    },
    methods: {
        ...mapMutations([
            "setDrawer",
            "setSearch",
            "setPage",
            "setFlat",
            "setIdBusiness"
        ]),
    }

}
</script>

<style scoped>

</style>
