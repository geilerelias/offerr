<template>
    <!--    <v-navigation-drawer v-model="localDrawer" app temporary>
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
                <v-list-item-group
                    v-model="group"
                    active-class="primary text&#45;&#45;accent-4"
                >
                    <inertia-link v-for="item in links"
                                  :key="item.title"
                                  :href="route(item.route)">
                        <v-list-item
                            :dark="route().current(item.route)"
                            :class="route().current(item.route)?'active primary  white&#45;&#45;text':''"
                        >
                            <v-list-item-icon>
                                <v-icon>{{ item.icon }}</v-icon>
                            </v-list-item-icon>

                            <v-list-item-content>
                                <v-list-item-title>{{ item.title }}</v-list-item-title>
                            </v-list-item-content>
                        </v-list-item>
                    </inertia-link>

                    <template v-if="$page.user==null">

                        <v-divider></v-divider>
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

                    </template>

                    &lt;!&ndash; Responsive Settings Options &ndash;&gt;
                    <template v-if="$page.user!==null" dense>


                        <inertia-link v-for="item in linksWithAuth" :key="item.id"
                                      :href="route(item.route)">
                            <v-list-item
                                :dark="route().current(item.route)"
                                :class="route().current(item.route)?'active primary  white&#45;&#45;text':''"
                            >
                                <v-list-item-icon>
                                    <v-icon v-text="item.icon"></v-icon>
                                </v-list-item-icon>

                                <v-list-item-content>
                                    <v-list-item-title v-text="item.title"></v-list-item-title>
                                </v-list-item-content>
                            </v-list-item>
                        </inertia-link>

                        <v-divider></v-divider>
                        <v-subheader>Settings Options</v-subheader>

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

                        <v-subheader>Authentication</v-subheader>

                        <v-list-item @click="logout">
                            <v-list-item-icon>
                                <v-icon>mdi-logout</v-icon>
                            </v-list-item-icon>
                            <v-list-item-content>
                                <v-list-item-title> Logout</v-list-item-title>
                            </v-list-item-content>
                        </v-list-item>


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
                    </template>
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

        </v-navigation-drawer>-->
    <v-dialog
        v-model="localDrawer"
        fullscreen
        hide-overlay
        transition="dialog-top-transition"
        scrollable
    >
        <v-card tile>
            <v-toolbar
                flat
                light
                style="max-height: 60px !important;"
                class="h-10"
                color="transparent"
            >
                <v-btn
                    icon
                    light
                    @click="localDrawer = false"
                >
                    <v-icon>mdi-close</v-icon>
                </v-btn>
                <inertia-link
                    href="/"
                    class="d-flex align-start text-decoration-none">
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
                <v-menu
                    bottom
                    right
                    offset-y
                >
                    <template v-slot:activator="{ on, attrs }">
                        <v-btn
                            light
                            icon
                            v-bind="attrs"
                            v-on="on"
                        >
                            <v-icon>mdi-dots-vertical</v-icon>
                        </v-btn>
                    </template>
                    <v-list>
                        <v-list-item
                            v-for="(item, i) in items"
                            :key="i"
                            @click="() => {}"
                        >
                            <v-list-item-title>{{ item.title }}</v-list-item-title>
                        </v-list-item>
                    </v-list>
                </v-menu>
            </v-toolbar>
            <v-divider></v-divider>
            <v-card-text>
                <!--                <template v-if="$page.user!==null">
                                    <v-list-item two-line>
                                        <v-list-item-avatar style="border: solid 1px black">
                                            <img :src="$page.user.profile_photo_url"
                                                 :alt="$page.user.name">
                                        </v-list-item-avatar>

                                        <v-list-item-content>
                                            <v-list-item-title>{{ $page.user.name }}</v-list-item-title>
                                            <v-list-item-subtitle>{{ $page.user.email }}</v-list-item-subtitle>
                                        </v-list-item-content>
                                    </v-list-item>
                                    <v-divider></v-divider>
                                </template>-->

                <template v-if="$page.user!==null">
                    <div class="text-center">
                        <v-list>
                            <v-list-item class=" d-flex justify-center text-center">
                                <v-list-item-avatar size="150" style="border:solid 1px black">
                                    <img :src="$page.user.profile_photo_url"
                                         :alt="$page.user.name">
                                </v-list-item-avatar>
                            </v-list-item>

                            <v-list-item>
                                <v-list-item-content>
                                    <v-list-item-title class="text-h6">
                                        {{ $page.user.name }}
                                    </v-list-item-title>
                                    <v-list-item-subtitle>
                                        {{ $page.user.email }}
                                    </v-list-item-subtitle>
                                </v-list-item-content>
                            </v-list-item>
                        </v-list>
                    </div>
                    <v-divider></v-divider>
                </template>

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

                <v-divider></v-divider>
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
                                        <inertia-link @click="localDrawer = false"
                                                      :href="`/business/${business.id}/look`"
                                                      v-for="business in businesses"
                                                      :key="business.id">
                                            <v-list-item link>
                                                <v-list-item-avatar>
                                                    <img :src="`/storage/${business.business_path_profile_image}`"
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
                                        </inertia-link>
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

                <!-- menu anterior-->
                <!--                <v-list dense>
                                    <v-list-item-group
                                        v-model="group"
                                        active-class="primary text&#45;&#45;accent-4"
                                    >
                                        <inertia-link v-for="item in links"
                                                      :key="item.title"
                                                      :href="route(item.route)">
                                            <v-list-item
                                                :dark="route().current(item.route)"
                                                :class="route().current(item.route)?'active primary  white&#45;&#45;text':''"
                                            >
                                                <v-list-item-icon>
                                                    <v-icon>{{ item.icon }}</v-icon>
                                                </v-list-item-icon>

                                                <v-list-item-content>
                                                    <v-list-item-title>{{ item.title }}</v-list-item-title>
                                                </v-list-item-content>
                                            </v-list-item>
                                        </inertia-link>


                                        &lt;!&ndash;Responsive Settings Options &ndash;&gt;
                                        <template v-if="$page.user!==null" dense>


                                            <inertia-link v-for="item in linksWithAuth" :key="item.id"
                                                          :href="route(item.route)">
                                                <v-list-item
                                                    :dark="route().current(item.route)"
                                                    :class="route().current(item.route)?'active primary  white&#45;&#45;text':''"
                                                >
                                                    <v-list-item-icon>
                                                        <v-icon v-text="item.icon"></v-icon>
                                                    </v-list-item-icon>

                                                    <v-list-item-content>
                                                        <v-list-item-title v-text="item.title"></v-list-item-title>
                                                    </v-list-item-content>
                                                </v-list-item>
                                            </inertia-link>

                                            <v-divider></v-divider>
                                            <v-subheader>Settings Options</v-subheader>

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

                                            <v-subheader>Authentication</v-subheader>

                                            <v-list-item @click="logout">
                                                <v-list-item-icon>
                                                    <v-icon>mdi-logout</v-icon>
                                                </v-list-item-icon>
                                                <v-list-item-content>
                                                    <v-list-item-title> Logout</v-list-item-title>
                                                </v-list-item-content>
                                            </v-list-item>


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
                                        </template>
                                    </v-list-item-group>
                                </v-list>

                                <div v-if="$page.user!==null" class="pt-4 pb-1 border-t border-gray-200">

                                    <div class="mt-3 space-y-1">

                                        &lt;!&ndash;Team Management &ndash;&gt;
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
                                </div>-->

                <template v-if="$page.user==null">

                    <v-divider></v-divider>
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

                </template>
            </v-card-text>

            <div style="flex: 1 1 auto;"></div>

        </v-card>
    </v-dialog>
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
        dialog: false,
        group: null,
        logo: logo,
        opciones: [
            {title: "Notificaciones", icon: 'mdi-bell', route: ""},
            {title: "Seguidos", icon: 'mdi-account-group', route: ""},
            {title: "Favoritos", icon: 'mdi-heart', route: ""},
            {title: "Ubicación", icon: 'mdi-map-marker', route: ""},
            {title: "Ajustes", icon: 'mdi-cog', route: ""},
        ],
        items: [
            {title: 'Login', icon: 'mdi-account-lock', route: "/login"},
            {title: 'Sign Up', icon: 'mdi-account-plus', route: "/register"},
        ],
        businesses: [],
        right: null,
        notifications: false,
        sound: true,
        widgets: false,
        select: [
            {text: 'State 1'},
            {text: 'State 2'},
            {text: 'State 3'},
            {text: 'State 4'},
            {text: 'State 5'},
            {text: 'State 6'},
            {text: 'State 7'},
        ],
    }),
    created() {
        axios
            .get(`/business/user/all`)
            .then(response => {
                this.businesses = response.data;
            })
            .catch(error => {
                console.log(error);
            });
    },
    watch: {
        group() {
            this.drawer ? this.setDrawer(false) : this.setDrawer(true);
        },
    },
    computed: {
        ...mapState(["drawer", "page", "color", "flat", "links", "linksWithAuth"]),
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
