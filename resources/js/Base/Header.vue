<template>
    <div class="mb-1">
        <!--        <v-system-bar absolute v-if="$vuetify.breakpoint.smAndUp" :class="$vuetify.breakpoint.mdAndUp?'px-200':'px-6'"
                              height="30">
                    <div class="d-flex social-icons">
                        <v-btn icon text rounded>
                            <v-icon size="20">
                                mdi-facebook
                            </v-icon>
                        </v-btn>
                        <v-btn icon text rounded>
                            <v-icon size="20">
                                mdi-twitter
                            </v-icon>
                        </v-btn>
                        <v-btn icon text rounded>
                            <v-icon size="20">
                                mdi-instagram
                            </v-icon>
                        </v-btn>
                        <v-btn icon text rounded>
                            <v-icon size="20">
                                mdi-whatsapp
                            </v-icon>
                        </v-btn>
                    </div>

                    <v-spacer></v-spacer>

                    <div>
                        <v-icon notranslate>mdi-phone</v-icon>
                        <span>Call us: <span class="font-weight-bold">0800 - 1923</span></span>
                    </div>

                </v-system-bar>-->
        <v-app-bar app
                   flat
                   clipped-left
                   class="py-4"
                   :class="$vuetify.breakpoint.mdAndUp?'px-20':''"
                   style="height:82px !important;border-bottom: solid 1px #e0e0e0 !important;" color="white">

            <inertia-link v-if="!app"
                          :href="route('home')"
                          class="d-flex align-start text-decoration-none mr-4">
                <v-card flat max-width="110" color="transparent" :spect-ratio="5/4">
                    <v-img
                        style="max-height:48px"
                        :spect-ratio="5/4"
                        contain
                        :src="logo"
                    >
                        <template v-slot:placeholder>
                            <v-row
                                class="fill-height ma-0"
                                align="center"
                                justify="center"
                            >
                                <v-progress-circular
                                    indeterminate
                                    color="primary"
                                ></v-progress-circular>
                            </v-row>
                        </template>
                    </v-img>
                </v-card>
            </inertia-link>

            <template v-else>
                <v-btn @click="back" text dark fab class="mr-1 grey--text text--darken-2">
                    <v-icon>
                        mdi-arrow-left
                    </v-icon>
                </v-btn>
            </template>


            <v-text-field
                v-if="$vuetify.breakpoint.mdAndUp && seeker"
                v-model="localSearch"
                class="grey lighten-4 rounded-lg  ml-2 mr-4"
                placeholder="Lo que buscas"
                filled
                rounded
                dense
                hide-details
                @keyup.enter="searching"
            >
                <v-icon color="primary" @click="searching" slot="prepend-inner">
                    mdi-magnify
                </v-icon>
            </v-text-field>

            <v-select
                v-if="$vuetify.breakpoint.mdAndUp && seeker"
                :items="department"
                :rules="[v => !!v || 'Department is required']"
                label="Departamento *"
                required
                style="max-width:200px;"
                class="mx-2"
                outlined
                dense
                hide-details
            ></v-select>


            <v-spacer v-if="$vuetify.breakpoint.smAndDown"></v-spacer>

            <!-- Settings Dropdown -->
            <settings-dropdown></settings-dropdown>
            <!--shopping cart-->
            <shopping-cart></shopping-cart>

            <div class="text-center" v-if="$page.user==null && $vuetify.breakpoint.mdAndUp">
                <v-menu v-model="menu" :close-on-content-click="false" :nudge-width="200" offset-y>
                    <template v-slot:activator="{ on, attrs }">
                        <v-btn text class="rounded-0 my-0 py-0 grey--text text--darken-2"
                               width="60"
                               height="60"
                               v-bind="attrs"
                               v-on="on">
                            <v-icon size="70">
                                mdi-menu
                            </v-icon>
                        </v-btn>
                    </template>

                    <v-card>
                        <v-list>
                            <template v-if="$page.user==null">
                                <v-subheader>Authentication</v-subheader>
                                <v-divider></v-divider>
                                <v-list-item
                                    v-for="item in listAutenticacion"
                                    :key="item.title"
                                    :href="item.route"
                                >
                                    <v-list-item-icon>
                                        <v-icon>{{ item.icon }}</v-icon>
                                    </v-list-item-icon>

                                    <v-list-item-content>
                                        <v-list-item-title>{{ item.title }}</v-list-item-title>
                                    </v-list-item-content>
                                </v-list-item>

                            </template>
                        </v-list>
                    </v-card>
                </v-menu>
            </div>

            <v-btn text class="rounded-0 my-0 py-0 grey--text text--darken-2"
                   width="60"
                   height="60"
                   v-if="$vuetify.breakpoint.smAndDown"
                   @click="drawer?setDrawer(false):setDrawer(true)">
                <v-icon size="70">
                    mdi-menu
                </v-icon>
            </v-btn>
        </v-app-bar>

        <v-container class="justify-center" style="margin-top: 60px">
            <v-text-field
                v-if="$vuetify.breakpoint.smAndDown"
                v-model="localSearch"
                class="grey lighten-4 rounded-lg mt-12 mx-auto"
                placeholder="Lo que buscas"
                filled
                rounded
                dense
                hide-details
                style="max-width:400px ;margin-top: 40px!important;"
                :class="{'d-none':!seeker}"
                @keyup.enter="searching"
            >
                <v-icon color="primary" @click="searching" slot="prepend-inner">
                    mdi-magnify
                </v-icon>
            </v-text-field>
        </v-container>
        <v-btn
            v-show="fab"
            v-scroll="onScroll"
            bottom
            color="primary"
            dark
            fab
            fixed
            right
            @click="toTop"
        >
            <v-icon>mdi-chevron-up</v-icon>
        </v-btn>
    </div>
