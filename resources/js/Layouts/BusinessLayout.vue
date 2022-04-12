<template>
    <v-app>

        <div class="min-h-screen bg-gray-100">
            <!-- Page Drawer-->
            <drawer-component></drawer-component>

            <v-app-bar app>
                <v-btn @click="back" text dark fab class="mr-1 grey--text text--darken-2">
                    <v-icon>
                        mdi-arrow-left
                    </v-icon>
                </v-btn>
                <v-btn v-if="!$vuetify.breakpoint.smAndDown"
                       @click="miniVariant=!miniVariant"
                       small light color="white"
                       fab
                       class="mr-1 grey--text text--darken-2">

                    <v-icon v-if="miniVariant">
                        mdi-view-list
                    </v-icon>

                    <v-icon v-if="!miniVariant">
                        mdi-dots-vertical
                    </v-icon>
                </v-btn>

                <v-toolbar-title class="ml-2">
                    <slot name="title"></slot>
                </v-toolbar-title>

                <v-spacer></v-spacer>

                <!-- Settings Dropdown -->
                <settings-dropdown></settings-dropdown>

                <v-app-bar-nav-icon size="100" class=""
                                    v-if="$vuetify.breakpoint.smAndDown"
                                    @click="drawer ? setDrawer(false) : setDrawer(true)">
                    <v-icon x-large>
                        mdi-menu
                    </v-icon>
                </v-app-bar-nav-icon>
            </v-app-bar>

            <v-navigation-drawer
                v-model="drawerLocal"
                app
                permanent
                width="300"
                :expand-on-hover="miniVariant || $vuetify.breakpoint.smAndDown"
                :mini-variant="miniVariant || $vuetify.breakpoint.smAndDown"
            >

                <v-list disabled>
                    <v-list-item link>
                        <v-list-item-content class="d-flex justify-center">
                            <v-list-item-title class="d-flex justify-center text-h6">
                                {{ business.business_name }}
                            </v-list-item-title>
                        </v-list-item-content>
                    </v-list-item>

                    <v-list-item class="px-2 d-flex justify-center">
                        <v-list-item-avatar
                            :size="$vuetify.breakpoint.smAndDown || miniVariant?50:200">
                            <v-img cover :src="`/storage/${business.business_path_profile_image}`"
                                   :aspect-ratio="1/1" alt="profile_image"></v-img>
                        </v-list-item-avatar>
                    </v-list-item>
                </v-list>
                <div class="text-center py-2">
                    <v-menu
                        :close-on-content-click="false"
                        :nudge-width="200"
                        offset-x
                    >
                        <template v-slot:activator="{ on, attrs }">
                            <v-list dense rounded>
                                <v-list-item color="secondary"
                                             v-bind="attrs"
                                             v-on="on"
                                >
                                    <v-list-item-icon>
                                        <v-icon v-text="'mdi-swap-horizontal'"></v-icon>
                                    </v-list-item-icon>
                                    <v-list-item-content>
                                        <v-list-item-title v-text="'Cambiar comercio'"></v-list-item-title>
                                    </v-list-item-content>
                                </v-list-item>
                            </v-list>
                        </template>
                        <v-list subheader>

                            <v-list-item link v-for="business in businesses"
                                         :key="business.id" @click="selectBussiness(business.id)">
                                <v-list-item-avatar>
                                    <img
                                        :src="`/storage/${business.business_path_profile_image}`"
                                        alt="">
                                </v-list-item-avatar>

                                <v-list-item-content>
                                    <v-list-item-title
                                        v-text="business.business_name"></v-list-item-title>

                                    <v-list-item-subtitle>
                                        {{ business.business_department }}, {{
                                            business.business_city
                                        }},
                                        {{ business.business_address }}
                                    </v-list-item-subtitle>
                                </v-list-item-content>
                            </v-list-item>

                        </v-list>
                    </v-menu>
                </div>
                <v-divider></v-divider>
                <v-list :shaped="!miniVariant && !$vuetify.breakpoint.smAndDown">
                    <v-list-item-group
                        v-model="selectedItem"
                        color="primary"
                    >
                        <inertia-link v-for="(item, i) in links"
                                      :key="i" :href="route(item.route,idBusiness)">
                            <v-list-item
                                :class="route().current(item.route)?'v-item--active v-list-item--active':''">
                                <v-list-item-icon>
                                    <v-icon v-text="item.icon"></v-icon>
                                </v-list-item-icon>
                                <v-list-item-content>
                                    <v-list-item-title v-text="item.text"></v-list-item-title>
                                </v-list-item-content>
                            </v-list-item>
                        </inertia-link>
                    </v-list-item-group>
                </v-list>

            </v-navigation-drawer>
            <!-- Page Content -->
            <main>
                <div
                    :style="$vuetify.breakpoint.mdAndUp?'margin-top: 80px !important;':$vuetify.breakpoint.smOnly?'margin-top: 120px;':''">
                    <v-main>
                        <!-- content -->
                        <slot></slot>
                    </v-main>
                </div>
            </main>

            <!-- Modal Portal -->
            <portal-target name="modal" multiple>
            </portal-target>
        </div>
    </v-app>
