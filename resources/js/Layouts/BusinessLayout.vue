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
                <v-app-bar-nav-icon size="100" class=""
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
                            :size="$vuetify.breakpoint.smAndDown || miniVariant?'':100">
                            <v-img :src="`/storage/${business.business_path_profile_image}`"
                                   alt="profile_image"></v-img>

                        </v-list-item-avatar>
                    </v-list-item>
                </v-list>

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

export default {
    components: {
        "drawer-component": Drawer
    },

    props: ['data'],

    data: () => ({
        business: {
            "business_path_profile_image": '',
            "business_name": ''
        },
        selectedItem: null,
        drawerLocal: null,
        miniVariant: null,
        showingNavigationDropdown: false,
        links: [
            {icon: 'mdi-book-open-outline', text: 'Pedidos', route: 'business.orders'},
            {icon: 'mdi-clipboard-list', text: 'Mis productos', route: 'business.products'},
            {icon: 'mdi-newspaper-variant-outline', text: 'Reseñas', route: 'business.reviews'},
            {icon: 'mdi-account-group', text: 'Seguidores', route: 'business.followers'},
            {icon: 'mdi-chart-bar', text: 'estadisticas', route: 'business.statistics'},
            {icon: 'mdi-file-document-edit-outline', text: 'editar perfil', route: 'business.edit'}
        ],
    }),
    created() {
        console.log('id bussiness => ', this.idBusiness);
        console.log('drawer => ', this.drawer);

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
                window.location = '/';
            })
        },

        back() {
            window.history.back();
            //return document.referrer;
        },
    }
}
</script>

<style>
.v-btn {
    outline: none !important;
}

</style>
