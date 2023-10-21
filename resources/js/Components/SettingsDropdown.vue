<template>

    <div v-if="$page.user!==null" class="text-center hidden-xs-only">
        <v-menu
            :close-on-content-click="false"
            offset-y
        >
            <template v-slot:activator="{ on, attrs }">
                <v-btn icon
                       v-bind="attrs"
                       x-large
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
                            <v-img :alt="$page.user.name" :src="$page.user.profile_photo_url" class="rounded-circle"
                                   cover
                                   style="max-height: 48px;max-width: 48px"></v-img>
                        </v-avatar>
                    </v-avatar>
                </v-btn>
            </template>

            <v-card>
                <v-list>
                    <v-list-item>
                        <v-list-item-avatar v-if="$page.jetstream.managesProfilePhotos">
                            <img
                                :alt="$page.user.name"
                                :src="$page.user.profile_photo_url"
                            >
                        </v-list-item-avatar>

                        <v-list-item-content>
                            <v-list-item-title>{{ $page.user.name }}</v-list-item-title>
                            <v-list-item-subtitle>{{ $page.user.email }}</v-list-item-subtitle>
                        </v-list-item-content>
                    </v-list-item>
                </v-list>

                <v-divider></v-divider>

                <template v-if="$page.user!==null">
                    <v-list dense>

                        <v-list-item-group

                            color="primary"
                        >
                            <v-list-item @click="redirectTo('/')">
                                <v-list-item-icon>
                                    <v-icon>mdi-home</v-icon>
                                </v-list-item-icon>

                                <v-list-item-content>
                                    <v-list-item-title>Inicio</v-list-item-title>
                                </v-list-item-content>
                            </v-list-item>
                            <v-list-item v-for="(item, n) in opciones" v-if="businesses.length!==0"
                                         :key="`${n}-${item.title}`"
                                         color="primary" link @click="assignRoute(item.route)">
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
                        <v-btn v-if="businesses.length==0" block color="primary" @click="crearComercio">
                            crear un nuevo comercio
                        </v-btn>
                        <v-btn v-else block color="primary" @click="dialog=!dialog">
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
                            <v-list-item color="primary" link @click="logout">
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
                        <v-list-item v-if="businesses.length===0">
                            <p class="warning--text">
                                no hay tiendas disponibles, primero debes crear una tienda
                            </p>
                        </v-list-item>
                        <v-list-item v-for="business in businesses" v-else :key="business.id"
                                     link>
                            <v-list-item-avatar>
                                <v-img
                                    :src="`/storage/${business.business_path_profile_image}`"
                                    alt=""/>
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

export default {
    name: "SettingsDropdown",
    data: () => ({
        business_id: '',
        businesses: [],
        ruta: '',
        dialog: false,
        opciones: [
            {title: "Notificaciones", icon: 'mdi-bell', route: "business.notifications"},
            {title: 'Seguidores', icon: 'mdi-human-capacity-decrease', route: 'business.followers'},
            {title: "Seguidos", icon: 'mdi-human-capacity-increase', route: "business.followed"},
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
            this.$inertia.get(this.route(this.ruta, id))
        },
        logout() {
            axios.post(route('logout').url())
                .then(response => {
                    window.location = '/';
                })
        },
        crearComercio() {
            this.$inertia.get('/business')
        },
        redirectTo(route) {
            this.$inertia.get(route)
        }
    }
}
</script>

<style scoped>

</style>
