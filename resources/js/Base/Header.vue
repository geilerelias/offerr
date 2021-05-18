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
        <v-app-bar absolute :class="$vuetify.breakpoint.mdAndUp?'px-200':'px-6'" color="white"
                   :style="$vuetify.breakpoint.smAndUp?'margin-top: 30px':''">
            <inertia-link
                href="/"
                class="d-flex align-center text-decoration-none mr-2">
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

            <v-btn :small="$vuetify.breakpoint.smAndDown" :large="!$vuetify.breakpoint.smAndDown" text
                   class="mx-1 d-none d-sm-inline-block" :fab="$vuetify.breakpoint.smAndDown"
                   @click="route('login')"
                   color="primary">
                   <span v-if="$vuetify.breakpoint.smAndDown">
                       <v-icon>
                            mdi-login
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
                            mdi-logout
                        </v-icon>
                    </span>
                    <span v-else>
                        Sign Up
                    </span>
            </v-btn>

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
        <div class="d-flex justify-center">
            <v-text-field filled
                          rounded
                          hide-details
                          dense
                          placeholder="Search"
                          prepend-inner-icon="mdi-magnify"
                          class="hidden-sm-and-up mx-2"
                          style="max-width:400px ;margin-top: 70px!important;">

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

export default {

    name: "Header",
    data: () => ({
        fab: false,
        logo: logo,
        links: [
            {title: "Home", icon: 'mdi-home-city', route: "home"},
            {title: "Marketplace", icon: 'mdi-shopping', route: "marketplace"},
            {title: "Product", icon: 'mdi-cart', route: "product"},
            {title: "Company", icon: 'mdi-domain', route: "company"},
        ],
    }),
    computed: {
        ...mapState(["drawer", "page", "color", "flat"]),
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
        }
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

