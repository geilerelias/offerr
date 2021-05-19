<template>
    <div>
        <v-system-bar absolute v-if="$vuetify.breakpoint.smAndUp" :class="$vuetify.breakpoint.mdAndUp?'px-200':'px-6'"
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

        </v-system-bar>
        <v-app-bar :absolute="!$vuetify.breakpoint.xsOnly" :app="$vuetify.breakpoint.xsOnly"
                   :class="$vuetify.breakpoint.mdAndUp?'px-200':'px-6'" color="white"
                   :style="$vuetify.breakpoint.smAndUp?'margin-top: 30px':''">
            <inertia-link
                href="/"
                class="d-flex align-center text-decoration-none">
                <v-card flat max-width="110" color="transparent">
                    <v-img
                        style="max-height:48px"
                        :spect-ratio="5/4"
                        contain
                        :src="logo"
                    />
                </v-card>
            </inertia-link>

            <v-spacer></v-spacer>

            <v-responsive>
                <v-text-field filled
                              rounded
                              hide-details
                              dense
                              placeholder="Search"
                              prepend-inner-icon="mdi-magnify"
                              :class="{'d-none':!search}"
                              class="hidden-xs-only mx-2"
                              style="max-width:400px">

                </v-text-field>
            </v-responsive>
            <!--            <v-badge
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

            <!-- Settings Dropdown -->
            <div class="text-center hidden-xs-only">
                <v-menu
                    v-model="menu"
                    :close-on-content-click="false"
                    :nudge-width="200"
                >
                    <template v-slot:activator="{ on, attrs }">
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
                        <v-list v-if="$page.user!==null" dense>
                            <v-subheader>Settings Options</v-subheader>
                            <v-list-item-group
                                color="primary"
                            >
                                <inertia-link :href="route('profile.show')">
                                    <v-list-item
                                        :dark="route().current('profile.show')"
                                        :class="route().current('profile.show')?'active primary  white--text':''">
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
                                        :class="route().current('api-tokens.index')?'active primary  white--text':''"
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
                                        :class="route().current('teams.show')?'active primary  white--text':''"
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
                                        :class="route().current('teams.create')?'active primary  white--text':''"
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

                                <!-- Team Management -->
                                <template v-if="$page.jetstream.hasTeamFeatures">

                                    <!-- Team Switcher -->
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

                        <v-subheader>Authentication</v-subheader>
                        <v-list-item-group color="primary">
                            <v-list-item @click="logout">
                                <v-list-item-icon>
                                    <v-icon>mdi-logout</v-icon>
                                </v-list-item-icon>
                                <v-list-item-content>
                                    <v-list-item-title> Logout</v-list-item-title>
                                </v-list-item-content>
                            </v-list-item>
                        </v-list-item-group>
                    </v-card>
                </v-menu>
            </div>

            <!--Button login and register-->
            <template v-if="$page.user==null">
                <v-btn :small="$vuetify.breakpoint.smAndDown" :large="!$vuetify.breakpoint.smAndDown" text
                       class="mx-1 d-none d-sm-inline-block" :fab="$vuetify.breakpoint.smAndDown"
                       @click="route('login')"
                       color="primary">
                   <span v-if="$vuetify.breakpoint.smAndDown">
                       <v-icon>
                            mdi-account-lock
                        </v-icon>
                   </span>
                    <span v-else>
                        Sign In
                    </span>
                </v-btn>


                <v-btn :small="$vuetify.breakpoint.smAndDown" :large="!$vuetify.breakpoint.smAndDown"
                       class="d-none d-sm-inline-block" :fab="$vuetify.breakpoint.smAndDown"
                       @click="route('register')"
                       color="primary">
                    <span v-if="$vuetify.breakpoint.smAndDown">
                       <v-icon>
                            mdi-account-plus
                        </v-icon>
                    </span>
                    <span v-else>
                        Sign Up
                    </span>
                </v-btn>
            </template>

            <v-app-bar-nav-icon class="hidden-md-and-up"
                                @click="drawer ? setDrawer(false) : setDrawer(true)">
            </v-app-bar-nav-icon>

            <template v-if="!$vuetify.breakpoint.smAndDown" v-slot:extension>
                <div align-with-title class="d-flex py-0 my-0 mb-n1">
                    <inertia-link :href="route(item.route)" v-for="item in links" :key="item.id">
                        <v-btn text large class="rounded-0 grey--text "
                               :class="route().current(item.route)?'active primary--text ':''">
                            {{ item.title }}
                        </v-btn>
                    </inertia-link>
                </div>

            </template>
        </v-app-bar>

        <div class="d-flex justify-center mt-6">
            <v-text-field filled
                          rounded
                          hide-details
                          dense
                          placeholder="Search"
                          prepend-inner-icon="mdi-magnify"
                          class="hidden-sm-and-up mx-2"
                          :class="{'d-none':!search}"
                          style="max-width:400px ;margin-top: 60px!important;">
            </v-text-field>
        </div>
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
import logo from '../../images/Logo_offerr_original.png';

import {mapMutations, mapState} from "vuex";

import JetApplicationMark from '@/Jetstream/ApplicationMark'
import JetDropdown from '@/Jetstream/Dropdown'
import JetDropdownLink from '@/Jetstream/DropdownLink'
import JetNavLink from '@/Jetstream/NavLink'
import JetResponsiveNavLink from '@/Jetstream/ResponsiveNavLink'

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
        search: {
            type: Boolean,
            default: true
        },
    },
    data: () => ({
        fav: true,
        menu: false,
        message: false,
        hints: true,
        fab: false,
        logo: logo,

    }),
    computed: {
        ...mapState(["drawer", "page", "color", "flat", "links"]),
    },
    methods: {
        ...mapMutations([
            "setDrawer",
            "setPage",
            "setColor",
            "setFlat",
            "setPagePrincipal"
        ]),
        toTop() {
            this.$vuetify.goTo(0);
        },
        onScroll(e) {
            console.log("ejecuto onScroll");

            if (typeof window === "undefined") return;
            const top = window.pageYOffset || e.target.scrollTop || 0;
            if (top > 50) {
                this.fab = true;
                this.setFlat(false);
            } else {
                this.fab = false;
                this.setFlat(true);
            }
        },
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
    }
}
</script>

<style>
.active {
    border-bottom: solid;
}

.px-200 {
    padding-left: 200px !important;
    padding-right: 200px !important;
}
</style>