</template>

<script>
import Drawer from "@/Base/Drawer.vue";

import {mapMutations, mapGetters, mapState} from "vuex";
import colombiaJson from "../../assets/colombia.json";
import SettingsDropdown from "@/Components/SettingsDropdown";

export default {
    components: {
        "drawer-component": Drawer,
        SettingsDropdown
    },

    props: ['data'],

    data: () => ({
        businesses: [],
        business: {
            "business_path_profile_image": '',
            "business_name": ''
        },
        selectedItem: null,
        drawerLocal: null,
        miniVariant: null,
        showingNavigationDropdown: false,
        links: [
            {text: 'Pedidos', icon: 'mdi-book-open-outline', route: 'business.orders'},
            {text: 'Mis productos', icon: 'mdi-clipboard-list', route: 'business.products'},
            {text: 'Reseñas', icon: 'mdi-newspaper-variant-outline', route: 'business.reviews'},
            {text: 'Seguidores', icon: 'mdi-account-group', route: 'business.followers'},
            {text: "Seguidos", icon: 'mdi-account-group', route: "business.followed"},
            {text: 'estadisticas', icon: 'mdi-chart-bar', route: 'business.statistics'},
            {text: 'editar perfil', icon: 'mdi-file-document-edit-outline', route: 'business.edit'},
            {text: "Notificaciones", icon: 'mdi-bell', route: "business.notifications"},
            {text: "Favoritos", icon: 'mdi-heart', route: "business.favorites"},
            {text: "Ubicación", icon: 'mdi-map-marker', route: "business.location"},
            {text: "Ajustes", icon: 'mdi-cog', route: "profile.show"},
        ],
    }),
    created() {

        if (this.idBusiness == '') {
            let idActual = window.location.pathname
            idActual = idActual.split('/')[2];
            console.log('id  => ', idActual);
            this.setIdBusiness(idActual)
        }
        console.log('id bussiness => ', this.idBusiness);

        console.log('drawer => ', this.drawer);
        axios
            .get(`/business/user/all`)
            .then(response => {
                this.businesses = response.data;
            })
            .catch(error => {
                console.log(error);
            });


        axios
            .get(`/business/${this.idBusiness}/get`)
            .then(response => {
                this.business = response.data;
                console.log(this.business)
            });
    },
    computed: {
        ...mapState(["drawer", "search", "page", "color", "flat", "idBusiness"]),
        localSearch: {
            get() {
                return this.search;
            },
            set(val) {
                this.setSearch(val);
            }
        },
    },

    methods: {
        ...mapMutations([
            "setDrawer",
            "setSearch",
            "setPage",
            "setFlat",
            "setIdBusiness"
        ]),
        ...mapGetters(["getIdBusiness"]),
        switchToTeam(team) {
            this.$inertia.put(route('current-team.update'), {
                'team_id': team.id
            }, {
                preserveState: false
            })
        },

        logout() {
            axios.post(route('logout').url()).then(response => {

            })
        },

        back() {
            window.history.back();
            //return document.referrer;
        },
        selectBussiness(id) {
            this.setIdBusiness(id);
            this.$inertia.get(route(route().current(), id))

            // window.location.reload();
        }
    }
}
</script>

<style>
.v-btn {
    outline: none !important;
}

</style>
