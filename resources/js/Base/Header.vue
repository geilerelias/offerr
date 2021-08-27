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
                   style="height:100px !important;border-bottom: solid 1px #e0e0e0 !important;" color="white">

            <inertia-link v-if="!app"
                          :href="route('home')"
                          class="d-flex align-start text-decoration-none mr-4">
                <v-card flat max-width="110" color="transparent" :spect-ratio="5/4">
                    <v-img
                        style="max-height:48px"
                        :spect-ratio="5/4"
                        contain
                        :src="logo"
                    />
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

            <!--<v-badge
                            bordered
                            color="error"
                            content="2"
                            overlap
                        >
                            <v-btn
                                small
                                fab
                                text
                                color="primary"
                            >
                                <v-icon>
                                    mdi-cart-outline
                                </v-icon>
                            </v-btn>
                        </v-badge>-->

            <v-spacer v-if="$vuetify.breakpoint.smAndDown"></v-spacer>

            <!-- Settings Dropdown -->
            <div v-if="$page.user!==null" class="text-center hidden-xs-only">
                <v-menu
                    offset-y
                    :close-on-content-click="false"
                >
                    <!--                                <template v-slot:activator="{ on, attrs }">
                                                        <v-btn text
                                                               v-bind="attrs"
                                                               v-on="on"
                                                               class="px-1 ml-2 mr-n2 rounded-pill">
                                                            <v-avatar class="transparent" size="35" v-if="$page.jetstream.managesProfilePhotos">
                                                                <v-img cover :src="$page.user.profile_photo_url" :alt="$page.user.name"></v-img>
                                                            </v-avatar>

                                                            <span
                                                                class="text-none font-weight-regular ml-3 hidden-sm-and-down text-truncate"
                                                                style="max-width: 100px;">{{ $page.user.name }}</span>
                                                            <v-icon>mdi-chevron-down</v-icon>
                                                        </v-btn>
                                                    </template> -->
                    <template v-slot:activator="{ on, attrs }">
                        <v-btn v-if="$page.jetstream.managesProfilePhotos"
                               fab
                               dark
                               text
                               v-bind="attrs"
                               v-on="on"
                               large
                        >
                            <v-img style="max-height: 48px;max-width: 48px" class="rounded-circle" cover
                                   :src="$page.user.profile_photo_url"
                                   :alt="$page.user.name"></v-img>
                        </v-btn>
                    </template>

                    <v-card>
                        <v-list>
                            <v-list-item>
                                <v-list-item-avatar v-if="$page.jetstream.managesProfilePhotos">
                                    <img
                                        :src="$page.user.profile_photo_url"
                                        :alt="$page.user.name"
                                    >
                                </v-list-item-avatar>

                                <v-list-item-content>
                                    <v-list-item-title>{{ $page.user.name }}</v-list-item-title>
                                    <v-list-item-subtitle>{{ $page.user.email }}</v-list-item-subtitle>
                                </v-list-item-content>
                            </v-list-item>
                        </v-list>

                        <v-divider></v-divider>


                        <!-- Responsive Settings Options -->
                        <!--
                                                <v-list v-if="$page.user!==null" dense>
                                                    <v-subheader>Settings Options</v-subheader>
                                                    <v-list-item-group
                                                        color="primary"
                                                    >
                                                        <inertia-link :href="route('profile.show')">
                                                            <v-list-item
                                                                :dark="route().current('profile.show')"
                                                                :class="route().current('profile.show')?'active primary  white&#45;&#45;text':''">
                                                                <v-list-item-icon>
                                                                    <v-icon>mdi-account-circle</v-icon>
                                                                </v-list-item-icon>
                                                                <v-list-item-content>
                                                                    <v-list-item-title> Profile</v-list-item-title>
                                                                </v-list-item-content>
                                                            </v-list-item>
                                                        </inertia-link>
                                                        <inertia-link :href="route('api-tokens.index')"
                                                                      v-if="$page.jetstream.hasApiFeatures">
                                                            <v-list-item
                                                                :dark="route().current('api-tokens.index')"
                                                                :class="route().current('api-tokens.index')?'active primary  white&#45;&#45;text':''"
                                                            >
                                                                <v-list-item-icon>
                                                                    <v-icon>mdi-lan</v-icon>
                                                                </v-list-item-icon>
                                                                <v-list-item-content>
                                                                    <v-list-item-title> API Tokens</v-list-item-title>
                                                                </v-list-item-content>
                                                            </v-list-item>
                                                        </inertia-link>
                                                        <v-subheader>Manage Team</v-subheader>
                                                        <inertia-link :href="route('teams.show', $page.user.current_team)">
                                                            <v-list-item
                                                                :dark="route().current('teams.show')"
                                                                :class="route().current('teams.show')?'active primary  white&#45;&#45;text':''"
                                                            >
                                                                <v-list-item-icon>
                                                                    <v-icon>mdi-account-group</v-icon>
                                                                </v-list-item-icon>
                                                                <v-list-item-content>
                                                                    <v-list-item-title> Team Settings</v-list-item-title>
                                                                </v-list-item-content>
                                                            </v-list-item>
                                                        </inertia-link>

                                                        <inertia-link :href="route('teams.create')">
                                                            <v-list-item
                                                                :dark="route().current('teams.create')"
                                                                :class="route().current('teams.create')?'active primary  white&#45;&#45;text':''"
                                                            >
                                                                <v-list-item-icon>
                                                                    <v-icon>mdi-account-multiple-plus</v-icon>
                                                                </v-list-item-icon>
                                                                <v-list-item-content>
                                                                    <v-list-item-title>Create New Team</v-list-item-title>
                                                                </v-list-item-content>
                                                            </v-list-item>
                                                        </inertia-link>
                                                    </v-list-item-group>
                                                </v-list>

                                                <div v-if="$page.user!==null" class="pt-4 pb-1 border-t border-gray-200">

                                                    <div class="mt-3 space-y-1">

                                                        &lt;!&ndash; Team Management &ndash;&gt;
                                                        <template v-if="$page.jetstream.hasTeamFeatures">

                                                            &lt;!&ndash; Team Switcher &ndash;&gt;
                                                            <div class="block px-4 py-2 text-xs text-gray-400">
                                                                Switch Teams
                                                            </div>

                                                            <template v-for="team in $page.user.all_teams">
                                                                <form @submit.prevent="switchToTeam(team)" :key="team.id">
                                                                    <jet-responsive-nav-link as="button">
                                                                        <div class="flex items-center">
                                                                            <svg v-if="team.id == $page.user.current_team_id"
                                                                                 class="mr-2 h-5 w-5 text-green-400" fill="none"
                                                                                 stroke-linecap="round" stroke-linejoin="round" stroke-width="2"
                                                                                 stroke="currentColor" viewBox="0 0 24 24">
                                                                                <path d="M9 12l2 2 4-4m6 2a9 9 0 11-18 0 9 9 0 0118 0z"></path>
                                                                            </svg>
                                                                            <div>{{ team.name }}</div>
                                                                        </div>
                                                                    </jet-responsive-nav-link>
                                                                </form>
                                                            </template>
                                                        </template>
                                                    </div>
                                                </div>
                        -->

                        <template v-if="$page.user!==null">
                            <v-list dense>
                                <v-list-item-group
                                    color="primary"
                                >
                                    <v-list-item v-for="item in opciones"
                                                 :key="item.title" color="primary" link>
                                        <v-list-item-icon>
                                            <v-icon>{{ item.icon }}</v-icon>
                                        </v-list-item-icon>

                                        <v-list-item-content>
                                            <v-list-item-title>{{ item.title }}</v-list-item-title>
                                        </v-list-item-content>
                                    </v-list-item>
                                </v-list-item-group>
                            </v-list>

                            <v-divider></v-divider>
                            <v-btn v-if="businesses.length==0" class="my-2" color="primary" block>
                                crear un nuevo comercio
                            </v-btn>

                            <div v-else class="text-center">
                                <v-dialog
                                    v-model="dialog"
                                    width="500"
                                >
                                    <template v-slot:activator="{ on, attrs }">
                                        <v-btn
                                            class="my-2" color="primary" block
                                            v-bind="attrs"
                                            v-on="on"
                                        >
                                            Mi tienda
                                        </v-btn>
                                    </template>

                                    <v-card>

                                        <v-card-title class="text-center">

                                            Tiendas disponibles

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

                                                <v-list-item link v-for="business in businesses"
                                                             :key="business.id">
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

                                                    <v-list-item-action class="mx-0">
                                                        <inertia-link
                                                            :href="`/business/${business.id}/look`"
                                                        >
                                                            <v-btn icon small>
                                                                <v-icon color="lighten-1">mdi-eye</v-icon>
                                                            </v-btn>
                                                        </inertia-link>
                                                    </v-list-item-action>

                                                    <v-list-item-action class="mx-0">
                                                        <inertia-link
                                                            href="/business"
                                                        >
                                                            <v-btn icon small>
                                                                <v-icon color="lighten-1">
                                                                    mdi-cog
                                                                </v-icon>
                                                            </v-btn>
                                                        </inertia-link>
                                                    </v-list-item-action>

                                                    <v-list-item-action class="mx-0">
                                                        <inertia-link
                                                            :href="route('business.products',business.id)"
                                                        >
                                                            <v-btn icon small @click="setIdBusiness(business.id)">
                                                                <v-icon color="lighten-1">
                                                                    mdi-dots-horizontal-circle
                                                                </v-icon>
                                                            </v-btn>
                                                        </inertia-link>
                                                    </v-list-item-action>

                                                </v-list-item>

                                            </v-list>
                                        </v-card-text>

                                        <v-divider></v-divider>

                                        <v-card-actions class=" d-flex justify-center text-center">
                                            <p class="primary--text">
                                                Seleccionar una tienda
                                            </p>
                                        </v-card-actions>
                                    </v-card>
                                </v-dialog>
                            </div>

                            <v-divider></v-divider>
                            <v-list dense>
                                <v-list-item-group
                                    color="primary"
                                >
                                    <v-list-item color="primary" link>
                                        <v-list-item-icon>
                                            <v-icon>mdi-android-messages</v-icon>
                                        </v-list-item-icon>

                                        <v-list-item-content>
                                            <v-list-item-title>Sugerencias</v-list-item-title>
                                        </v-list-item-content>
                                    </v-list-item>
                                    <v-list-item color="primary" @click="logout" link>
                                        <v-list-item-icon>
                                            <v-icon>mdi-logout</v-icon>
                                        </v-list-item-icon>

                                        <v-list-item-content>
                                            <v-list-item-title>Cerrar sesion</v-list-item-title>
                                        </v-list-item-content>
                                    </v-list-item>

                                </v-list-item-group>
                            </v-list>
                        </template>

                    </v-card>
                </v-menu>
            </div>

            <!--Button login and register-->

            <!--            <template v-if="$page.user==null">
                            <a :href="route('login')">
                                <v-btn v-if="$vuetify.breakpoint.mdAndUp" outlined
                                       class="mx-1"
                                       color="primary">
                                    Sign In
                                </v-btn>
                                <v-tooltip v-else bottom>
                                    <template v-slot:activator="{ on, attrs }">
                                        <v-btn small text fab
                                               class="mx-1"
                                               color="primary"
                                               v-bind="attrs"
                                               v-on="on">
                                            <v-icon>
                                                mdi-account-key
                                            </v-icon>
                                        </v-btn>
                                    </template>
                                    <span>Sign In</span>
                                </v-tooltip>
                            </a>
                            <a :href="route('register')">
                                <v-btn v-if="$vuetify.breakpoint.mdAndUp"
                                       class="mx-1"
                                       color="primary">
                                    Sign Up
                                </v-btn>
                                <v-tooltip v-else bottom>
                                    <template v-slot:activator="{ on, attrs }">
                                        <v-btn small text fab
                                               color="primary"
                                               v-bind="attrs"
                                               v-on="on">
                                            <v-icon>
                                                mdi-account-plus
                                            </v-icon>
                                        </v-btn>
                                    </template>
                                    <span>Sign Up</span>
                                </v-tooltip>
                            </a>
                        </template>-->


            <div class="text-center" v-if="$page.user==null">
                <v-menu
                    v-model="menu"
                    :close-on-content-click="false"
                    :nudge-width="200"
                    offset-y
                >
                    <template v-slot:activator="{ on, attrs }">
                        <v-card
                            v-bind="attrs"
                            v-on="on"
                            tile flat tile class="ml-2">
                            <v-icon size="70">
                                mdi-menu
                            </v-icon>
                        </v-card>
                    </template>

                    <v-card>
                        <v-list>
                            <template v-if="$page.user==null">
                                <v-subheader>Authentication</v-subheader>
                                <v-divider></v-divider>
                                <v-list-item
                                    v-for="item in items"
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

            <v-card v-if="$vuetify.breakpoint.smAndDown" tile flat tile class="ml-2"
                    @click="drawer?setDrawer(false):setDrawer(true)">
                <v-icon size="70">
                    mdi-menu
                </v-icon>
            </v-card>
            <!--            <template v-if="!$vuetify.breakpoint.smAndDown" v-slot:extension>
                            <div align-with-title class="d-flex py-0 my-0 mb-n1">
                                <inertia-link :href="route(item.route)" v-for="item in links" :key="item.id">
                                    <v-btn text large class="rounded-0 grey&#45;&#45;text "
                                           :class="route().current(item.route)?'active primary&#45;&#45;text ':''">
                                        {{ item.title }}
                                    </v-btn>
                                </inertia-link>
                            </div>

                        </template>-->
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

export default {

    name: "Header",
    components: {
        JetApplicationMark,
        JetDropdown,
        JetDropdownLink,
        JetNavLink,
        JetResponsiveNavLink,
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

        axios
            .get(`/business/user/all`)
            .then(response => {
                this.businesses = response.data;
            })
            .catch(error => {
                console.log(error);
            });
    },
    data: () => ({

        fav: true,
        menu: false,
        dialog: false,
        message: false,
        hints: true,
        fab: false,
        logo: logo,
        department: [],
        businesses: [],
        items: [
            {title: 'Login', icon: 'mdi-account-lock', route: "/login"},
            {title: 'Sign Up', icon: 'mdi-account-plus', route: "/register"},
        ],
        opciones: [
            {title: "Notificaciones", icon: 'mdi-bell', route: ""},
            {title: "Seguidos", icon: 'mdi-account-group', route: ""},
            {title: "Favoritos", icon: 'mdi-heart', route: ""},
            {title: "Ubicación", icon: 'mdi-map-marker', route: ""},
            {title: "Ajustes", icon: 'mdi-cog', route: ""},
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
        }
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
</style>

