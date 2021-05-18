<template>
    <v-navigation-drawer v-model="localDrawer" app temporary>
        <div class="d-flex pa-2 align-center">
            <v-img contain :src="logo" alt="logo"></v-img>
        </div>
        <template v-slot:prepend>
            <v-list-item two-line>
                <v-list-item-avatar>
                    <img src="https://randomuser.me/api/portraits/women/81.jpg">
                </v-list-item-avatar>

                <v-list-item-content>
                    <v-list-item-title>Jane Smith</v-list-item-title>
                    <v-list-item-subtitle>Logged In</v-list-item-subtitle>
                </v-list-item-content>
            </v-list-item>
        </template>
        <v-divider></v-divider>
        <v-list dense>
            <inertia-link v-for="item in links"
                          :key="item.title"
                          :href="route(item.route)">
                <v-list-item
                    :dark="route().current(item.route)"
                    :class="route().current(item.route)?'active primary white--text':''"
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
        <v-divider></v-divider>

        <v-list dense>
            <v-list-item
                v-for="item in items"
                :key="item.title"
            >
                <v-list-item-icon>
                    <v-icon>{{ item.icon }}</v-icon>
                </v-list-item-icon>

                <v-list-item-content>
                    <v-list-item-title>{{ item.title }}</v-list-item-title>
                </v-list-item-content>
            </v-list-item>
        </v-list>
    </v-navigation-drawer>
</template>

<script>
import {mapMutations, mapState} from "vuex";
import logo from '../../images/logo.jpg';

export default {
    name: "Drawer",
    data: () => ({
        logo: logo,
        items: [
            {title: 'My Account', icon: 'mdi-account'},
            {title: 'Users', icon: 'mdi-account-group-outline'},
        ],
        links: [
            {title: "Home", icon: 'mdi-home-city', route: "home"},
            {title: "Marketplace", icon: 'mdi-shopping', route: "marketplace"},
            {title: "Product", icon: 'mdi-cart', route: "product"},
            {title: "Company", icon: 'mdi-domain', route: "company"},
        ],
        right: null,
    }),
    computed: {
        ...mapState(["drawer", "page", "color", "flat"]),
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
    }
}
</script>

<style scoped>

</style>
