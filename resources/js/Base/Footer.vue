<template>
    <section class="footer">
        <v-footer class="mx-auto" color="white" elevation="24">
            <v-container>
                <v-row>
                    <v-col class="col-md-4 col-12">
                        <div>
                            <div class="d-flex align-center mb-4">
                                <a
                                    class="d-flex align-center text-decoration-none mr-2"
                                    href="/">
                                    <v-card flat max-width="110">
                                        <v-img
                                            :spect-ratio="5/4"
                                            :src="logo"
                                            contain
                                            style="max-height:48px"
                                        />
                                    </v-card>
                                </a>
                            </div>
                            <h3 class="text-body-1 font-weight-regular mb-4 secondary--text text-uppercase">
                                Comercio electrónico
                            </h3>
                            <p class="text-body-1 grey--text mt-4 mb-6 pr-6">
                                Descubre un mundo de posibilidades en línea para comprar y vender productos y servicios.
                                Encuentra todo lo que necesitas en un solo lugar y aprovecha la comodidad del comercio
                                electrónico para satisfacer tus necesidades.
                            </p>

                            <inertia-link href="/marketplace">
                                <v-btn class="py-5 primary">
                                    Comprar ahora
                                </v-btn>
                            </inertia-link>
                        </div>
                    </v-col>
                    <v-col class="col-md-4 col-12">
                        <div class="container pa-0">
                            <div class="row justify-center">
                                <div class="col col-12"><h3
                                    class="text-uppercase text-h6 font-weight-bold mb-1 primary--text">
                                    servicio al cliente
                                </h3>
                                    <v-divider class="primary mr-auto mb-6"
                                               style="max-width: 50%;">
                                    </v-divider>

                                    <div class="text-body-1 grey--text text--lighten-1 mb-6">
                                        <a class="grey--text text-body-1 d-block mb-5" href="#">
                                            Métodos de pago
                                        </a>
                                        <a class="grey--text text-body-1 d-block mb-5" href="#">
                                            regreso
                                        </a>
                                        <a class="grey--text text-body-1 d-block mb-5" href="#">
                                            navegación
                                        </a>
                                        <a class="grey--text text-body-1 d-block mb-5"
                                           href="#"
                                           @click=" dialogTermCondition = !dialogTermCondition">
                                            Términos y condiciones
                                        </a>
                                        <a class="grey--text text-body-1 d-block mb-5"
                                           href="#"
                                           @click=" dialogPrivacyPolicies = !dialogPrivacyPolicies ">
                                            política de privacidad
                                        </a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </v-col>
                    <v-col class="col-md-4 col-12">
                        <v-container class="pa-0">
                            <v-row class="justify-center">
                                <div class="col col-12">
                                    <h3
                                        class="text-uppercase text-h6 font-weight-bold mb-1 primary--text">
                                        Contáctenos
                                    </h3>

                                    <v-divider class="primary mr-auto"
                                               style="max-width: 50%;">
                                    </v-divider>
                                    <div>
                                        <div class="pt-2 mb-0 d-flex justify-start align-center">
                                            <v-avatar class="transparent" size="72">
                                                <v-icon size="36">
                                                    mdi-map-marker-outline
                                                </v-icon>
                                            </v-avatar>

                                            <div class="text-body-1 grey--text text--lighten-1">
                                                <div>4932 College Street, <br>PHILIPSBURG</div>
                                            </div>
                                        </div>

                                        <v-divider class="my-2"></v-divider>

                                        <div class="pt-2 mb-0 d-flex justify-start align-center">
                                            <v-avatar class="transparent" size="72">
                                                <v-icon size="36">mdi-phone-forward</v-icon>
                                            </v-avatar>

                                            <div class="text-body-1 grey--text text--lighten-1">
                                                <div>404-385-7987</div>
                                            </div>
                                        </div>
                                        <v-divider class="my-2"></v-divider>
                                        <div class="pt-2 mb-0 d-flex justify-start align-center">
                                            <v-avatar class="transparent" size="72">
                                                <v-icon size="36">
                                                    mdi-email
                                                </v-icon>
                                            </v-avatar>

                                            <div class="text-body-1 grey--text text--lighten-1">
                                                <div>john@vuetifyjs.com</div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </v-row>
                        </v-container>
                    </v-col>
                </v-row>

                <v-divider aria-orientation="horizontal" class="my-4 v-divider theme--light" role="separator"/>
                <div class="text-center body-2 font-weight-bold gray--text  text--darken-4">
                    2020 - {{ new Date().getFullYear() }} © All
                    Rights
                    Reserved
                </div>
            </v-container>
            <section
                class="pt-2 mx-0 mb-0"
                style="width: 100% "
            >
                <v-container>
                    <p class="text-caption grey--text float-right d-sm-inline">

                        Desarrollado para
                        <span class="black--text">
                                           klao 😘😘
                                        </span>
                    </p>
                </v-container>
            </section>
        </v-footer>


        <!-- dialogs -->
        <div class="text-center">
            <v-dialog v-model="dialogTermCondition" width="500">
                <v-card>
                    <v-card-title class="text-h5 grey lighten-2">
                        Términos y Condiciones
                    </v-card-title>

                    <v-card-text>
                        Agregar términos y condiciones Lorem ipsum dolor
                        sit amet, consectetur adipiscing elit, sed do
                        eiusmod tempor incididunt ut labore et dolore
                        magna aliqua. Ut enim ad minim veniam, quis
                        nostrud exercitation ullamco laboris nisi ut
                        aliquip ex ea commodo consequat. Duis aute irure
                        dolor in reprehenderit in voluptate velit esse
                        cillum dolore eu fugiat nulla pariatur.
                        Excepteur sint occaecat cupidatat non proident,
                        sunt in culpa qui officia deserunt mollit anim
                        id est laborum.
                    </v-card-text>

                    <v-divider></v-divider>

                    <v-card-actions>
                        <v-spacer></v-spacer>
                        <v-btn
                            color="primary"
                            text
                            @click="dialogTermCondition = false"
                        >
                            I accept
                        </v-btn>
                    </v-card-actions>
                </v-card>
            </v-dialog>
        </div>

        <div class="text-center">
            <v-dialog v-model="dialogPrivacyPolicies" width="500">
                <v-card>
                    <v-card-title class="text-h5 grey lighten-2">
                        Privacy Policy
                    </v-card-title>

                    <v-card-text>
                        Lorem ipsum dolor sit amet, consectetur
                        adipiscing elit, sed do eiusmod tempor
                        incididunt ut labore et dolore magna aliqua. Ut
                        enim ad minim veniam, quis nostrud exercitation
                        ullamco laboris nisi ut aliquip ex ea commodo
                        consequat. Duis aute irure dolor in
                        reprehenderit in voluptate velit esse cillum
                        dolore eu fugiat nulla pariatur. Excepteur sint
                        occaecat cupidatat non proident, sunt in culpa
                        qui officia deserunt mollit anim id est laborum.
                    </v-card-text>

                    <v-divider></v-divider>

                    <v-card-actions>
                        <v-spacer></v-spacer>
                        <v-btn
                            color="primary"
                            text
                            @click="dialogPrivacyPolicies = false"
                        >
                            I accept
                        </v-btn>
                    </v-card-actions>
                </v-card>
            </v-dialog>
        </div>
    </section>
</template>

<script>
import logo from '../../images/logo.jpg';

export default {
    name: "Footer",
    data: () => ({
        logo: logo,
        links: [
            {name: "Inicio", route: "home"},
            {name: "Acerca de", route: "aboutme"},
            {name: "Servicios", route: "services"},
            {name: "Contacto", route: "contact"}
        ],
        dialogPrivacyPolicies: false,
        dialogTermCondition: false,
    })
}
</script>

<style scoped>

</style>
