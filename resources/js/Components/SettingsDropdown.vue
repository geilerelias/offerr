<template>
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
                <v-btn icon
                       x-large
                       v-bind="attrs"
                       v-on="on"
                >
                    <v-avatar
                        color="primary"
                        size="50"
                    >
                        <v-avatar
                            color="secondary"
                            size="48"
                        >
                            <v-img style="max-height: 48px;max-width: 48px" class="rounded-circle" cover
                                   :src="$page.user.profile_photo_url"
                                   :alt="$page.user.name"></v-img>
                        </v-avatar>
                    </v-avatar>
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
                            <v-list-item @click="assignRoute(item.route)" v-for="(item, n) in opciones"
                                         :key="`${n}-${item.title}`" color="primary" link>
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
                    <div class="text-center pa-2">
                        <v-btn v-if="businesses.length==0" color="primary" block>
                            crear un nuevo comercio
                        </v-btn>
                        <v-btn v-else color="primary" block @click="dialog=!dialog">
                            Mis comercios
                        </v-btn>
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
        <v-dialog
            v-model="dialog"
            width="500"
        >
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
                                     :key="business.id" >
                            <v-list-item-avatar>
                                <img
                                    :src="`/storage/${business.business_path_profile_image}`"
                                    alt="">
                            </v-list-item-avatar>

                            <v-list-item-content @click="redirectRoute(business.id)">
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
</template>

<script>
import {mapMutations, mapState} from "vuex";
import colombiaJson from "../../assets/colombia.json";

export default {
    name: "SettingsDropdown",
    data: () => ({
        business_id: '',
        businesses: [],
        ruta: '',
        dialog: false,
        opciones: [
            {title: "Notificaciones", icon: 'mdi-bell', route: "business.notifications"},
            {title: "Seguidos", icon: 'mdi-account-group', route: "business.orders"},
            {title: "Seguidores", icon: 'mdi-account-group', route: "business.followed"},
            {title: "Favoritos", icon: 'mdi-heart', route: "business.favorites"},
            {title: "Ubicación", icon: 'mdi-map-marker', route: "business.location"},
            {title: "Ajustes", icon: 'mdi-cog', route: "profile.show"},
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
    computed: {
        ...mapState(["idBusiness"]),

    },
    methods: {
        ...mapMutations(["setIdBusiness"]),
        assignRoute(ruta) {
            this.ruta = ruta;
            console.log(ruta)
            this.dialog = true;
        },
        redirectRoute(id) {
            this.setIdBusiness(id);
            this.$inertia.get(route(this.ruta, id))
        },
        logout() {
            axios.post(route('logout').url())
                .then(response => {
                    window.location = '/';
                })
        },
    }
}
</script>

<style scoped>

</style>