</template>

<script>
import logo from '../../images/logo_offerr.jpg';

import {mapMutations, mapState} from "vuex";

import JetApplicationMark from '@/Jetstream/ApplicationMark'
import JetDropdown from '@/Jetstream/Dropdown'
import JetDropdownLink from '@/Jetstream/DropdownLink'
import JetNavLink from '@/Jetstream/NavLink'
import JetResponsiveNavLink from '@/Jetstream/ResponsiveNavLink'
import colombiaJson from '@/../assets/colombia.json'
import SettingsDropdown from "@/Components/SettingsDropdown";
import ShoppingCart from "@/Components/ShoppingCart";

export default {

    name: "Header",
    components: {
        JetApplicationMark,
        JetDropdown,
        JetDropdownLink,
        JetNavLink,
        JetResponsiveNavLink,
        SettingsDropdown,
        ShoppingCart
    },
    props: {
        seeker: {
            type: Boolean,
            default: true
        },
        app: {
            type: Boolean,
            default: false
        },
    },
    created() {
        for (const item in colombiaJson) {
            this.department.push(colombiaJson[item].departamento);
        }
        this.department = this.department.sort();
    },
    data: () => ({
        fav: true,
        menu: false,
        message: false,
        hints: true,
        fab: false,
        logo: logo,
        department: [],
        items: [
            {title: 'Dashboard', icon: 'mdi-view-dashboard'},
            {title: 'Photos', icon: 'mdi-image'},
            {title: 'About', icon: 'mdi-help-box'},
        ],
        right: null,
        listAutenticacion: [
            {title: 'Login', icon: 'mdi-account-lock', route: "/login"},
            {title: 'Sign Up', icon: 'mdi-account-plus', route: "/register"},
        ],

    }),
    computed: {
        ...mapState(["drawer", "search", "page", "color", "flat", "links", "idBusiness"]),
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
        toTop() {
            this.$vuetify.goTo(0);
        }
        ,
        onScroll(e) {
            if (typeof window === "undefined") return;
            const top = window.pageYOffset || e.target.scrollTop || 0;
            if (top > 50) {
                this.fab = true;
                this.setFlat(false);
            } else {
                this.fab = false;
                this.setFlat(true);
            }
        }
        ,
        switchToTeam(team) {
            this.$inertia.put(route('current-team.update'), {
                'team_id': team.id
            }, {
                preserveState: false
            })
        },
        logout() {
            axios.post(route('logout').url())
                .then(response => {
                    window.location = '/';
                })
        },
        back() {
            window.history.back();
            //return document.referrer;
        },
        searching() {
            if (!this.route().current('marketplace')) {
                this.$inertia.get('/marketplace');
            }
        },

    }
}
</script>

<style>
.active {
    border-bottom: solid;
}

.px-20 {
    padding-left: 20px !important;
    padding-right: 20px !important;
}

@media only screen and (max-width: 300px) {
    .v-toolbar__content, .v-toolbar__extension {
        padding: 4px 8px;
    }
}

.mw-120 {
    max-width: 120px;
}

.f-600 {
    font-weight: 600;
}

</style>

