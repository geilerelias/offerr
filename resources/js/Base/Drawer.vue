<template>
    <v-navigation-drawer v-model="localDrawer" app temporary>
        <template v-if="$page.user!==null" v-slot:prepend>
            <v-list-item two-line>
                <v-list-item-avatar>
                    <img :src="$page.user.profile_photo_url"
                         :alt="$page.user.name">
                </v-list-item-avatar>

                <v-list-item-content>
                    <v-list-item-title>{{ $page.user.name }}</v-list-item-title>
                    <v-list-item-subtitle>{{ $page.user.email }}</v-list-item-subtitle>
                </v-list-item-content>
            </v-list-item>
            <v-divider></v-divider>
        </template>

        <div class="d-flex pa-2 align-center">
            <v-img contain :src="logo" alt="logo"></v-img>
        </div>
        <v-divider></v-divider>
        <v-list dense>
            <inertia-link v-for="item in links"
                          :key="item.title"
                          :href="route(item.route)">
                <v-list-item
                    :dark="route().current(item.route)"
                    :class="route().current(item.route)?'active primary  white--text':''"
                >
                    <v-list-item-icon>
                        <v-icon>{{ item.icon }}</v-icon>
                    </v-list-item-icon>

                    <v-list-item-content>
                        <v-list-item-title>{{ item.title }}</v-list-item-title>
                    </v-list-item-content>
                </v-list-item>
            </inertia-link>
        </v-list>
        <template v-if="$page.user==null">
            <v-divider></v-divider>

            <v-list dense>
                <v-subheader>Authentication</v-subheader>
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
            </v-list>
        </template>

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
            </v-list-item-group>
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

    </v-navigation-drawer>
</template>

<script>
import {mapMutations, mapState} from "vuex";
import logo from '../../images/logo.jpg';

import JetApplicationMark from '@/Jetstream/ApplicationMark'
import JetDropdown from '@/Jetstream/Dropdown'
import JetDropdownLink from '@/Jetstream/DropdownLink'
import JetNavLink from '@/Jetstream/NavLink'
import JetResponsiveNavLink from '@/Jetstream/ResponsiveNavLink'

export default {
    name: "Drawer",
    components: {
        JetApplicationMark,
        JetDropdown,
        JetDropdownLink,
        JetNavLink,
        JetResponsiveNavLink,
    },
    data: () => ({
        logo: logo,
        items: [
            {title: 'Login', icon: 'mdi-account-lock', route: "login"},
            {title: 'Sign Up', icon: 'mdi-account-plus', route: "register"},
        ],

        right: null,
    }),
    computed: {
        ...mapState(["drawer", "page", "color", "flat","links"]),
        localDrawer: {
            get() {
                return this.drawer;
            },
            set(val) {
                this.setDrawer(val);
            }
        }
    },
    methods: {
        ...mapMutations([
            "setDrawer",
            "setPage",
            "setColor",
            "setFlat",
            "setPagePrincipal"
        ]),

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

</style>
