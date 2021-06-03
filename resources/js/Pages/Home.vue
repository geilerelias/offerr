<template>
    <page-layout>
        <v-container
            class="px-6">
            <v-row class="justify-center">
                <v-card
                    color="#f7f8fc"
                    outlined
                    class="rounded mx-auto transition-swing my-6 py-0 px-0"
                    elevation="12"
                    min-height="200"
                    width="100%">
                    <v-img contain :src="joven" class="rounded my-0 py-0"></v-img>
                </v-card>
            </v-row>
        </v-container>

        <v-sheet>
            <v-container>
                <h2 class="text-h5 font-weight-bold  mb-0 pb-0 mt-6">
                    Categorías
                </h2>
                <div class="mb-5 secondary " style="width: 80px; height: 4px;"></div>
                <v-row>
                    <v-col cols="4" md="2"
                           v-for="(item,c) in categorias" :key="c"
                           class="text-center">
                        <v-card @click="" href="#" outlined height="100" width="150">
                            <v-img cover height="100" width="150" :src="item.src">
                            </v-img>
                        </v-card>
                        <p class="text-caption mt-2 " v-text="item.name"></p>
                    </v-col>
                    <v-col class="text-center" cols="4" md="2">
                        <v-card @click="" href="#" outlined height="100" width="150"
                                class="d-flex justify-center align-middle">
                            <v-icon size="80" color="primary">
                                mdi-menu
                            </v-icon>
                        </v-card>
                        <p class="text-caption mt-2"> Ver todos</p>
                    </v-col>
                </v-row>
            </v-container>
        </v-sheet>

        <section>
            <v-container class="mt-6">
                <h2 class="text-h5 font-weight-bold  mb-0 pb-0 mt-6">
                    Perfiles Destacados
                </h2>
                <div class="mb-5 secondary " style="width: 80px; height: 4px;"></div>
                <v-row>
                    <v-col class="text-center col-3" v-for="(item,p) in perfiles" :key="p">
                        <v-avatar size="80" color="white">
                            <v-img contain
                                   :src="item.src"
                                   :alt="item.name"
                            ></v-img>
                        </v-avatar>
                        <div class="text-caption mt-2" v-text="item.name"></div>
                    </v-col>
                </v-row>
            </v-container>
        </section>

        <div>
            <div class="container">
                <div class="row justify-center">
                    <div class="col-sm-12 col-md-12 col-lg-12 col-xl-9 col-12">
                        <div class="my-4 v-sheet theme--light" style="width: 100%;">
                            <div class="v-window v-item-group theme--light">
                                <div class="v-window__container" style="">
                                    <div class="v-window-item" style="display: none;">
                                        <div class="elevation-cs-2 v-card v-sheet theme--light" style="height: 350px;">
                                            <div class="v-image v-responsive theme--light" cover=""
                                                 style="height: 100%; width: 100%;">
                                                <div class="v-responsive__sizer" style="padding-bottom: 80%;"></div>
                                                <div class="v-image__image v-image__image--cover"
                                                     style="background-image: url(&quot;https://ecommerce-vuetify-template.netlify.app/_nuxt/img/ss_1.41e27c8.jpg&quot;); background-position: center center;"></div>
                                                <div class="v-responsive__content" style="width: 1350px;"><!----></div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="v-window-item v-window-item--active" style="">
                                        <div class="elevation-cs-2 v-card v-sheet theme--light" style="height: 350px;">
                                            <div class="v-image v-responsive theme--light" cover=""
                                                 style="height: 100%; width: 100%;">
                                                <div class="v-responsive__sizer"
                                                     style="padding-bottom: 66.6667%;"></div>
                                                <div class="v-image__image v-image__image--cover"
                                                     style="background-image: url(&quot;https://ecommerce-vuetify-template.netlify.app/_nuxt/img/ss_2.9c742ad.jpg&quot;); background-position: center center;"></div>
                                                <div class="v-responsive__content" style="width: 1200px;"><!----></div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="v-window-item" style="display: none;">
                                        <div class="elevation-cs-2 v-card v-sheet theme--light" style="height: 350px;">
                                            <div class="v-image v-responsive theme--light" cover=""
                                                 style="height: 100%; width: 100%;">
                                                <div class="v-responsive__sizer"
                                                     style="padding-bottom: 66.6667%;"></div>
                                                <div class="v-image__image v-image__image--cover"
                                                     style="background-image: url(&quot;https://ecommerce-vuetify-template.netlify.app/_nuxt/img/ss_3.34a0c38.jpg&quot;); background-position: center center;"></div>
                                                <div class="v-responsive__content" style="width: 1200px;"><!----></div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="container no-gutters">
                            <div class="row">
                                <div class="col-sm-6 col-md-5 col-lg-5 col-xl-4 col-12"><a href="/product/1"
                                                                                           class="pa-4 ff-poppins elevation-cs v-card v-card--link v-sheet theme--light bg-blue-cs"
                                                                                           tabindex="0"
                                                                                           style="height: 175px;">
                                    <div class="d-flex justify-space-between">
                                        <div class="d-grid pa-4">
                                            <div class="font-weight-thin">Smart Deals</div>
                                            <span class="primary--text font-weight-bold">Save 50$</span> <span
                                            class="font-weight-medium">on Samsung Galaxy S20 Pro</span>
                                            <div class="shop-now primary--text py-4">
                                                Shop Now
                                                <i aria-hidden="true"
                                                   class="v-icon notranslate v-icon--right mdi mdi-arrow-right theme--light primary--text"></i>
                                            </div>
                                        </div>
                                        <div class="v-avatar pa-3 rounded-0 py-4"
                                             style="height: 125px; min-width: 125px; width: 125px;">
                                            <div class="v-image v-responsive theme--light"
                                                 style="height: 100%; width: 100%;">
                                                <div class="v-responsive__sizer"
                                                     style="padding-bottom: 144.509%;"></div>
                                                <div class="v-image__image v-image__image--contain"
                                                     style="background-image: url(&quot;https://ecommerce-vuetify-template.netlify.app/_nuxt/img/phone.47e127b.jpg&quot;); background-position: center center;"></div>
                                                <div class="v-responsive__content" style="width: 346px;"></div>
                                            </div>
                                        </div>
                                    </div>
                                </a></div>
                                <div class="col-sm-6 col-md-7 col-lg-7 col-xl-8 col-12"><a href="/product/1"
                                                                                           class="pa-4 ff-poppins elevation-cs product-right white--text v-card v-card--link v-sheet theme--light transparent"
                                                                                           tabindex="0"
                                                                                           style="height: 175px;">
                                    <div class="d-flex flex-column">
                                        <div class="d-grid pa-4">
                                            <div class="font-weight-thin">Combination Deal</div>
                                            <span class="font-weight-medium">Keyboard + Mouse</span>
                                            <div class="py-4"><img src="/_nuxt/img/ss_logo.a5b447d.png" height="30"
                                                                   style="filter: invert(1);"></div>
                                        </div>
                                    </div>
                                </a></div>
                            </div>
                            <div class="row mt-12 align-center justify-center">
                                <div class="d-flex col-sm-6 col-md-6 col-lg-3 col-xl-3 col-12">
                                    <div class="v-avatar rounded-0" style="height: 38px; min-width: 38px; width: 38px;">
                                        <div class="v-image v-responsive theme--light">
                                            <div class="v-responsive__sizer" style="padding-bottom: 100%;"></div>
                                            <div class="v-image__image v-image__image--contain"
                                                 style="background-image: url(&quot;https://ecommerce-vuetify-template.netlify.app/_nuxt/img/1.e142f40.svg&quot;); background-position: center center;"></div>
                                            <div class="v-responsive__content" style="width: 150px;"></div>
                                        </div>
                                    </div>
                                    <div class="ml-6"><h3>Free Shipping</h3>
                                        <p>On all orders over $25</p></div>
                                </div>
                                <div class="d-flex col-sm-6 col-md-6 col-lg-3 col-xl-3 col-12">
                                    <div class="v-avatar rounded-0" style="height: 38px; min-width: 38px; width: 38px;">
                                        <div class="v-image v-responsive theme--light">
                                            <div class="v-responsive__sizer" style="padding-bottom: 100%;"></div>
                                            <div class="v-image__image v-image__image--contain"
                                                 style="background-image: url(&quot;https://ecommerce-vuetify-template.netlify.app/_nuxt/img/2.99e4b2a.svg&quot;); background-position: center center;"></div>
                                            <div class="v-responsive__content" style="width: 512px;"></div>
                                        </div>
                                    </div>
                                    <div class="ml-6"><h3>Free Returns</h3>
                                        <p>Returns are free within 7 days</p></div>
                                </div>
                                <div class="d-flex col-sm-6 col-md-6 col-lg-3 col-xl-3 col-12">
                                    <div class="v-avatar rounded-0" style="height: 38px; min-width: 38px; width: 38px;">
                                        <div class="v-image v-responsive theme--light">
                                            <div class="v-responsive__sizer" style="padding-bottom: 100%;"></div>
                                            <div class="v-image__image v-image__image--contain"
                                                 style="background-image: url(&quot;https://ecommerce-vuetify-template.netlify.app/_nuxt/img/3.b728556.svg&quot;); background-position: center center;"></div>
                                            <div class="v-responsive__content" style="width: 512px;"></div>
                                        </div>
                                    </div>
                                    <div class="ml-6"><h3>Support 24/7</h3>
                                        <p>Contact us 24 hours a day</p></div>
                                </div>
                                <div class="d-flex col-sm-6 col-md-6 col-lg-3 col-xl-3 col-12">
                                    <div class="v-avatar rounded-0" style="height: 38px; min-width: 38px; width: 38px;">
                                        <div class="v-image v-responsive theme--light">
                                            <div class="v-responsive__sizer" style="padding-bottom: 100%;"></div>
                                            <div class="v-image__image v-image__image--contain"
                                                 style="background-image: url(&quot;https://ecommerce-vuetify-template.netlify.app/_nuxt/img/4.04536f1.svg&quot;); background-position: center center;"></div>
                                            <div class="v-responsive__content" style="width: 150px;"></div>
                                        </div>
                                    </div>
                                    <div class="ml-6"><h3>100% Secure Payment</h3>
                                        <p>Your payment are safe with us</p></div>
                                </div>
                            </div>
                            <hr role="separator" aria-orientation="horizontal" class="my-6 v-divider theme--light">
                        </div>
                        <div class="my-12"><h2 class="text-center display-1 font-weight-light">
                            Explore Popular Categories
                        </h2>
                            <div class="row my-10 align-center justify-center">
                                <div
                                    class="d-flex flex-column align-center justify-center col-sm-6 col-md-6 col-lg-2 col-xl-2 col-12">
                                    <a href="/categories" class="">
                                        <div class="v-image v-responsive product-image theme--light"
                                             style="min-height: 100px; width: 100%;">
                                            <div class="v-responsive__sizer" style="padding-bottom: 58.0153%;"></div>
                                            <div class="v-image__image v-image__image--contain"
                                                 style="background-image: url(&quot;https://ecommerce-vuetify-template.netlify.app/_nuxt/img/1.b11fbba.png&quot;); background-position: center center;"></div>
                                            <div class="v-responsive__content" style="width: 131px;"></div>
                                        </div>
                                        <h4 class="font-weight-light ff-poppins my-3 text-center">
                                            Computer &amp; Laptop
                                        </h4></a></div>
                                <div
                                    class="d-flex flex-column align-center justify-center col-sm-6 col-md-6 col-lg-2 col-xl-2 col-12">
                                    <a href="/categories" class="">
                                        <div class="v-image v-responsive product-image theme--light"
                                             style="min-height: 100px; width: 100%;">
                                            <div class="v-responsive__sizer" style="padding-bottom: 159.259%;"></div>
                                            <div class="v-image__image v-image__image--contain"
                                                 style="background-image: url(&quot;https://ecommerce-vuetify-template.netlify.app/_nuxt/img/2.843dbcd.png&quot;); background-position: center center;"></div>
                                            <div class="v-responsive__content" style="width: 54px;"></div>
                                        </div>
                                        <h4 class="font-weight-light ff-poppins my-3 text-center">
                                            Smartphones
                                        </h4></a></div>
                                <div
                                    class="d-flex flex-column align-center justify-center col-sm-6 col-md-6 col-lg-2 col-xl-2 col-12">
                                    <a href="/categories" class="">
                                        <div class="v-image v-responsive product-image theme--light"
                                             style="min-height: 100px; width: 100%;">
                                            <div class="v-responsive__sizer" style="padding-bottom: 65.3226%;"></div>
                                            <div class="v-image__image v-image__image--contain"
                                                 style="background-image: url(&quot;https://ecommerce-vuetify-template.netlify.app/_nuxt/img/3.bf46e3c.png&quot;); background-position: center center;"></div>
                                            <div class="v-responsive__content" style="width: 124px;"></div>
                                        </div>
                                        <h4 class="font-weight-light ff-poppins my-3 text-center">
                                            Televisions
                                        </h4></a></div>
                                <div
                                    class="d-flex flex-column align-center justify-center col-sm-6 col-md-6 col-lg-2 col-xl-2 col-12">
                                    <a href="/categories" class="">
                                        <div class="v-image v-responsive product-image theme--light"
                                             style="min-height: 100px; width: 100%;">
                                            <div class="v-responsive__sizer" style="padding-bottom: 60.2273%;"></div>
                                            <div class="v-image__image v-image__image--contain"
                                                 style="background-image: url(&quot;https://ecommerce-vuetify-template.netlify.app/_nuxt/img/4.0fbbaf5.png&quot;); background-position: center center;"></div>
                                            <div class="v-responsive__content" style="width: 88px;"></div>
                                        </div>
                                        <h4 class="font-weight-light ff-poppins my-3 text-center">
                                            Audio
                                        </h4></a></div>
                                <div
                                    class="d-flex flex-column align-center justify-center col-sm-6 col-md-6 col-lg-2 col-xl-2 col-12">
                                    <a href="/categories" class="">
                                        <div class="v-image v-responsive product-image theme--light"
                                             style="min-height: 100px; width: 100%;">
                                            <div class="v-responsive__sizer" style="padding-bottom: 119.718%;"></div>
                                            <div class="v-image__image v-image__image--contain"
                                                 style="background-image: url(&quot;https://ecommerce-vuetify-template.netlify.app/_nuxt/img/5.1c16f28.png&quot;); background-position: center center;"></div>
                                            <div class="v-responsive__content" style="width: 71px;"></div>
                                        </div>
                                        <h4 class="font-weight-light ff-poppins my-3 text-center">
                                            Smart Watches
                                        </h4></a></div>
                            </div>
                        </div>
                        <div class="container px-0 px-md-12 py-6 rounded my-12 bg-red-cs elevation-cs-3"><h2
                            class="font-weight-bold text-center text-md-left">
                            Highest Rated Products
                        </h2>
                            <div class="row">
                                <div
                                    class="my-10 v-item-group theme--light v-slide-group v-slide-group--has-affixes v-slide-group--is-overflowing">
                                    <div class="v-slide-group__prev v-slide-group__prev--disabled"><i aria-hidden="true"
                                                                                                      class="v-icon notranslate v-icon--disabled mdi mdi-chevron-left theme--light"></i>
                                    </div>
                                    <div class="v-slide-group__wrapper">
                                        <div class="v-slide-group__content"><a href="/product/1"
                                                                               class="pa-4 v-card v-card--flat v-card--hover v-card--link v-sheet theme--light rounded-0 transparent"
                                                                               tabindex="0" draggable="true"
                                                                               style="height: auto; width: 250px;">
                                            <div class="v-image v-responsive theme--light"
                                                 style="height: 125px; width: 100%;">
                                                <div class="v-responsive__sizer" style="padding-bottom: 56.25%;"></div>
                                                <div class="v-image__image v-image__image--contain"
                                                     style="background-image: url(&quot;https://dummyimage.com/1600x900.png/5fa2dd/ffffff&quot;); background-position: center center;"></div>
                                                <!---->
                                                <div class="v-responsive__content" style="width: 1600px;"></div>
                                            </div>
                                            <div class="px-0 text-body-1 font-weight-medium custom-title-text mt-2">
                                                Spermophilus parryii
                                            </div>
                                            <div class="d-flex align-center justify-space-between">
                                                <div class="rating d-flex">
                                                    <div><i aria-hidden="true"
                                                            class="v-icon notranslate mr-1 mdi mdi-star theme--light orange--text"
                                                            style="font-size: 15px;"></i><i aria-hidden="true"
                                                                                            class="v-icon notranslate mr-1 mdi mdi-star theme--light orange--text"
                                                                                            style="font-size: 15px;"></i><i
                                                        aria-hidden="true"
                                                        class="v-icon notranslate mr-1 mdi mdi-star theme--light orange--text"
                                                        style="font-size: 15px;"></i><i aria-hidden="true"
                                                                                        class="v-icon notranslate mr-1 mdi mdi-star theme--light orange--text"
                                                                                        style="font-size: 15px;"></i><i
                                                        aria-hidden="true"
                                                        class="v-icon notranslate mr-1 mdi mdi-star theme--light orange--text"
                                                        style="font-size: 15px;"></i> <span class="caption">(5)</span>
                                                    </div>
                                                </div>
                                                <span class="caption font-weight-medium fs-13">510.31$</span></div>
                                        </a><a href="/product/1"
                                               class="pa-4 v-card v-card--flat v-card--hover v-card--link v-sheet theme--light rounded-0 transparent"
                                               tabindex="0" draggable="true" style="height: auto; width: 250px;">
                                            <div class="v-image v-responsive theme--light"
                                                 style="height: 125px; width: 100%;">
                                                <div class="v-responsive__sizer" style="padding-bottom: 56.25%;"></div>
                                                <div class="v-image__image v-image__image--contain"
                                                     style="background-image: url(&quot;https://dummyimage.com/1600x900.png/cc0000/ffffff&quot;); background-position: center center;"></div>
                                                <!---->
                                                <div class="v-responsive__content" style="width: 1600px;"></div>
                                            </div>
                                            <div class="px-0 text-body-1 font-weight-medium custom-title-text mt-2">
                                                Zenaida asiatica
                                            </div>
                                            <div class="d-flex align-center justify-space-between">
                                                <div class="rating d-flex">
                                                    <div><i aria-hidden="true"
                                                            class="v-icon notranslate mr-1 mdi mdi-star theme--light orange--text"
                                                            style="font-size: 15px;"></i><i aria-hidden="true"
                                                                                            class="v-icon notranslate mr-1 mdi mdi-star theme--light orange--text"
                                                                                            style="font-size: 15px;"></i><i
                                                        aria-hidden="true"
                                                        class="v-icon notranslate mr-1 mdi mdi-star theme--light orange--text"
                                                        style="font-size: 15px;"></i><i aria-hidden="true"
                                                                                        class="v-icon notranslate mr-1 mdi mdi-star theme--light orange--text"
                                                                                        style="font-size: 15px;"></i><i
                                                        aria-hidden="true"
                                                        class="v-icon notranslate mr-1 mdi mdi-star theme--light orange--text"
                                                        style="font-size: 15px;"></i> <span class="caption">(5)</span>
                                                    </div>
                                                </div>
                                                <span class="caption font-weight-medium fs-13">760.25$</span></div>
                                        </a><a href="/product/1"
                                               class="pa-4 v-card v-card--flat v-card--hover v-card--link v-sheet theme--light rounded-0 transparent"
                                               tabindex="0" draggable="true" style="height: auto; width: 250px;">
                                            <div class="v-image v-responsive theme--light"
                                                 style="height: 125px; width: 100%;">
                                                <div class="v-responsive__sizer" style="padding-bottom: 56.25%;"></div>
                                                <div class="v-image__image v-image__image--contain"
                                                     style="background-image: url(&quot;https://dummyimage.com/1600x900.png/ff4444/ffffff&quot;); background-position: center center;"></div>
                                                <!---->
                                                <div class="v-responsive__content" style="width: 1600px;"></div>
                                            </div>
                                            <div class="px-0 text-body-1 font-weight-medium custom-title-text mt-2">
                                                Phalacrocorax albiventer
                                            </div>
                                            <div class="d-flex align-center justify-space-between">
                                                <div class="rating d-flex">
                                                    <div><i aria-hidden="true"
                                                            class="v-icon notranslate mr-1 mdi mdi-star theme--light orange--text"
                                                            style="font-size: 15px;"></i><i aria-hidden="true"
                                                                                            class="v-icon notranslate mr-1 mdi mdi-star theme--light orange--text"
                                                                                            style="font-size: 15px;"></i><i
                                                        aria-hidden="true"
                                                        class="v-icon notranslate mr-1 mdi mdi-star theme--light orange--text"
                                                        style="font-size: 15px;"></i><i aria-hidden="true"
                                                                                        class="v-icon notranslate mr-1 mdi mdi-star theme--light orange--text"
                                                                                        style="font-size: 15px;"></i><i
                                                        aria-hidden="true"
                                                        class="v-icon notranslate mr-1 mdi mdi-star theme--light orange--text"
                                                        style="font-size: 15px;"></i> <span class="caption">(5)</span>
                                                    </div>
                                                </div>
                                                <span class="caption font-weight-medium fs-13">597.11$</span></div>
                                        </a><a href="/product/1"
                                               class="pa-4 v-card v-card--flat v-card--hover v-card--link v-sheet theme--light rounded-0 transparent"
                                               tabindex="0" draggable="true" style="height: auto; width: 250px;">
                                            <div class="v-image v-responsive theme--light"
                                                 style="height: 125px; width: 100%;">
                                                <div class="v-responsive__sizer" style="padding-bottom: 56.25%;"></div>
                                                <div class="v-image__image v-image__image--contain"
                                                     style="background-image: url(&quot;https://dummyimage.com/1600x900.png/cc0000/ffffff&quot;); background-position: center center;"></div>
                                                <!---->
                                                <div class="v-responsive__content" style="width: 1600px;"></div>
                                            </div>
                                            <div class="px-0 text-body-1 font-weight-medium custom-title-text mt-2">Axis
                                                axis
                                            </div>
                                            <div class="d-flex align-center justify-space-between">
                                                <div class="rating d-flex">
                                                    <div><i aria-hidden="true"
                                                            class="v-icon notranslate mr-1 mdi mdi-star theme--light orange--text"
                                                            style="font-size: 15px;"></i><i aria-hidden="true"
                                                                                            class="v-icon notranslate mr-1 mdi mdi-star theme--light orange--text"
                                                                                            style="font-size: 15px;"></i><i
                                                        aria-hidden="true"
                                                        class="v-icon notranslate mr-1 mdi mdi-star theme--light orange--text"
                                                        style="font-size: 15px;"></i><i aria-hidden="true"
                                                                                        class="v-icon notranslate mr-1 mdi mdi-star theme--light orange--text"
                                                                                        style="font-size: 15px;"></i><i
                                                        aria-hidden="true"
                                                        class="v-icon notranslate mr-1 mdi mdi-star theme--light orange--text"
                                                        style="font-size: 15px;"></i> <span class="caption">(5)</span>
                                                    </div>
                                                </div>
                                                <span class="caption font-weight-medium fs-13">183.9$</span></div>
                                        </a><a href="/product/1"
                                               class="pa-4 v-card v-card--flat v-card--hover v-card--link v-sheet theme--light rounded-0 transparent"
                                               tabindex="0" draggable="true" style="height: auto; width: 250px;">
                                            <div class="v-image v-responsive theme--light"
                                                 style="height: 125px; width: 100%;">
                                                <div
                                                    class="v-image__image v-image__image--preload v-image__image--contain"
                                                    style="background-position: center center;"></div>
                                                <div class="v-image__placeholder">
                                                    <div class="row fill-height ma-0 align-center justify-center">
                                                        <div role="progressbar" aria-valuemin="0" aria-valuemax="100"
                                                             class="v-progress-circular v-progress-circular--indeterminate grey--text text--lighten-5"
                                                             style="height: 32px; width: 32px;">
                                                            <svg xmlns="http://www.w3.org/2000/svg"
                                                                 viewBox="22.857142857142858 22.857142857142858 45.714285714285715 45.714285714285715"
                                                                 style="transform: rotate(0deg);">
                                                                <circle fill="transparent" cx="45.714285714285715"
                                                                        cy="45.714285714285715" r="20"
                                                                        stroke-width="5.714285714285714"
                                                                        stroke-dasharray="125.664"
                                                                        stroke-dashoffset="125.66370614359172px"
                                                                        class="v-progress-circular__overlay"></circle>
                                                            </svg>
                                                            <div class="v-progress-circular__info"></div>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="v-responsive__content"></div>
                                            </div>
                                            <div class="px-0 text-body-1 font-weight-medium custom-title-text mt-2">
                                                Castor canadensis
                                            </div>
                                            <div class="d-flex align-center justify-space-between">
                                                <div class="rating d-flex">
                                                    <div><i aria-hidden="true"
                                                            class="v-icon notranslate mr-1 mdi mdi-star theme--light orange--text"
                                                            style="font-size: 15px;"></i><i aria-hidden="true"
                                                                                            class="v-icon notranslate mr-1 mdi mdi-star theme--light orange--text"
                                                                                            style="font-size: 15px;"></i><i
                                                        aria-hidden="true"
                                                        class="v-icon notranslate mr-1 mdi mdi-star theme--light orange--text"
                                                        style="font-size: 15px;"></i><i aria-hidden="true"
                                                                                        class="v-icon notranslate mr-1 mdi mdi-star theme--light orange--text"
                                                                                        style="font-size: 15px;"></i><i
                                                        aria-hidden="true"
                                                        class="v-icon notranslate mr-1 mdi mdi-star theme--light orange--text"
                                                        style="font-size: 15px;"></i> <span class="caption">(5)</span>
                                                    </div>
                                                </div>
                                                <span class="caption font-weight-medium fs-13">39.33$</span></div>
                                        </a><a href="/product/1"
                                               class="pa-4 v-card v-card--flat v-card--hover v-card--link v-sheet theme--light rounded-0 transparent"
                                               tabindex="0" draggable="true" style="height: auto; width: 250px;">
                                            <div class="v-image v-responsive theme--light"
                                                 style="height: 125px; width: 100%;">
                                                <div
                                                    class="v-image__image v-image__image--preload v-image__image--contain"
                                                    style="background-position: center center;"></div>
                                                <div class="v-image__placeholder">
                                                    <div class="row fill-height ma-0 align-center justify-center">
                                                        <div role="progressbar" aria-valuemin="0" aria-valuemax="100"
                                                             class="v-progress-circular v-progress-circular--indeterminate grey--text text--lighten-5"
                                                             style="height: 32px; width: 32px;">
                                                            <svg xmlns="http://www.w3.org/2000/svg"
                                                                 viewBox="22.857142857142858 22.857142857142858 45.714285714285715 45.714285714285715"
                                                                 style="transform: rotate(0deg);">
                                                                <circle fill="transparent" cx="45.714285714285715"
                                                                        cy="45.714285714285715" r="20"
                                                                        stroke-width="5.714285714285714"
                                                                        stroke-dasharray="125.664"
                                                                        stroke-dashoffset="125.66370614359172px"
                                                                        class="v-progress-circular__overlay"></circle>
                                                            </svg>
                                                            <div class="v-progress-circular__info"></div>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="v-responsive__content"></div>
                                            </div>
                                            <div class="px-0 text-body-1 font-weight-medium custom-title-text mt-2">
                                                Psophia viridis
                                            </div>
                                            <div class="d-flex align-center justify-space-between">
                                                <div class="rating d-flex">
                                                    <div><i aria-hidden="true"
                                                            class="v-icon notranslate mr-1 mdi mdi-star theme--light orange--text"
                                                            style="font-size: 15px;"></i><i aria-hidden="true"
                                                                                            class="v-icon notranslate mr-1 mdi mdi-star theme--light orange--text"
                                                                                            style="font-size: 15px;"></i><i
                                                        aria-hidden="true"
                                                        class="v-icon notranslate mr-1 mdi mdi-star theme--light orange--text"
                                                        style="font-size: 15px;"></i><i aria-hidden="true"
                                                                                        class="v-icon notranslate mr-1 mdi mdi-star theme--light orange--text"
                                                                                        style="font-size: 15px;"></i><i
                                                        aria-hidden="true"
                                                        class="v-icon notranslate mr-1 mdi mdi-star theme--light orange--text"
                                                        style="font-size: 15px;"></i> <span class="caption">(5)</span>
                                                    </div>
                                                </div>
                                                <span class="caption font-weight-medium fs-13">934.4$</span></div>
                                        </a><a href="/product/1"
                                               class="pa-4 v-card v-card--flat v-card--hover v-card--link v-sheet theme--light rounded-0 transparent"
                                               tabindex="0" draggable="true" style="height: auto; width: 250px;">
                                            <div class="v-image v-responsive theme--light"
                                                 style="height: 125px; width: 100%;">
                                                <div
                                                    class="v-image__image v-image__image--preload v-image__image--contain"
                                                    style="background-position: center center;"></div>
                                                <div class="v-image__placeholder">
                                                    <div class="row fill-height ma-0 align-center justify-center">
                                                        <div role="progressbar" aria-valuemin="0" aria-valuemax="100"
                                                             class="v-progress-circular v-progress-circular--indeterminate grey--text text--lighten-5"
                                                             style="height: 32px; width: 32px;">
                                                            <svg xmlns="http://www.w3.org/2000/svg"
                                                                 viewBox="22.857142857142858 22.857142857142858 45.714285714285715 45.714285714285715"
                                                                 style="transform: rotate(0deg);">
                                                                <circle fill="transparent" cx="45.714285714285715"
                                                                        cy="45.714285714285715" r="20"
                                                                        stroke-width="5.714285714285714"
                                                                        stroke-dasharray="125.664"
                                                                        stroke-dashoffset="125.66370614359172px"
                                                                        class="v-progress-circular__overlay"></circle>
                                                            </svg>
                                                            <div class="v-progress-circular__info"></div>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="v-responsive__content"></div>
                                            </div>
                                            <div class="px-0 text-body-1 font-weight-medium custom-title-text mt-2">
                                                Felis caracal
                                            </div>
                                            <div class="d-flex align-center justify-space-between">
                                                <div class="rating d-flex">
                                                    <div><i aria-hidden="true"
                                                            class="v-icon notranslate mr-1 mdi mdi-star theme--light orange--text"
                                                            style="font-size: 15px;"></i><i aria-hidden="true"
                                                                                            class="v-icon notranslate mr-1 mdi mdi-star theme--light orange--text"
                                                                                            style="font-size: 15px;"></i><i
                                                        aria-hidden="true"
                                                        class="v-icon notranslate mr-1 mdi mdi-star theme--light orange--text"
                                                        style="font-size: 15px;"></i><i aria-hidden="true"
                                                                                        class="v-icon notranslate mr-1 mdi mdi-star theme--light orange--text"
                                                                                        style="font-size: 15px;"></i><i
                                                        aria-hidden="true"
                                                        class="v-icon notranslate mr-1 mdi mdi-star theme--light orange--text"
                                                        style="font-size: 15px;"></i> <span class="caption">(5)</span>
                                                    </div>
                                                </div>
                                                <span class="caption font-weight-medium fs-13">232.79$</span></div>
                                        </a><a href="/product/1"
                                               class="pa-4 v-card v-card--flat v-card--hover v-card--link v-sheet theme--light rounded-0 transparent"
                                               tabindex="0" draggable="true" style="height: auto; width: 250px;">
                                            <div class="v-image v-responsive theme--light"
                                                 style="height: 125px; width: 100%;">
                                                <div
                                                    class="v-image__image v-image__image--preload v-image__image--contain"
                                                    style="background-position: center center;"></div>
                                                <div class="v-image__placeholder">
                                                    <div class="row fill-height ma-0 align-center justify-center">
                                                        <div role="progressbar" aria-valuemin="0" aria-valuemax="100"
                                                             class="v-progress-circular v-progress-circular--indeterminate grey--text text--lighten-5"
                                                             style="height: 32px; width: 32px;">
                                                            <svg xmlns="http://www.w3.org/2000/svg"
                                                                 viewBox="22.857142857142858 22.857142857142858 45.714285714285715 45.714285714285715"
                                                                 style="transform: rotate(0deg);">
                                                                <circle fill="transparent" cx="45.714285714285715"
                                                                        cy="45.714285714285715" r="20"
                                                                        stroke-width="5.714285714285714"
                                                                        stroke-dasharray="125.664"
                                                                        stroke-dashoffset="125.66370614359172px"
                                                                        class="v-progress-circular__overlay"></circle>
                                                            </svg>
                                                            <div class="v-progress-circular__info"></div>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="v-responsive__content"></div>
                                            </div>
                                            <div class="px-0 text-body-1 font-weight-medium custom-title-text mt-2">
                                                Felis yagouaroundi
                                            </div>
                                            <div class="d-flex align-center justify-space-between">
                                                <div class="rating d-flex">
                                                    <div><i aria-hidden="true"
                                                            class="v-icon notranslate mr-1 mdi mdi-star theme--light orange--text"
                                                            style="font-size: 15px;"></i><i aria-hidden="true"
                                                                                            class="v-icon notranslate mr-1 mdi mdi-star theme--light orange--text"
                                                                                            style="font-size: 15px;"></i><i
                                                        aria-hidden="true"
                                                        class="v-icon notranslate mr-1 mdi mdi-star theme--light orange--text"
                                                        style="font-size: 15px;"></i><i aria-hidden="true"
                                                                                        class="v-icon notranslate mr-1 mdi mdi-star theme--light orange--text"
                                                                                        style="font-size: 15px;"></i><i
                                                        aria-hidden="true"
                                                        class="v-icon notranslate mr-1 mdi mdi-star theme--light orange--text"
                                                        style="font-size: 15px;"></i> <span class="caption">(5)</span>
                                                    </div>
                                                </div>
                                                <span class="caption font-weight-medium fs-13">558.23$</span></div>
                                        </a><a href="/product/1"
                                               class="pa-4 v-card v-card--flat v-card--hover v-card--link v-sheet theme--light rounded-0 transparent"
                                               tabindex="0" draggable="true" style="height: auto; width: 250px;">
                                            <div class="v-image v-responsive theme--light"
                                                 style="height: 125px; width: 100%;">
                                                <div
                                                    class="v-image__image v-image__image--preload v-image__image--contain"
                                                    style="background-position: center center;"></div>
                                                <div class="v-image__placeholder">
                                                    <div class="row fill-height ma-0 align-center justify-center">
                                                        <div role="progressbar" aria-valuemin="0" aria-valuemax="100"
                                                             class="v-progress-circular v-progress-circular--indeterminate grey--text text--lighten-5"
                                                             style="height: 32px; width: 32px;">
                                                            <svg xmlns="http://www.w3.org/2000/svg"
                                                                 viewBox="22.857142857142858 22.857142857142858 45.714285714285715 45.714285714285715"
                                                                 style="transform: rotate(0deg);">
                                                                <circle fill="transparent" cx="45.714285714285715"
                                                                        cy="45.714285714285715" r="20"
                                                                        stroke-width="5.714285714285714"
                                                                        stroke-dasharray="125.664"
                                                                        stroke-dashoffset="125.66370614359172px"
                                                                        class="v-progress-circular__overlay"></circle>
                                                            </svg>
                                                            <div class="v-progress-circular__info"></div>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="v-responsive__content"></div>
                                            </div>
                                            <div class="px-0 text-body-1 font-weight-medium custom-title-text mt-2">Axis
                                                axis
                                            </div>
                                            <div class="d-flex align-center justify-space-between">
                                                <div class="rating d-flex">
                                                    <div><i aria-hidden="true"
                                                            class="v-icon notranslate mr-1 mdi mdi-star theme--light orange--text"
                                                            style="font-size: 15px;"></i><i aria-hidden="true"
                                                                                            class="v-icon notranslate mr-1 mdi mdi-star theme--light orange--text"
                                                                                            style="font-size: 15px;"></i><i
                                                        aria-hidden="true"
                                                        class="v-icon notranslate mr-1 mdi mdi-star theme--light orange--text"
                                                        style="font-size: 15px;"></i><i aria-hidden="true"
                                                                                        class="v-icon notranslate mr-1 mdi mdi-star theme--light orange--text"
                                                                                        style="font-size: 15px;"></i><i
                                                        aria-hidden="true"
                                                        class="v-icon notranslate mr-1 mdi mdi-star theme--light orange--text"
                                                        style="font-size: 15px;"></i> <span class="caption">(5)</span>
                                                    </div>
                                                </div>
                                                <span class="caption font-weight-medium fs-13">369.35$</span></div>
                                        </a><a href="/product/1"
                                               class="pa-4 v-card v-card--flat v-card--hover v-card--link v-sheet theme--light rounded-0 transparent"
                                               tabindex="0" draggable="true" style="height: auto; width: 250px;">
                                            <div class="v-image v-responsive theme--light"
                                                 style="height: 125px; width: 100%;">
                                                <div
                                                    class="v-image__image v-image__image--preload v-image__image--contain"
                                                    style="background-position: center center;"></div>
                                                <div class="v-image__placeholder">
                                                    <div class="row fill-height ma-0 align-center justify-center">
                                                        <div role="progressbar" aria-valuemin="0" aria-valuemax="100"
                                                             class="v-progress-circular v-progress-circular--indeterminate grey--text text--lighten-5"
                                                             style="height: 32px; width: 32px;">
                                                            <svg xmlns="http://www.w3.org/2000/svg"
                                                                 viewBox="22.857142857142858 22.857142857142858 45.714285714285715 45.714285714285715"
                                                                 style="transform: rotate(0deg);">
                                                                <circle fill="transparent" cx="45.714285714285715"
                                                                        cy="45.714285714285715" r="20"
                                                                        stroke-width="5.714285714285714"
                                                                        stroke-dasharray="125.664"
                                                                        stroke-dashoffset="125.66370614359172px"
                                                                        class="v-progress-circular__overlay"></circle>
                                                            </svg>
                                                            <div class="v-progress-circular__info"></div>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="v-responsive__content"></div>
                                            </div>
                                            <div class="px-0 text-body-1 font-weight-medium custom-title-text mt-2">
                                                Acinynox jubatus
                                            </div>
                                            <div class="d-flex align-center justify-space-between">
                                                <div class="rating d-flex">
                                                    <div><i aria-hidden="true"
                                                            class="v-icon notranslate mr-1 mdi mdi-star theme--light orange--text"
                                                            style="font-size: 15px;"></i><i aria-hidden="true"
                                                                                            class="v-icon notranslate mr-1 mdi mdi-star theme--light orange--text"
                                                                                            style="font-size: 15px;"></i><i
                                                        aria-hidden="true"
                                                        class="v-icon notranslate mr-1 mdi mdi-star theme--light orange--text"
                                                        style="font-size: 15px;"></i><i aria-hidden="true"
                                                                                        class="v-icon notranslate mr-1 mdi mdi-star theme--light orange--text"
                                                                                        style="font-size: 15px;"></i><i
                                                        aria-hidden="true"
                                                        class="v-icon notranslate mr-1 mdi mdi-star theme--light orange--text"
                                                        style="font-size: 15px;"></i> <span class="caption">(5)</span>
                                                    </div>
                                                </div>
                                                <span class="caption font-weight-medium fs-13">762.95$</span></div>
                                        </a><a href="/product/1"
                                               class="pa-4 v-card v-card--flat v-card--hover v-card--link v-sheet theme--light rounded-0 transparent"
                                               tabindex="0" draggable="true" style="height: auto; width: 250px;">
                                            <div class="v-image v-responsive theme--light"
                                                 style="height: 125px; width: 100%;">
                                                <div
                                                    class="v-image__image v-image__image--preload v-image__image--contain"
                                                    style="background-position: center center;"></div>
                                                <div class="v-image__placeholder">
                                                    <div class="row fill-height ma-0 align-center justify-center">
                                                        <div role="progressbar" aria-valuemin="0" aria-valuemax="100"
                                                             class="v-progress-circular v-progress-circular--indeterminate grey--text text--lighten-5"
                                                             style="height: 32px; width: 32px;">
                                                            <svg xmlns="http://www.w3.org/2000/svg"
                                                                 viewBox="22.857142857142858 22.857142857142858 45.714285714285715 45.714285714285715"
                                                                 style="transform: rotate(0deg);">
                                                                <circle fill="transparent" cx="45.714285714285715"
                                                                        cy="45.714285714285715" r="20"
                                                                        stroke-width="5.714285714285714"
                                                                        stroke-dasharray="125.664"
                                                                        stroke-dashoffset="125.66370614359172px"
                                                                        class="v-progress-circular__overlay"></circle>
                                                            </svg>
                                                            <div class="v-progress-circular__info"></div>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="v-responsive__content"></div>
                                            </div>
                                            <div class="px-0 text-body-1 font-weight-medium custom-title-text mt-2">
                                                Otaria flavescens
                                            </div>
                                            <div class="d-flex align-center justify-space-between">
                                                <div class="rating d-flex">
                                                    <div><i aria-hidden="true"
                                                            class="v-icon notranslate mr-1 mdi mdi-star theme--light orange--text"
                                                            style="font-size: 15px;"></i><i aria-hidden="true"
                                                                                            class="v-icon notranslate mr-1 mdi mdi-star theme--light orange--text"
                                                                                            style="font-size: 15px;"></i><i
                                                        aria-hidden="true"
                                                        class="v-icon notranslate mr-1 mdi mdi-star theme--light orange--text"
                                                        style="font-size: 15px;"></i><i aria-hidden="true"
                                                                                        class="v-icon notranslate mr-1 mdi mdi-star theme--light orange--text"
                                                                                        style="font-size: 15px;"></i><i
                                                        aria-hidden="true"
                                                        class="v-icon notranslate mr-1 mdi mdi-star theme--light orange--text"
                                                        style="font-size: 15px;"></i> <span class="caption">(5)</span>
                                                    </div>
                                                </div>
                                                <span class="caption font-weight-medium fs-13">929.81$</span></div>
                                        </a><a href="/product/1"
                                               class="pa-4 v-card v-card--flat v-card--hover v-card--link v-sheet theme--light rounded-0 transparent"
                                               tabindex="0" draggable="true" style="height: auto; width: 250px;">
                                            <div class="v-image v-responsive theme--light"
                                                 style="height: 125px; width: 100%;">
                                                <div
                                                    class="v-image__image v-image__image--preload v-image__image--contain"
                                                    style="background-position: center center;"></div>
                                                <div class="v-image__placeholder">
                                                    <div class="row fill-height ma-0 align-center justify-center">
                                                        <div role="progressbar" aria-valuemin="0" aria-valuemax="100"
                                                             class="v-progress-circular v-progress-circular--indeterminate grey--text text--lighten-5"
                                                             style="height: 32px; width: 32px;">
                                                            <svg xmlns="http://www.w3.org/2000/svg"
                                                                 viewBox="22.857142857142858 22.857142857142858 45.714285714285715 45.714285714285715"
                                                                 style="transform: rotate(0deg);">
                                                                <circle fill="transparent" cx="45.714285714285715"
                                                                        cy="45.714285714285715" r="20"
                                                                        stroke-width="5.714285714285714"
                                                                        stroke-dasharray="125.664"
                                                                        stroke-dashoffset="125.66370614359172px"
                                                                        class="v-progress-circular__overlay"></circle>
                                                            </svg>
                                                            <div class="v-progress-circular__info"></div>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="v-responsive__content"></div>
                                            </div>
                                            <div class="px-0 text-body-1 font-weight-medium custom-title-text mt-2">
                                                Pseudalopex gymnocercus
                                            </div>
                                            <div class="d-flex align-center justify-space-between">
                                                <div class="rating d-flex">
                                                    <div><i aria-hidden="true"
                                                            class="v-icon notranslate mr-1 mdi mdi-star theme--light orange--text"
                                                            style="font-size: 15px;"></i><i aria-hidden="true"
                                                                                            class="v-icon notranslate mr-1 mdi mdi-star theme--light orange--text"
                                                                                            style="font-size: 15px;"></i><i
                                                        aria-hidden="true"
                                                        class="v-icon notranslate mr-1 mdi mdi-star theme--light orange--text"
                                                        style="font-size: 15px;"></i><i aria-hidden="true"
                                                                                        class="v-icon notranslate mr-1 mdi mdi-star theme--light orange--text"
                                                                                        style="font-size: 15px;"></i><i
                                                        aria-hidden="true"
                                                        class="v-icon notranslate mr-1 mdi mdi-star theme--light orange--text"
                                                        style="font-size: 15px;"></i> <span class="caption">(5)</span>
                                                    </div>
                                                </div>
                                                <span class="caption font-weight-medium fs-13">30$</span></div>
                                        </a><a href="/product/1"
                                               class="pa-4 v-card v-card--flat v-card--hover v-card--link v-sheet theme--light rounded-0 transparent"
                                               tabindex="0" draggable="true" style="height: auto; width: 250px;">
                                            <div class="v-image v-responsive theme--light"
                                                 style="height: 125px; width: 100%;">
                                                <div
                                                    class="v-image__image v-image__image--preload v-image__image--contain"
                                                    style="background-position: center center;"></div>
                                                <div class="v-image__placeholder">
                                                    <div class="row fill-height ma-0 align-center justify-center">
                                                        <div role="progressbar" aria-valuemin="0" aria-valuemax="100"
                                                             class="v-progress-circular v-progress-circular--indeterminate grey--text text--lighten-5"
                                                             style="height: 32px; width: 32px;">
                                                            <svg xmlns="http://www.w3.org/2000/svg"
                                                                 viewBox="22.857142857142858 22.857142857142858 45.714285714285715 45.714285714285715"
                                                                 style="transform: rotate(0deg);">
                                                                <circle fill="transparent" cx="45.714285714285715"
                                                                        cy="45.714285714285715" r="20"
                                                                        stroke-width="5.714285714285714"
                                                                        stroke-dasharray="125.664"
                                                                        stroke-dashoffset="125.66370614359172px"
                                                                        class="v-progress-circular__overlay"></circle>
                                                            </svg>
                                                            <div class="v-progress-circular__info"></div>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="v-responsive__content"></div>
                                            </div>
                                            <div class="px-0 text-body-1 font-weight-medium custom-title-text mt-2">
                                                Trachyphonus vaillantii
                                            </div>
                                            <div class="d-flex align-center justify-space-between">
                                                <div class="rating d-flex">
                                                    <div><i aria-hidden="true"
                                                            class="v-icon notranslate mr-1 mdi mdi-star theme--light orange--text"
                                                            style="font-size: 15px;"></i><i aria-hidden="true"
                                                                                            class="v-icon notranslate mr-1 mdi mdi-star theme--light orange--text"
                                                                                            style="font-size: 15px;"></i><i
                                                        aria-hidden="true"
                                                        class="v-icon notranslate mr-1 mdi mdi-star theme--light orange--text"
                                                        style="font-size: 15px;"></i><i aria-hidden="true"
                                                                                        class="v-icon notranslate mr-1 mdi mdi-star theme--light orange--text"
                                                                                        style="font-size: 15px;"></i><i
                                                        aria-hidden="true"
                                                        class="v-icon notranslate mr-1 mdi mdi-star theme--light orange--text"
                                                        style="font-size: 15px;"></i> <span class="caption">(5)</span>
                                                    </div>
                                                </div>
                                                <span class="caption font-weight-medium fs-13">348.47$</span></div>
                                        </a><a href="/product/1"
                                               class="pa-4 v-card v-card--flat v-card--hover v-card--link v-sheet theme--light rounded-0 transparent"
                                               tabindex="0" draggable="true" style="height: auto; width: 250px;">
                                            <div class="v-image v-responsive theme--light"
                                                 style="height: 125px; width: 100%;">
                                                <div
                                                    class="v-image__image v-image__image--preload v-image__image--contain"
                                                    style="background-position: center center;"></div>
                                                <div class="v-image__placeholder">
                                                    <div class="row fill-height ma-0 align-center justify-center">
                                                        <div role="progressbar" aria-valuemin="0" aria-valuemax="100"
                                                             class="v-progress-circular v-progress-circular--indeterminate grey--text text--lighten-5"
                                                             style="height: 32px; width: 32px;">
                                                            <svg xmlns="http://www.w3.org/2000/svg"
                                                                 viewBox="22.857142857142858 22.857142857142858 45.714285714285715 45.714285714285715"
                                                                 style="transform: rotate(0deg);">
                                                                <circle fill="transparent" cx="45.714285714285715"
                                                                        cy="45.714285714285715" r="20"
                                                                        stroke-width="5.714285714285714"
                                                                        stroke-dasharray="125.664"
                                                                        stroke-dashoffset="125.66370614359172px"
                                                                        class="v-progress-circular__overlay"></circle>
                                                            </svg>
                                                            <div class="v-progress-circular__info"></div>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="v-responsive__content"></div>
                                            </div>
                                            <div class="px-0 text-body-1 font-weight-medium custom-title-text mt-2">
                                                Pelecanus conspicillatus
                                            </div>
                                            <div class="d-flex align-center justify-space-between">
                                                <div class="rating d-flex">
                                                    <div><i aria-hidden="true"
                                                            class="v-icon notranslate mr-1 mdi mdi-star theme--light orange--text"
                                                            style="font-size: 15px;"></i><i aria-hidden="true"
                                                                                            class="v-icon notranslate mr-1 mdi mdi-star theme--light orange--text"
                                                                                            style="font-size: 15px;"></i><i
                                                        aria-hidden="true"
                                                        class="v-icon notranslate mr-1 mdi mdi-star theme--light orange--text"
                                                        style="font-size: 15px;"></i><i aria-hidden="true"
                                                                                        class="v-icon notranslate mr-1 mdi mdi-star theme--light orange--text"
                                                                                        style="font-size: 15px;"></i><i
                                                        aria-hidden="true"
                                                        class="v-icon notranslate mr-1 mdi mdi-star theme--light orange--text"
                                                        style="font-size: 15px;"></i> <span class="caption">(5)</span>
                                                    </div>
                                                </div>
                                                <span class="caption font-weight-medium fs-13">893.54$</span></div>
                                        </a><a href="/product/1"
                                               class="pa-4 v-card v-card--flat v-card--hover v-card--link v-sheet theme--light rounded-0 transparent"
                                               tabindex="0" draggable="true" style="height: auto; width: 250px;">
                                            <div class="v-image v-responsive theme--light"
                                                 style="height: 125px; width: 100%;">
                                                <div
                                                    class="v-image__image v-image__image--preload v-image__image--contain"
                                                    style="background-position: center center;"></div>
                                                <div class="v-image__placeholder">
                                                    <div class="row fill-height ma-0 align-center justify-center">
                                                        <div role="progressbar" aria-valuemin="0" aria-valuemax="100"
                                                             class="v-progress-circular v-progress-circular--indeterminate grey--text text--lighten-5"
                                                             style="height: 32px; width: 32px;">
                                                            <svg xmlns="http://www.w3.org/2000/svg"
                                                                 viewBox="22.857142857142858 22.857142857142858 45.714285714285715 45.714285714285715"
                                                                 style="transform: rotate(0deg);">
                                                                <circle fill="transparent" cx="45.714285714285715"
                                                                        cy="45.714285714285715" r="20"
                                                                        stroke-width="5.714285714285714"
                                                                        stroke-dasharray="125.664"
                                                                        stroke-dashoffset="125.66370614359172px"
                                                                        class="v-progress-circular__overlay"></circle>
                                                            </svg>
                                                            <div class="v-progress-circular__info"></div>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="v-responsive__content"></div>
                                            </div>
                                            <div class="px-0 text-body-1 font-weight-medium custom-title-text mt-2">
                                                Equus hemionus
                                            </div>
                                            <div class="d-flex align-center justify-space-between">
                                                <div class="rating d-flex">
                                                    <div><i aria-hidden="true"
                                                            class="v-icon notranslate mr-1 mdi mdi-star theme--light orange--text"
                                                            style="font-size: 15px;"></i><i aria-hidden="true"
                                                                                            class="v-icon notranslate mr-1 mdi mdi-star theme--light orange--text"
                                                                                            style="font-size: 15px;"></i><i
                                                        aria-hidden="true"
                                                        class="v-icon notranslate mr-1 mdi mdi-star theme--light orange--text"
                                                        style="font-size: 15px;"></i><i aria-hidden="true"
                                                                                        class="v-icon notranslate mr-1 mdi mdi-star theme--light orange--text"
                                                                                        style="font-size: 15px;"></i><i
                                                        aria-hidden="true"
                                                        class="v-icon notranslate mr-1 mdi mdi-star theme--light orange--text"
                                                        style="font-size: 15px;"></i> <span class="caption">(5)</span>
                                                    </div>
                                                </div>
                                                <span class="caption font-weight-medium fs-13">158.92$</span></div>
                                        </a><a href="/product/1"
                                               class="pa-4 v-card v-card--flat v-card--hover v-card--link v-sheet theme--light rounded-0 transparent"
                                               tabindex="0" draggable="true" style="height: auto; width: 250px;">
                                            <div class="v-image v-responsive theme--light"
                                                 style="height: 125px; width: 100%;">
                                                <div
                                                    class="v-image__image v-image__image--preload v-image__image--contain"
                                                    style="background-position: center center;"></div>
                                                <div class="v-image__placeholder">
                                                    <div class="row fill-height ma-0 align-center justify-center">
                                                        <div role="progressbar" aria-valuemin="0" aria-valuemax="100"
                                                             class="v-progress-circular v-progress-circular--indeterminate grey--text text--lighten-5"
                                                             style="height: 32px; width: 32px;">
                                                            <svg xmlns="http://www.w3.org/2000/svg"
                                                                 viewBox="22.857142857142858 22.857142857142858 45.714285714285715 45.714285714285715"
                                                                 style="transform: rotate(0deg);">
                                                                <circle fill="transparent" cx="45.714285714285715"
                                                                        cy="45.714285714285715" r="20"
                                                                        stroke-width="5.714285714285714"
                                                                        stroke-dasharray="125.664"
                                                                        stroke-dashoffset="125.66370614359172px"
                                                                        class="v-progress-circular__overlay"></circle>
                                                            </svg>
                                                            <div class="v-progress-circular__info"></div>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="v-responsive__content"></div>
                                            </div>
                                            <div class="px-0 text-body-1 font-weight-medium custom-title-text mt-2">
                                                Microcebus murinus
                                            </div>
                                            <div class="d-flex align-center justify-space-between">
                                                <div class="rating d-flex">
                                                    <div><i aria-hidden="true"
                                                            class="v-icon notranslate mr-1 mdi mdi-star theme--light orange--text"
                                                            style="font-size: 15px;"></i><i aria-hidden="true"
                                                                                            class="v-icon notranslate mr-1 mdi mdi-star theme--light orange--text"
                                                                                            style="font-size: 15px;"></i><i
                                                        aria-hidden="true"
                                                        class="v-icon notranslate mr-1 mdi mdi-star theme--light orange--text"
                                                        style="font-size: 15px;"></i><i aria-hidden="true"
                                                                                        class="v-icon notranslate mr-1 mdi mdi-star theme--light orange--text"
                                                                                        style="font-size: 15px;"></i><i
                                                        aria-hidden="true"
                                                        class="v-icon notranslate mr-1 mdi mdi-star theme--light orange--text"
                                                        style="font-size: 15px;"></i> <span class="caption">(5)</span>
                                                    </div>
                                                </div>
                                                <span class="caption font-weight-medium fs-13">774.52$</span></div>
                                        </a><a href="/product/1"
                                               class="pa-4 v-card v-card--flat v-card--hover v-card--link v-sheet theme--light rounded-0 transparent"
                                               tabindex="0" draggable="true" style="height: auto; width: 250px;">
                                            <div class="v-image v-responsive theme--light"
                                                 style="height: 125px; width: 100%;">
                                                <div
                                                    class="v-image__image v-image__image--preload v-image__image--contain"
                                                    style="background-position: center center;"></div>
                                                <div class="v-image__placeholder">
                                                    <div class="row fill-height ma-0 align-center justify-center">
                                                        <div role="progressbar" aria-valuemin="0" aria-valuemax="100"
                                                             class="v-progress-circular v-progress-circular--indeterminate grey--text text--lighten-5"
                                                             style="height: 32px; width: 32px;">
                                                            <svg xmlns="http://www.w3.org/2000/svg"
                                                                 viewBox="22.857142857142858 22.857142857142858 45.714285714285715 45.714285714285715"
                                                                 style="transform: rotate(0deg);">
                                                                <circle fill="transparent" cx="45.714285714285715"
                                                                        cy="45.714285714285715" r="20"
                                                                        stroke-width="5.714285714285714"
                                                                        stroke-dasharray="125.664"
                                                                        stroke-dashoffset="125.66370614359172px"
                                                                        class="v-progress-circular__overlay"></circle>
                                                            </svg>
                                                            <div class="v-progress-circular__info"></div>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="v-responsive__content"></div>
                                            </div>
                                            <div class="px-0 text-body-1 font-weight-medium custom-title-text mt-2">
                                                Lepilemur rufescens
                                            </div>
                                            <div class="d-flex align-center justify-space-between">
                                                <div class="rating d-flex">
                                                    <div><i aria-hidden="true"
                                                            class="v-icon notranslate mr-1 mdi mdi-star theme--light orange--text"
                                                            style="font-size: 15px;"></i><i aria-hidden="true"
                                                                                            class="v-icon notranslate mr-1 mdi mdi-star theme--light orange--text"
                                                                                            style="font-size: 15px;"></i><i
                                                        aria-hidden="true"
                                                        class="v-icon notranslate mr-1 mdi mdi-star theme--light orange--text"
                                                        style="font-size: 15px;"></i><i aria-hidden="true"
                                                                                        class="v-icon notranslate mr-1 mdi mdi-star theme--light orange--text"
                                                                                        style="font-size: 15px;"></i><i
                                                        aria-hidden="true"
                                                        class="v-icon notranslate mr-1 mdi mdi-star theme--light orange--text"
                                                        style="font-size: 15px;"></i> <span class="caption">(5)</span>
                                                    </div>
                                                </div>
                                                <span class="caption font-weight-medium fs-13">888.08$</span></div>
                                        </a><a href="/product/1"
                                               class="pa-4 v-card v-card--flat v-card--hover v-card--link v-sheet theme--light rounded-0 transparent"
                                               tabindex="0" draggable="true" style="height: auto; width: 250px;">
                                            <div class="v-image v-responsive theme--light"
                                                 style="height: 125px; width: 100%;">
                                                <div
                                                    class="v-image__image v-image__image--preload v-image__image--contain"
                                                    style="background-position: center center;"></div>
                                                <div class="v-image__placeholder">
                                                    <div class="row fill-height ma-0 align-center justify-center">
                                                        <div role="progressbar" aria-valuemin="0" aria-valuemax="100"
                                                             class="v-progress-circular v-progress-circular--indeterminate grey--text text--lighten-5"
                                                             style="height: 32px; width: 32px;">
                                                            <svg xmlns="http://www.w3.org/2000/svg"
                                                                 viewBox="22.857142857142858 22.857142857142858 45.714285714285715 45.714285714285715"
                                                                 style="transform: rotate(0deg);">
                                                                <circle fill="transparent" cx="45.714285714285715"
                                                                        cy="45.714285714285715" r="20"
                                                                        stroke-width="5.714285714285714"
                                                                        stroke-dasharray="125.664"
                                                                        stroke-dashoffset="125.66370614359172px"
                                                                        class="v-progress-circular__overlay"></circle>
                                                            </svg>
                                                            <div class="v-progress-circular__info"></div>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="v-responsive__content"></div>
                                            </div>
                                            <div class="px-0 text-body-1 font-weight-medium custom-title-text mt-2">
                                                Picoides pubescens
                                            </div>
                                            <div class="d-flex align-center justify-space-between">
                                                <div class="rating d-flex">
                                                    <div><i aria-hidden="true"
                                                            class="v-icon notranslate mr-1 mdi mdi-star theme--light orange--text"
                                                            style="font-size: 15px;"></i><i aria-hidden="true"
                                                                                            class="v-icon notranslate mr-1 mdi mdi-star theme--light orange--text"
                                                                                            style="font-size: 15px;"></i><i
                                                        aria-hidden="true"
                                                        class="v-icon notranslate mr-1 mdi mdi-star theme--light orange--text"
                                                        style="font-size: 15px;"></i><i aria-hidden="true"
                                                                                        class="v-icon notranslate mr-1 mdi mdi-star theme--light orange--text"
                                                                                        style="font-size: 15px;"></i><i
                                                        aria-hidden="true"
                                                        class="v-icon notranslate mr-1 mdi mdi-star theme--light orange--text"
                                                        style="font-size: 15px;"></i> <span class="caption">(5)</span>
                                                    </div>
                                                </div>
                                                <span class="caption font-weight-medium fs-13">574.47$</span></div>
                                        </a><a href="/product/1"
                                               class="pa-4 v-card v-card--flat v-card--hover v-card--link v-sheet theme--light rounded-0 transparent"
                                               tabindex="0" draggable="true" style="height: auto; width: 250px;">
                                            <div class="v-image v-responsive theme--light"
                                                 style="height: 125px; width: 100%;">
                                                <div
                                                    class="v-image__image v-image__image--preload v-image__image--contain"
                                                    style="background-position: center center;"></div>
                                                <div class="v-image__placeholder">
                                                    <div class="row fill-height ma-0 align-center justify-center">
                                                        <div role="progressbar" aria-valuemin="0" aria-valuemax="100"
                                                             class="v-progress-circular v-progress-circular--indeterminate grey--text text--lighten-5"
                                                             style="height: 32px; width: 32px;">
                                                            <svg xmlns="http://www.w3.org/2000/svg"
                                                                 viewBox="22.857142857142858 22.857142857142858 45.714285714285715 45.714285714285715"
                                                                 style="transform: rotate(0deg);">
                                                                <circle fill="transparent" cx="45.714285714285715"
                                                                        cy="45.714285714285715" r="20"
                                                                        stroke-width="5.714285714285714"
                                                                        stroke-dasharray="125.664"
                                                                        stroke-dashoffset="125.66370614359172px"
                                                                        class="v-progress-circular__overlay"></circle>
                                                            </svg>
                                                            <div class="v-progress-circular__info"></div>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="v-responsive__content"></div>
                                            </div>
                                            <div class="px-0 text-body-1 font-weight-medium custom-title-text mt-2">
                                                Macropus eugenii
                                            </div>
                                            <div class="d-flex align-center justify-space-between">
                                                <div class="rating d-flex">
                                                    <div><i aria-hidden="true"
                                                            class="v-icon notranslate mr-1 mdi mdi-star theme--light orange--text"
                                                            style="font-size: 15px;"></i><i aria-hidden="true"
                                                                                            class="v-icon notranslate mr-1 mdi mdi-star theme--light orange--text"
                                                                                            style="font-size: 15px;"></i><i
                                                        aria-hidden="true"
                                                        class="v-icon notranslate mr-1 mdi mdi-star theme--light orange--text"
                                                        style="font-size: 15px;"></i><i aria-hidden="true"
                                                                                        class="v-icon notranslate mr-1 mdi mdi-star theme--light orange--text"
                                                                                        style="font-size: 15px;"></i><i
                                                        aria-hidden="true"
                                                        class="v-icon notranslate mr-1 mdi mdi-star theme--light orange--text"
                                                        style="font-size: 15px;"></i> <span class="caption">(5)</span>
                                                    </div>
                                                </div>
                                                <span class="caption font-weight-medium fs-13">230.44$</span></div>
                                        </a><a href="/product/1"
                                               class="pa-4 v-card v-card--flat v-card--hover v-card--link v-sheet theme--light rounded-0 transparent"
                                               tabindex="0" draggable="true" style="height: auto; width: 250px;">
                                            <div class="v-image v-responsive theme--light"
                                                 style="height: 125px; width: 100%;">
                                                <div
                                                    class="v-image__image v-image__image--preload v-image__image--contain"
                                                    style="background-position: center center;"></div>
                                                <div class="v-image__placeholder">
                                                    <div class="row fill-height ma-0 align-center justify-center">
                                                        <div role="progressbar" aria-valuemin="0" aria-valuemax="100"
                                                             class="v-progress-circular v-progress-circular--indeterminate grey--text text--lighten-5"
                                                             style="height: 32px; width: 32px;">
                                                            <svg xmlns="http://www.w3.org/2000/svg"
                                                                 viewBox="22.857142857142858 22.857142857142858 45.714285714285715 45.714285714285715"
                                                                 style="transform: rotate(0deg);">
                                                                <circle fill="transparent" cx="45.714285714285715"
                                                                        cy="45.714285714285715" r="20"
                                                                        stroke-width="5.714285714285714"
                                                                        stroke-dasharray="125.664"
                                                                        stroke-dashoffset="125.66370614359172px"
                                                                        class="v-progress-circular__overlay"></circle>
                                                            </svg>
                                                            <div class="v-progress-circular__info"></div>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="v-responsive__content"></div>
                                            </div>
                                            <div class="px-0 text-body-1 font-weight-medium custom-title-text mt-2">
                                                Castor canadensis
                                            </div>
                                            <div class="d-flex align-center justify-space-between">
                                                <div class="rating d-flex">
                                                    <div><i aria-hidden="true"
                                                            class="v-icon notranslate mr-1 mdi mdi-star theme--light orange--text"
                                                            style="font-size: 15px;"></i><i aria-hidden="true"
                                                                                            class="v-icon notranslate mr-1 mdi mdi-star theme--light orange--text"
                                                                                            style="font-size: 15px;"></i><i
                                                        aria-hidden="true"
                                                        class="v-icon notranslate mr-1 mdi mdi-star theme--light orange--text"
                                                        style="font-size: 15px;"></i><i aria-hidden="true"
                                                                                        class="v-icon notranslate mr-1 mdi mdi-star theme--light orange--text"
                                                                                        style="font-size: 15px;"></i><i
                                                        aria-hidden="true"
                                                        class="v-icon notranslate mr-1 mdi mdi-star theme--light orange--text"
                                                        style="font-size: 15px;"></i> <span class="caption">(5)</span>
                                                    </div>
                                                </div>
                                                <span class="caption font-weight-medium fs-13">218.72$</span></div>
                                        </a></div>
                                    </div>
                                    <div class="v-slide-group__next"><i aria-hidden="true"
                                                                        class="v-icon notranslate mdi mdi-chevron-right theme--light"></i>
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col col-3"><!----></div>
                                <div class="col col-3"><!----></div>
                                <div class="col col-3"><!----></div>
                                <div class="col col-3"><!----></div>
                            </div>
                        </div>
                        <div data-v-6b418512="" class="my-12 elevation-cs-2 v-sheet theme--light" style="width: 100%;">
                            <div data-v-6b418512=""
                                 class="pa-4 ff-poppins product-featured v-card v-card--flat v-sheet theme--light transparent"
                                 style="height: 270px;">
                                <div data-v-6b418512=""
                                     class="d-flex flex-column fill-height align-center justify-center"><h2
                                    data-v-6b418512="" class="text-center primary--text mb-4 font-weight-regular"
                                    style="max-width: 300px;">
                                    Why Apple is the best product to buy in 2020
                                </h2>
                                    <button data-v-6b418512="" type="button"
                                            class="font-weight-bold v-btn v-btn--flat v-btn--rounded v-btn--text theme--light v-size--default primary--text">
                                        <span class="v-btn__content">Read more <i data-v-6b418512="" aria-hidden="true"
                                                                                  class="v-icon notranslate mdi mdi-chevron-right theme--light"></i></span>
                                    </button>
                                </div>
                            </div>
                        </div>
                        <div class="container"><h2 class="text-center display-1 font-weight-light">
                            New Arrivals
                        </h2>
                            <div class="row">
                                <div
                                    class="my-11 v-item-group theme--light v-slide-group v-slide-group--has-affixes v-slide-group--is-overflowing">
                                    <div class="v-slide-group__prev v-slide-group__prev--disabled"><i aria-hidden="true"
                                                                                                      class="v-icon notranslate v-icon--disabled mdi mdi-chevron-left theme--light"></i>
                                    </div>
                                    <div class="v-slide-group__wrapper">
                                        <div class="v-slide-group__content"><a href="/product/1"
                                                                               class="pa-4 v-card v-card--flat v-card--hover v-card--link v-sheet theme--light rounded-0 transparent"
                                                                               tabindex="0" draggable="true"
                                                                               style="height: auto; width: 250px;">
                                            <div class="v-image v-responsive theme--light"
                                                 style="height: 125px; width: 100%;">
                                                <div class="v-responsive__sizer" style="padding-bottom: 56.25%;"></div>
                                                <div class="v-image__image v-image__image--contain"
                                                     style="background-image: url(&quot;https://dummyimage.com/1600x900.png/5fa2dd/ffffff&quot;); background-position: center center;"></div>
                                                <!---->
                                                <div class="v-responsive__content" style="width: 1600px;"></div>
                                            </div>
                                            <div class="px-0 text-body-1 font-weight-medium custom-title-text mt-2">
                                                Spermophilus parryii
                                            </div>
                                            <div class="d-flex align-center justify-space-between">
                                                <div class="rating d-flex">
                                                    <div><i aria-hidden="true"
                                                            class="v-icon notranslate mr-1 mdi mdi-star theme--light orange--text"
                                                            style="font-size: 15px;"></i><i aria-hidden="true"
                                                                                            class="v-icon notranslate mr-1 mdi mdi-star theme--light orange--text"
                                                                                            style="font-size: 15px;"></i><i
                                                        aria-hidden="true"
                                                        class="v-icon notranslate mr-1 mdi mdi-star theme--light orange--text"
                                                        style="font-size: 15px;"></i><i aria-hidden="true"
                                                                                        class="v-icon notranslate mr-1 mdi mdi-star theme--light orange--text"
                                                                                        style="font-size: 15px;"></i><i
                                                        aria-hidden="true"
                                                        class="v-icon notranslate mr-1 mdi mdi-star theme--light orange--text"
                                                        style="font-size: 15px;"></i> <span class="caption">(5)</span>
                                                    </div>
                                                </div>
                                                <span class="caption font-weight-medium fs-13">510.31$</span></div>
                                        </a><a href="/product/1"
                                               class="pa-4 v-card v-card--flat v-card--hover v-card--link v-sheet theme--light rounded-0 transparent"
                                               tabindex="0" draggable="true" style="height: auto; width: 250px;">
                                            <div class="v-image v-responsive theme--light"
                                                 style="height: 125px; width: 100%;">
                                                <div class="v-responsive__sizer" style="padding-bottom: 56.25%;"></div>
                                                <div class="v-image__image v-image__image--contain"
                                                     style="background-image: url(&quot;https://dummyimage.com/1600x900.png/cc0000/ffffff&quot;); background-position: center center;"></div>
                                                <!---->
                                                <div class="v-responsive__content" style="width: 1600px;"></div>
                                            </div>
                                            <div class="px-0 text-body-1 font-weight-medium custom-title-text mt-2">
                                                Zenaida asiatica
                                            </div>
                                            <div class="d-flex align-center justify-space-between">
                                                <div class="rating d-flex">
                                                    <div><i aria-hidden="true"
                                                            class="v-icon notranslate mr-1 mdi mdi-star theme--light orange--text"
                                                            style="font-size: 15px;"></i><i aria-hidden="true"
                                                                                            class="v-icon notranslate mr-1 mdi mdi-star theme--light orange--text"
                                                                                            style="font-size: 15px;"></i><i
                                                        aria-hidden="true"
                                                        class="v-icon notranslate mr-1 mdi mdi-star theme--light orange--text"
                                                        style="font-size: 15px;"></i><i aria-hidden="true"
                                                                                        class="v-icon notranslate mr-1 mdi mdi-star theme--light orange--text"
                                                                                        style="font-size: 15px;"></i><i
                                                        aria-hidden="true"
                                                        class="v-icon notranslate mr-1 mdi mdi-star theme--light orange--text"
                                                        style="font-size: 15px;"></i> <span class="caption">(5)</span>
                                                    </div>
                                                </div>
                                                <span class="caption font-weight-medium fs-13">760.25$</span></div>
                                        </a><a href="/product/1"
                                               class="pa-4 v-card v-card--flat v-card--hover v-card--link v-sheet theme--light rounded-0 transparent"
                                               tabindex="0" draggable="true" style="height: auto; width: 250px;">
                                            <div class="v-image v-responsive theme--light"
                                                 style="height: 125px; width: 100%;">
                                                <div class="v-responsive__sizer" style="padding-bottom: 56.25%;"></div>
                                                <div class="v-image__image v-image__image--contain"
                                                     style="background-image: url(&quot;https://dummyimage.com/1600x900.png/ff4444/ffffff&quot;); background-position: center center;"></div>
                                                <!---->
                                                <div class="v-responsive__content" style="width: 1600px;"></div>
                                            </div>
                                            <div class="px-0 text-body-1 font-weight-medium custom-title-text mt-2">
                                                Phalacrocorax albiventer
                                            </div>
                                            <div class="d-flex align-center justify-space-between">
                                                <div class="rating d-flex">
                                                    <div><i aria-hidden="true"
                                                            class="v-icon notranslate mr-1 mdi mdi-star theme--light orange--text"
                                                            style="font-size: 15px;"></i><i aria-hidden="true"
                                                                                            class="v-icon notranslate mr-1 mdi mdi-star theme--light orange--text"
                                                                                            style="font-size: 15px;"></i><i
                                                        aria-hidden="true"
                                                        class="v-icon notranslate mr-1 mdi mdi-star theme--light orange--text"
                                                        style="font-size: 15px;"></i><i aria-hidden="true"
                                                                                        class="v-icon notranslate mr-1 mdi mdi-star theme--light orange--text"
                                                                                        style="font-size: 15px;"></i><i
                                                        aria-hidden="true"
                                                        class="v-icon notranslate mr-1 mdi mdi-star theme--light orange--text"
                                                        style="font-size: 15px;"></i> <span class="caption">(5)</span>
                                                    </div>
                                                </div>
                                                <span class="caption font-weight-medium fs-13">597.11$</span></div>
                                        </a><a href="/product/1"
                                               class="pa-4 v-card v-card--flat v-card--hover v-card--link v-sheet theme--light rounded-0 transparent"
                                               tabindex="0" draggable="true" style="height: auto; width: 250px;">
                                            <div class="v-image v-responsive theme--light"
                                                 style="height: 125px; width: 100%;">
                                                <div class="v-responsive__sizer" style="padding-bottom: 56.25%;"></div>
                                                <div class="v-image__image v-image__image--contain"
                                                     style="background-image: url(&quot;https://dummyimage.com/1600x900.png/cc0000/ffffff&quot;); background-position: center center;"></div>
                                                <!---->
                                                <div class="v-responsive__content" style="width: 1600px;"></div>
                                            </div>
                                            <div class="px-0 text-body-1 font-weight-medium custom-title-text mt-2">Axis
                                                axis
                                            </div>
                                            <div class="d-flex align-center justify-space-between">
                                                <div class="rating d-flex">
                                                    <div><i aria-hidden="true"
                                                            class="v-icon notranslate mr-1 mdi mdi-star theme--light orange--text"
                                                            style="font-size: 15px;"></i><i aria-hidden="true"
                                                                                            class="v-icon notranslate mr-1 mdi mdi-star theme--light orange--text"
                                                                                            style="font-size: 15px;"></i><i
                                                        aria-hidden="true"
                                                        class="v-icon notranslate mr-1 mdi mdi-star theme--light orange--text"
                                                        style="font-size: 15px;"></i><i aria-hidden="true"
                                                                                        class="v-icon notranslate mr-1 mdi mdi-star theme--light orange--text"
                                                                                        style="font-size: 15px;"></i><i
                                                        aria-hidden="true"
                                                        class="v-icon notranslate mr-1 mdi mdi-star theme--light orange--text"
                                                        style="font-size: 15px;"></i> <span class="caption">(5)</span>
                                                    </div>
                                                </div>
                                                <span class="caption font-weight-medium fs-13">183.9$</span></div>
                                        </a><a href="/product/1"
                                               class="pa-4 v-card v-card--flat v-card--hover v-card--link v-sheet theme--light rounded-0 transparent"
                                               tabindex="0" draggable="true" style="height: auto; width: 250px;">
                                            <div class="v-image v-responsive theme--light"
                                                 style="height: 125px; width: 100%;">
                                                <div class="v-responsive__sizer" style="padding-bottom: 56.25%;"></div>
                                                <div class="v-image__image v-image__image--contain"
                                                     style="background-image: url(&quot;https://dummyimage.com/1600x900.png/dddddd/000000&quot;); background-position: center center;"></div>
                                                <!---->
                                                <div class="v-responsive__content" style="width: 1600px;"></div>
                                            </div>
                                            <div class="px-0 text-body-1 font-weight-medium custom-title-text mt-2">
                                                Castor canadensis
                                            </div>
                                            <div class="d-flex align-center justify-space-between">
                                                <div class="rating d-flex">
                                                    <div><i aria-hidden="true"
                                                            class="v-icon notranslate mr-1 mdi mdi-star theme--light orange--text"
                                                            style="font-size: 15px;"></i><i aria-hidden="true"
                                                                                            class="v-icon notranslate mr-1 mdi mdi-star theme--light orange--text"
                                                                                            style="font-size: 15px;"></i><i
                                                        aria-hidden="true"
                                                        class="v-icon notranslate mr-1 mdi mdi-star theme--light orange--text"
                                                        style="font-size: 15px;"></i><i aria-hidden="true"
                                                                                        class="v-icon notranslate mr-1 mdi mdi-star theme--light orange--text"
                                                                                        style="font-size: 15px;"></i><i
                                                        aria-hidden="true"
                                                        class="v-icon notranslate mr-1 mdi mdi-star theme--light orange--text"
                                                        style="font-size: 15px;"></i> <span class="caption">(5)</span>
                                                    </div>
                                                </div>
                                                <span class="caption font-weight-medium fs-13">39.33$</span></div>
                                        </a><a href="/product/1"
                                               class="pa-4 v-card v-card--flat v-card--hover v-card--link v-sheet theme--light rounded-0 transparent"
                                               tabindex="0" draggable="true" style="height: auto; width: 250px;">
                                            <div class="v-image v-responsive theme--light"
                                                 style="height: 125px; width: 100%;">
                                                <div
                                                    class="v-image__image v-image__image--preload v-image__image--contain"
                                                    style="background-position: center center;"></div>
                                                <div class="v-image__placeholder">
                                                    <div class="row fill-height ma-0 align-center justify-center">
                                                        <div role="progressbar" aria-valuemin="0" aria-valuemax="100"
                                                             class="v-progress-circular v-progress-circular--indeterminate grey--text text--lighten-5"
                                                             style="height: 32px; width: 32px;">
                                                            <svg xmlns="http://www.w3.org/2000/svg"
                                                                 viewBox="22.857142857142858 22.857142857142858 45.714285714285715 45.714285714285715"
                                                                 style="transform: rotate(0deg);">
                                                                <circle fill="transparent" cx="45.714285714285715"
                                                                        cy="45.714285714285715" r="20"
                                                                        stroke-width="5.714285714285714"
                                                                        stroke-dasharray="125.664"
                                                                        stroke-dashoffset="125.66370614359172px"
                                                                        class="v-progress-circular__overlay"></circle>
                                                            </svg>
                                                            <div class="v-progress-circular__info"></div>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="v-responsive__content"></div>
                                            </div>
                                            <div class="px-0 text-body-1 font-weight-medium custom-title-text mt-2">
                                                Psophia viridis
                                            </div>
                                            <div class="d-flex align-center justify-space-between">
                                                <div class="rating d-flex">
                                                    <div><i aria-hidden="true"
                                                            class="v-icon notranslate mr-1 mdi mdi-star theme--light orange--text"
                                                            style="font-size: 15px;"></i><i aria-hidden="true"
                                                                                            class="v-icon notranslate mr-1 mdi mdi-star theme--light orange--text"
                                                                                            style="font-size: 15px;"></i><i
                                                        aria-hidden="true"
                                                        class="v-icon notranslate mr-1 mdi mdi-star theme--light orange--text"
                                                        style="font-size: 15px;"></i><i aria-hidden="true"
                                                                                        class="v-icon notranslate mr-1 mdi mdi-star theme--light orange--text"
                                                                                        style="font-size: 15px;"></i><i
                                                        aria-hidden="true"
                                                        class="v-icon notranslate mr-1 mdi mdi-star theme--light orange--text"
                                                        style="font-size: 15px;"></i> <span class="caption">(5)</span>
                                                    </div>
                                                </div>
                                                <span class="caption font-weight-medium fs-13">934.4$</span></div>
                                        </a><a href="/product/1"
                                               class="pa-4 v-card v-card--flat v-card--hover v-card--link v-sheet theme--light rounded-0 transparent"
                                               tabindex="0" draggable="true" style="height: auto; width: 250px;">
                                            <div class="v-image v-responsive theme--light"
                                                 style="height: 125px; width: 100%;">
                                                <div
                                                    class="v-image__image v-image__image--preload v-image__image--contain"
                                                    style="background-position: center center;"></div>
                                                <div class="v-image__placeholder">
                                                    <div class="row fill-height ma-0 align-center justify-center">
                                                        <div role="progressbar" aria-valuemin="0" aria-valuemax="100"
                                                             class="v-progress-circular v-progress-circular--indeterminate grey--text text--lighten-5"
                                                             style="height: 32px; width: 32px;">
                                                            <svg xmlns="http://www.w3.org/2000/svg"
                                                                 viewBox="22.857142857142858 22.857142857142858 45.714285714285715 45.714285714285715"
                                                                 style="transform: rotate(0deg);">
                                                                <circle fill="transparent" cx="45.714285714285715"
                                                                        cy="45.714285714285715" r="20"
                                                                        stroke-width="5.714285714285714"
                                                                        stroke-dasharray="125.664"
                                                                        stroke-dashoffset="125.66370614359172px"
                                                                        class="v-progress-circular__overlay"></circle>
                                                            </svg>
                                                            <div class="v-progress-circular__info"></div>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="v-responsive__content"></div>
                                            </div>
                                            <div class="px-0 text-body-1 font-weight-medium custom-title-text mt-2">
                                                Felis caracal
                                            </div>
                                            <div class="d-flex align-center justify-space-between">
                                                <div class="rating d-flex">
                                                    <div><i aria-hidden="true"
                                                            class="v-icon notranslate mr-1 mdi mdi-star theme--light orange--text"
                                                            style="font-size: 15px;"></i><i aria-hidden="true"
                                                                                            class="v-icon notranslate mr-1 mdi mdi-star theme--light orange--text"
                                                                                            style="font-size: 15px;"></i><i
                                                        aria-hidden="true"
                                                        class="v-icon notranslate mr-1 mdi mdi-star theme--light orange--text"
                                                        style="font-size: 15px;"></i><i aria-hidden="true"
                                                                                        class="v-icon notranslate mr-1 mdi mdi-star theme--light orange--text"
                                                                                        style="font-size: 15px;"></i><i
                                                        aria-hidden="true"
                                                        class="v-icon notranslate mr-1 mdi mdi-star theme--light orange--text"
                                                        style="font-size: 15px;"></i> <span class="caption">(5)</span>
                                                    </div>
                                                </div>
                                                <span class="caption font-weight-medium fs-13">232.79$</span></div>
                                        </a><a href="/product/1"
                                               class="pa-4 v-card v-card--flat v-card--hover v-card--link v-sheet theme--light rounded-0 transparent"
                                               tabindex="0" draggable="true" style="height: auto; width: 250px;">
                                            <div class="v-image v-responsive theme--light"
                                                 style="height: 125px; width: 100%;">
                                                <div
                                                    class="v-image__image v-image__image--preload v-image__image--contain"
                                                    style="background-position: center center;"></div>
                                                <div class="v-image__placeholder">
                                                    <div class="row fill-height ma-0 align-center justify-center">
                                                        <div role="progressbar" aria-valuemin="0" aria-valuemax="100"
                                                             class="v-progress-circular v-progress-circular--indeterminate grey--text text--lighten-5"
                                                             style="height: 32px; width: 32px;">
                                                            <svg xmlns="http://www.w3.org/2000/svg"
                                                                 viewBox="22.857142857142858 22.857142857142858 45.714285714285715 45.714285714285715"
                                                                 style="transform: rotate(0deg);">
                                                                <circle fill="transparent" cx="45.714285714285715"
                                                                        cy="45.714285714285715" r="20"
                                                                        stroke-width="5.714285714285714"
                                                                        stroke-dasharray="125.664"
                                                                        stroke-dashoffset="125.66370614359172px"
                                                                        class="v-progress-circular__overlay"></circle>
                                                            </svg>
                                                            <div class="v-progress-circular__info"></div>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="v-responsive__content"></div>
                                            </div>
                                            <div class="px-0 text-body-1 font-weight-medium custom-title-text mt-2">
                                                Felis yagouaroundi
                                            </div>
                                            <div class="d-flex align-center justify-space-between">
                                                <div class="rating d-flex">
                                                    <div><i aria-hidden="true"
                                                            class="v-icon notranslate mr-1 mdi mdi-star theme--light orange--text"
                                                            style="font-size: 15px;"></i><i aria-hidden="true"
                                                                                            class="v-icon notranslate mr-1 mdi mdi-star theme--light orange--text"
                                                                                            style="font-size: 15px;"></i><i
                                                        aria-hidden="true"
                                                        class="v-icon notranslate mr-1 mdi mdi-star theme--light orange--text"
                                                        style="font-size: 15px;"></i><i aria-hidden="true"
                                                                                        class="v-icon notranslate mr-1 mdi mdi-star theme--light orange--text"
                                                                                        style="font-size: 15px;"></i><i
                                                        aria-hidden="true"
                                                        class="v-icon notranslate mr-1 mdi mdi-star theme--light orange--text"
                                                        style="font-size: 15px;"></i> <span class="caption">(5)</span>
                                                    </div>
                                                </div>
                                                <span class="caption font-weight-medium fs-13">558.23$</span></div>
                                        </a><a href="/product/1"
                                               class="pa-4 v-card v-card--flat v-card--hover v-card--link v-sheet theme--light rounded-0 transparent"
                                               tabindex="0" draggable="true" style="height: auto; width: 250px;">
                                            <div class="v-image v-responsive theme--light"
                                                 style="height: 125px; width: 100%;">
                                                <div
                                                    class="v-image__image v-image__image--preload v-image__image--contain"
                                                    style="background-position: center center;"></div>
                                                <div class="v-image__placeholder">
                                                    <div class="row fill-height ma-0 align-center justify-center">
                                                        <div role="progressbar" aria-valuemin="0" aria-valuemax="100"
                                                             class="v-progress-circular v-progress-circular--indeterminate grey--text text--lighten-5"
                                                             style="height: 32px; width: 32px;">
                                                            <svg xmlns="http://www.w3.org/2000/svg"
                                                                 viewBox="22.857142857142858 22.857142857142858 45.714285714285715 45.714285714285715"
                                                                 style="transform: rotate(0deg);">
                                                                <circle fill="transparent" cx="45.714285714285715"
                                                                        cy="45.714285714285715" r="20"
                                                                        stroke-width="5.714285714285714"
                                                                        stroke-dasharray="125.664"
                                                                        stroke-dashoffset="125.66370614359172px"
                                                                        class="v-progress-circular__overlay"></circle>
                                                            </svg>
                                                            <div class="v-progress-circular__info"></div>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="v-responsive__content"></div>
                                            </div>
                                            <div class="px-0 text-body-1 font-weight-medium custom-title-text mt-2">Axis
                                                axis
                                            </div>
                                            <div class="d-flex align-center justify-space-between">
                                                <div class="rating d-flex">
                                                    <div><i aria-hidden="true"
                                                            class="v-icon notranslate mr-1 mdi mdi-star theme--light orange--text"
                                                            style="font-size: 15px;"></i><i aria-hidden="true"
                                                                                            class="v-icon notranslate mr-1 mdi mdi-star theme--light orange--text"
                                                                                            style="font-size: 15px;"></i><i
                                                        aria-hidden="true"
                                                        class="v-icon notranslate mr-1 mdi mdi-star theme--light orange--text"
                                                        style="font-size: 15px;"></i><i aria-hidden="true"
                                                                                        class="v-icon notranslate mr-1 mdi mdi-star theme--light orange--text"
                                                                                        style="font-size: 15px;"></i><i
                                                        aria-hidden="true"
                                                        class="v-icon notranslate mr-1 mdi mdi-star theme--light orange--text"
                                                        style="font-size: 15px;"></i> <span class="caption">(5)</span>
                                                    </div>
                                                </div>
                                                <span class="caption font-weight-medium fs-13">369.35$</span></div>
                                        </a><a href="/product/1"
                                               class="pa-4 v-card v-card--flat v-card--hover v-card--link v-sheet theme--light rounded-0 transparent"
                                               tabindex="0" draggable="true" style="height: auto; width: 250px;">
                                            <div class="v-image v-responsive theme--light"
                                                 style="height: 125px; width: 100%;">
                                                <div
                                                    class="v-image__image v-image__image--preload v-image__image--contain"
                                                    style="background-position: center center;"></div>
                                                <div class="v-image__placeholder">
                                                    <div class="row fill-height ma-0 align-center justify-center">
                                                        <div role="progressbar" aria-valuemin="0" aria-valuemax="100"
                                                             class="v-progress-circular v-progress-circular--indeterminate grey--text text--lighten-5"
                                                             style="height: 32px; width: 32px;">
                                                            <svg xmlns="http://www.w3.org/2000/svg"
                                                                 viewBox="22.857142857142858 22.857142857142858 45.714285714285715 45.714285714285715"
                                                                 style="transform: rotate(0deg);">
                                                                <circle fill="transparent" cx="45.714285714285715"
                                                                        cy="45.714285714285715" r="20"
                                                                        stroke-width="5.714285714285714"
                                                                        stroke-dasharray="125.664"
                                                                        stroke-dashoffset="125.66370614359172px"
                                                                        class="v-progress-circular__overlay"></circle>
                                                            </svg>
                                                            <div class="v-progress-circular__info"></div>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="v-responsive__content"></div>
                                            </div>
                                            <div class="px-0 text-body-1 font-weight-medium custom-title-text mt-2">
                                                Acinynox jubatus
                                            </div>
                                            <div class="d-flex align-center justify-space-between">
                                                <div class="rating d-flex">
                                                    <div><i aria-hidden="true"
                                                            class="v-icon notranslate mr-1 mdi mdi-star theme--light orange--text"
                                                            style="font-size: 15px;"></i><i aria-hidden="true"
                                                                                            class="v-icon notranslate mr-1 mdi mdi-star theme--light orange--text"
                                                                                            style="font-size: 15px;"></i><i
                                                        aria-hidden="true"
                                                        class="v-icon notranslate mr-1 mdi mdi-star theme--light orange--text"
                                                        style="font-size: 15px;"></i><i aria-hidden="true"
                                                                                        class="v-icon notranslate mr-1 mdi mdi-star theme--light orange--text"
                                                                                        style="font-size: 15px;"></i><i
                                                        aria-hidden="true"
                                                        class="v-icon notranslate mr-1 mdi mdi-star theme--light orange--text"
                                                        style="font-size: 15px;"></i> <span class="caption">(5)</span>
                                                    </div>
                                                </div>
                                                <span class="caption font-weight-medium fs-13">762.95$</span></div>
                                        </a><a href="/product/1"
                                               class="pa-4 v-card v-card--flat v-card--hover v-card--link v-sheet theme--light rounded-0 transparent"
                                               tabindex="0" draggable="true" style="height: auto; width: 250px;">
                                            <div class="v-image v-responsive theme--light"
                                                 style="height: 125px; width: 100%;">
                                                <div
                                                    class="v-image__image v-image__image--preload v-image__image--contain"
                                                    style="background-position: center center;"></div>
                                                <div class="v-image__placeholder">
                                                    <div class="row fill-height ma-0 align-center justify-center">
                                                        <div role="progressbar" aria-valuemin="0" aria-valuemax="100"
                                                             class="v-progress-circular v-progress-circular--indeterminate grey--text text--lighten-5"
                                                             style="height: 32px; width: 32px;">
                                                            <svg xmlns="http://www.w3.org/2000/svg"
                                                                 viewBox="22.857142857142858 22.857142857142858 45.714285714285715 45.714285714285715"
                                                                 style="transform: rotate(0deg);">
                                                                <circle fill="transparent" cx="45.714285714285715"
                                                                        cy="45.714285714285715" r="20"
                                                                        stroke-width="5.714285714285714"
                                                                        stroke-dasharray="125.664"
                                                                        stroke-dashoffset="125.66370614359172px"
                                                                        class="v-progress-circular__overlay"></circle>
                                                            </svg>
                                                            <div class="v-progress-circular__info"></div>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="v-responsive__content"></div>
                                            </div>
                                            <div class="px-0 text-body-1 font-weight-medium custom-title-text mt-2">
                                                Otaria flavescens
                                            </div>
                                            <div class="d-flex align-center justify-space-between">
                                                <div class="rating d-flex">
                                                    <div><i aria-hidden="true"
                                                            class="v-icon notranslate mr-1 mdi mdi-star theme--light orange--text"
                                                            style="font-size: 15px;"></i><i aria-hidden="true"
                                                                                            class="v-icon notranslate mr-1 mdi mdi-star theme--light orange--text"
                                                                                            style="font-size: 15px;"></i><i
                                                        aria-hidden="true"
                                                        class="v-icon notranslate mr-1 mdi mdi-star theme--light orange--text"
                                                        style="font-size: 15px;"></i><i aria-hidden="true"
                                                                                        class="v-icon notranslate mr-1 mdi mdi-star theme--light orange--text"
                                                                                        style="font-size: 15px;"></i><i
                                                        aria-hidden="true"
                                                        class="v-icon notranslate mr-1 mdi mdi-star theme--light orange--text"
                                                        style="font-size: 15px;"></i> <span class="caption">(5)</span>
                                                    </div>
                                                </div>
                                                <span class="caption font-weight-medium fs-13">929.81$</span></div>
                                        </a><a href="/product/1"
                                               class="pa-4 v-card v-card--flat v-card--hover v-card--link v-sheet theme--light rounded-0 transparent"
                                               tabindex="0" draggable="true" style="height: auto; width: 250px;">
                                            <div class="v-image v-responsive theme--light"
                                                 style="height: 125px; width: 100%;">
                                                <div
                                                    class="v-image__image v-image__image--preload v-image__image--contain"
                                                    style="background-position: center center;"></div>
                                                <div class="v-image__placeholder">
                                                    <div class="row fill-height ma-0 align-center justify-center">
                                                        <div role="progressbar" aria-valuemin="0" aria-valuemax="100"
                                                             class="v-progress-circular v-progress-circular--indeterminate grey--text text--lighten-5"
                                                             style="height: 32px; width: 32px;">
                                                            <svg xmlns="http://www.w3.org/2000/svg"
                                                                 viewBox="22.857142857142858 22.857142857142858 45.714285714285715 45.714285714285715"
                                                                 style="transform: rotate(0deg);">
                                                                <circle fill="transparent" cx="45.714285714285715"
                                                                        cy="45.714285714285715" r="20"
                                                                        stroke-width="5.714285714285714"
                                                                        stroke-dasharray="125.664"
                                                                        stroke-dashoffset="125.66370614359172px"
                                                                        class="v-progress-circular__overlay"></circle>
                                                            </svg>
                                                            <div class="v-progress-circular__info"></div>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="v-responsive__content"></div>
                                            </div>
                                            <div class="px-0 text-body-1 font-weight-medium custom-title-text mt-2">
                                                Pseudalopex gymnocercus
                                            </div>
                                            <div class="d-flex align-center justify-space-between">
                                                <div class="rating d-flex">
                                                    <div><i aria-hidden="true"
                                                            class="v-icon notranslate mr-1 mdi mdi-star theme--light orange--text"
                                                            style="font-size: 15px;"></i><i aria-hidden="true"
                                                                                            class="v-icon notranslate mr-1 mdi mdi-star theme--light orange--text"
                                                                                            style="font-size: 15px;"></i><i
                                                        aria-hidden="true"
                                                        class="v-icon notranslate mr-1 mdi mdi-star theme--light orange--text"
                                                        style="font-size: 15px;"></i><i aria-hidden="true"
                                                                                        class="v-icon notranslate mr-1 mdi mdi-star theme--light orange--text"
                                                                                        style="font-size: 15px;"></i><i
                                                        aria-hidden="true"
                                                        class="v-icon notranslate mr-1 mdi mdi-star theme--light orange--text"
                                                        style="font-size: 15px;"></i> <span class="caption">(5)</span>
                                                    </div>
                                                </div>
                                                <span class="caption font-weight-medium fs-13">30$</span></div>
                                        </a><a href="/product/1"
                                               class="pa-4 v-card v-card--flat v-card--hover v-card--link v-sheet theme--light rounded-0 transparent"
                                               tabindex="0" draggable="true" style="height: auto; width: 250px;">
                                            <div class="v-image v-responsive theme--light"
                                                 style="height: 125px; width: 100%;">
                                                <div
                                                    class="v-image__image v-image__image--preload v-image__image--contain"
                                                    style="background-position: center center;"></div>
                                                <div class="v-image__placeholder">
                                                    <div class="row fill-height ma-0 align-center justify-center">
                                                        <div role="progressbar" aria-valuemin="0" aria-valuemax="100"
                                                             class="v-progress-circular v-progress-circular--indeterminate grey--text text--lighten-5"
                                                             style="height: 32px; width: 32px;">
                                                            <svg xmlns="http://www.w3.org/2000/svg"
                                                                 viewBox="22.857142857142858 22.857142857142858 45.714285714285715 45.714285714285715"
                                                                 style="transform: rotate(0deg);">
                                                                <circle fill="transparent" cx="45.714285714285715"
                                                                        cy="45.714285714285715" r="20"
                                                                        stroke-width="5.714285714285714"
                                                                        stroke-dasharray="125.664"
                                                                        stroke-dashoffset="125.66370614359172px"
                                                                        class="v-progress-circular__overlay"></circle>
                                                            </svg>
                                                            <div class="v-progress-circular__info"></div>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="v-responsive__content"></div>
                                            </div>
                                            <div class="px-0 text-body-1 font-weight-medium custom-title-text mt-2">
                                                Trachyphonus vaillantii
                                            </div>
                                            <div class="d-flex align-center justify-space-between">
                                                <div class="rating d-flex">
                                                    <div><i aria-hidden="true"
                                                            class="v-icon notranslate mr-1 mdi mdi-star theme--light orange--text"
                                                            style="font-size: 15px;"></i><i aria-hidden="true"
                                                                                            class="v-icon notranslate mr-1 mdi mdi-star theme--light orange--text"
                                                                                            style="font-size: 15px;"></i><i
                                                        aria-hidden="true"
                                                        class="v-icon notranslate mr-1 mdi mdi-star theme--light orange--text"
                                                        style="font-size: 15px;"></i><i aria-hidden="true"
                                                                                        class="v-icon notranslate mr-1 mdi mdi-star theme--light orange--text"
                                                                                        style="font-size: 15px;"></i><i
                                                        aria-hidden="true"
                                                        class="v-icon notranslate mr-1 mdi mdi-star theme--light orange--text"
                                                        style="font-size: 15px;"></i> <span class="caption">(5)</span>
                                                    </div>
                                                </div>
                                                <span class="caption font-weight-medium fs-13">348.47$</span></div>
                                        </a><a href="/product/1"
                                               class="pa-4 v-card v-card--flat v-card--hover v-card--link v-sheet theme--light rounded-0 transparent"
                                               tabindex="0" draggable="true" style="height: auto; width: 250px;">
                                            <div class="v-image v-responsive theme--light"
                                                 style="height: 125px; width: 100%;">
                                                <div
                                                    class="v-image__image v-image__image--preload v-image__image--contain"
                                                    style="background-position: center center;"></div>
                                                <div class="v-image__placeholder">
                                                    <div class="row fill-height ma-0 align-center justify-center">
                                                        <div role="progressbar" aria-valuemin="0" aria-valuemax="100"
                                                             class="v-progress-circular v-progress-circular--indeterminate grey--text text--lighten-5"
                                                             style="height: 32px; width: 32px;">
                                                            <svg xmlns="http://www.w3.org/2000/svg"
                                                                 viewBox="22.857142857142858 22.857142857142858 45.714285714285715 45.714285714285715"
                                                                 style="transform: rotate(0deg);">
                                                                <circle fill="transparent" cx="45.714285714285715"
                                                                        cy="45.714285714285715" r="20"
                                                                        stroke-width="5.714285714285714"
                                                                        stroke-dasharray="125.664"
                                                                        stroke-dashoffset="125.66370614359172px"
                                                                        class="v-progress-circular__overlay"></circle>
                                                            </svg>
                                                            <div class="v-progress-circular__info"></div>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="v-responsive__content"></div>
                                            </div>
                                            <div class="px-0 text-body-1 font-weight-medium custom-title-text mt-2">
                                                Pelecanus conspicillatus
                                            </div>
                                            <div class="d-flex align-center justify-space-between">
                                                <div class="rating d-flex">
                                                    <div><i aria-hidden="true"
                                                            class="v-icon notranslate mr-1 mdi mdi-star theme--light orange--text"
                                                            style="font-size: 15px;"></i><i aria-hidden="true"
                                                                                            class="v-icon notranslate mr-1 mdi mdi-star theme--light orange--text"
                                                                                            style="font-size: 15px;"></i><i
                                                        aria-hidden="true"
                                                        class="v-icon notranslate mr-1 mdi mdi-star theme--light orange--text"
                                                        style="font-size: 15px;"></i><i aria-hidden="true"
                                                                                        class="v-icon notranslate mr-1 mdi mdi-star theme--light orange--text"
                                                                                        style="font-size: 15px;"></i><i
                                                        aria-hidden="true"
                                                        class="v-icon notranslate mr-1 mdi mdi-star theme--light orange--text"
                                                        style="font-size: 15px;"></i> <span class="caption">(5)</span>
                                                    </div>
                                                </div>
                                                <span class="caption font-weight-medium fs-13">893.54$</span></div>
                                        </a><a href="/product/1"
                                               class="pa-4 v-card v-card--flat v-card--hover v-card--link v-sheet theme--light rounded-0 transparent"
                                               tabindex="0" draggable="true" style="height: auto; width: 250px;">
                                            <div class="v-image v-responsive theme--light"
                                                 style="height: 125px; width: 100%;">
                                                <div
                                                    class="v-image__image v-image__image--preload v-image__image--contain"
                                                    style="background-position: center center;"></div>
                                                <div class="v-image__placeholder">
                                                    <div class="row fill-height ma-0 align-center justify-center">
                                                        <div role="progressbar" aria-valuemin="0" aria-valuemax="100"
                                                             class="v-progress-circular v-progress-circular--indeterminate grey--text text--lighten-5"
                                                             style="height: 32px; width: 32px;">
                                                            <svg xmlns="http://www.w3.org/2000/svg"
                                                                 viewBox="22.857142857142858 22.857142857142858 45.714285714285715 45.714285714285715"
                                                                 style="transform: rotate(0deg);">
                                                                <circle fill="transparent" cx="45.714285714285715"
                                                                        cy="45.714285714285715" r="20"
                                                                        stroke-width="5.714285714285714"
                                                                        stroke-dasharray="125.664"
                                                                        stroke-dashoffset="125.66370614359172px"
                                                                        class="v-progress-circular__overlay"></circle>
                                                            </svg>
                                                            <div class="v-progress-circular__info"></div>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="v-responsive__content"></div>
                                            </div>
                                            <div class="px-0 text-body-1 font-weight-medium custom-title-text mt-2">
                                                Equus hemionus
                                            </div>
                                            <div class="d-flex align-center justify-space-between">
                                                <div class="rating d-flex">
                                                    <div><i aria-hidden="true"
                                                            class="v-icon notranslate mr-1 mdi mdi-star theme--light orange--text"
                                                            style="font-size: 15px;"></i><i aria-hidden="true"
                                                                                            class="v-icon notranslate mr-1 mdi mdi-star theme--light orange--text"
                                                                                            style="font-size: 15px;"></i><i
                                                        aria-hidden="true"
                                                        class="v-icon notranslate mr-1 mdi mdi-star theme--light orange--text"
                                                        style="font-size: 15px;"></i><i aria-hidden="true"
                                                                                        class="v-icon notranslate mr-1 mdi mdi-star theme--light orange--text"
                                                                                        style="font-size: 15px;"></i><i
                                                        aria-hidden="true"
                                                        class="v-icon notranslate mr-1 mdi mdi-star theme--light orange--text"
                                                        style="font-size: 15px;"></i> <span class="caption">(5)</span>
                                                    </div>
                                                </div>
                                                <span class="caption font-weight-medium fs-13">158.92$</span></div>
                                        </a><a href="/product/1"
                                               class="pa-4 v-card v-card--flat v-card--hover v-card--link v-sheet theme--light rounded-0 transparent"
                                               tabindex="0" draggable="true" style="height: auto; width: 250px;">
                                            <div class="v-image v-responsive theme--light"
                                                 style="height: 125px; width: 100%;">
                                                <div
                                                    class="v-image__image v-image__image--preload v-image__image--contain"
                                                    style="background-position: center center;"></div>
                                                <div class="v-image__placeholder">
                                                    <div class="row fill-height ma-0 align-center justify-center">
                                                        <div role="progressbar" aria-valuemin="0" aria-valuemax="100"
                                                             class="v-progress-circular v-progress-circular--indeterminate grey--text text--lighten-5"
                                                             style="height: 32px; width: 32px;">
                                                            <svg xmlns="http://www.w3.org/2000/svg"
                                                                 viewBox="22.857142857142858 22.857142857142858 45.714285714285715 45.714285714285715"
                                                                 style="transform: rotate(0deg);">
                                                                <circle fill="transparent" cx="45.714285714285715"
                                                                        cy="45.714285714285715" r="20"
                                                                        stroke-width="5.714285714285714"
                                                                        stroke-dasharray="125.664"
                                                                        stroke-dashoffset="125.66370614359172px"
                                                                        class="v-progress-circular__overlay"></circle>
                                                            </svg>
                                                            <div class="v-progress-circular__info"></div>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="v-responsive__content"></div>
                                            </div>
                                            <div class="px-0 text-body-1 font-weight-medium custom-title-text mt-2">
                                                Microcebus murinus
                                            </div>
                                            <div class="d-flex align-center justify-space-between">
                                                <div class="rating d-flex">
                                                    <div><i aria-hidden="true"
                                                            class="v-icon notranslate mr-1 mdi mdi-star theme--light orange--text"
                                                            style="font-size: 15px;"></i><i aria-hidden="true"
                                                                                            class="v-icon notranslate mr-1 mdi mdi-star theme--light orange--text"
                                                                                            style="font-size: 15px;"></i><i
                                                        aria-hidden="true"
                                                        class="v-icon notranslate mr-1 mdi mdi-star theme--light orange--text"
                                                        style="font-size: 15px;"></i><i aria-hidden="true"
                                                                                        class="v-icon notranslate mr-1 mdi mdi-star theme--light orange--text"
                                                                                        style="font-size: 15px;"></i><i
                                                        aria-hidden="true"
                                                        class="v-icon notranslate mr-1 mdi mdi-star theme--light orange--text"
                                                        style="font-size: 15px;"></i> <span class="caption">(5)</span>
                                                    </div>
                                                </div>
                                                <span class="caption font-weight-medium fs-13">774.52$</span></div>
                                        </a><a href="/product/1"
                                               class="pa-4 v-card v-card--flat v-card--hover v-card--link v-sheet theme--light rounded-0 transparent"
                                               tabindex="0" draggable="true" style="height: auto; width: 250px;">
                                            <div class="v-image v-responsive theme--light"
                                                 style="height: 125px; width: 100%;">
                                                <div
                                                    class="v-image__image v-image__image--preload v-image__image--contain"
                                                    style="background-position: center center;"></div>
                                                <div class="v-image__placeholder">
                                                    <div class="row fill-height ma-0 align-center justify-center">
                                                        <div role="progressbar" aria-valuemin="0" aria-valuemax="100"
                                                             class="v-progress-circular v-progress-circular--indeterminate grey--text text--lighten-5"
                                                             style="height: 32px; width: 32px;">
                                                            <svg xmlns="http://www.w3.org/2000/svg"
                                                                 viewBox="22.857142857142858 22.857142857142858 45.714285714285715 45.714285714285715"
                                                                 style="transform: rotate(0deg);">
                                                                <circle fill="transparent" cx="45.714285714285715"
                                                                        cy="45.714285714285715" r="20"
                                                                        stroke-width="5.714285714285714"
                                                                        stroke-dasharray="125.664"
                                                                        stroke-dashoffset="125.66370614359172px"
                                                                        class="v-progress-circular__overlay"></circle>
                                                            </svg>
                                                            <div class="v-progress-circular__info"></div>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="v-responsive__content"></div>
                                            </div>
                                            <div class="px-0 text-body-1 font-weight-medium custom-title-text mt-2">
                                                Lepilemur rufescens
                                            </div>
                                            <div class="d-flex align-center justify-space-between">
                                                <div class="rating d-flex">
                                                    <div><i aria-hidden="true"
                                                            class="v-icon notranslate mr-1 mdi mdi-star theme--light orange--text"
                                                            style="font-size: 15px;"></i><i aria-hidden="true"
                                                                                            class="v-icon notranslate mr-1 mdi mdi-star theme--light orange--text"
                                                                                            style="font-size: 15px;"></i><i
                                                        aria-hidden="true"
                                                        class="v-icon notranslate mr-1 mdi mdi-star theme--light orange--text"
                                                        style="font-size: 15px;"></i><i aria-hidden="true"
                                                                                        class="v-icon notranslate mr-1 mdi mdi-star theme--light orange--text"
                                                                                        style="font-size: 15px;"></i><i
                                                        aria-hidden="true"
                                                        class="v-icon notranslate mr-1 mdi mdi-star theme--light orange--text"
                                                        style="font-size: 15px;"></i> <span class="caption">(5)</span>
                                                    </div>
                                                </div>
                                                <span class="caption font-weight-medium fs-13">888.08$</span></div>
                                        </a><a href="/product/1"
                                               class="pa-4 v-card v-card--flat v-card--hover v-card--link v-sheet theme--light rounded-0 transparent"
                                               tabindex="0" draggable="true" style="height: auto; width: 250px;">
                                            <div class="v-image v-responsive theme--light"
                                                 style="height: 125px; width: 100%;">
                                                <div
                                                    class="v-image__image v-image__image--preload v-image__image--contain"
                                                    style="background-position: center center;"></div>
                                                <div class="v-image__placeholder">
                                                    <div class="row fill-height ma-0 align-center justify-center">
                                                        <div role="progressbar" aria-valuemin="0" aria-valuemax="100"
                                                             class="v-progress-circular v-progress-circular--indeterminate grey--text text--lighten-5"
                                                             style="height: 32px; width: 32px;">
                                                            <svg xmlns="http://www.w3.org/2000/svg"
                                                                 viewBox="22.857142857142858 22.857142857142858 45.714285714285715 45.714285714285715"
                                                                 style="transform: rotate(0deg);">
                                                                <circle fill="transparent" cx="45.714285714285715"
                                                                        cy="45.714285714285715" r="20"
                                                                        stroke-width="5.714285714285714"
                                                                        stroke-dasharray="125.664"
                                                                        stroke-dashoffset="125.66370614359172px"
                                                                        class="v-progress-circular__overlay"></circle>
                                                            </svg>
                                                            <div class="v-progress-circular__info"></div>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="v-responsive__content"></div>
                                            </div>
                                            <div class="px-0 text-body-1 font-weight-medium custom-title-text mt-2">
                                                Picoides pubescens
                                            </div>
                                            <div class="d-flex align-center justify-space-between">
                                                <div class="rating d-flex">
                                                    <div><i aria-hidden="true"
                                                            class="v-icon notranslate mr-1 mdi mdi-star theme--light orange--text"
                                                            style="font-size: 15px;"></i><i aria-hidden="true"
                                                                                            class="v-icon notranslate mr-1 mdi mdi-star theme--light orange--text"
                                                                                            style="font-size: 15px;"></i><i
                                                        aria-hidden="true"
                                                        class="v-icon notranslate mr-1 mdi mdi-star theme--light orange--text"
                                                        style="font-size: 15px;"></i><i aria-hidden="true"
                                                                                        class="v-icon notranslate mr-1 mdi mdi-star theme--light orange--text"
                                                                                        style="font-size: 15px;"></i><i
                                                        aria-hidden="true"
                                                        class="v-icon notranslate mr-1 mdi mdi-star theme--light orange--text"
                                                        style="font-size: 15px;"></i> <span class="caption">(5)</span>
                                                    </div>
                                                </div>
                                                <span class="caption font-weight-medium fs-13">574.47$</span></div>
                                        </a><a href="/product/1"
                                               class="pa-4 v-card v-card--flat v-card--hover v-card--link v-sheet theme--light rounded-0 transparent"
                                               tabindex="0" draggable="true" style="height: auto; width: 250px;">
                                            <div class="v-image v-responsive theme--light"
                                                 style="height: 125px; width: 100%;">
                                                <div
                                                    class="v-image__image v-image__image--preload v-image__image--contain"
                                                    style="background-position: center center;"></div>
                                                <div class="v-image__placeholder">
                                                    <div class="row fill-height ma-0 align-center justify-center">
                                                        <div role="progressbar" aria-valuemin="0" aria-valuemax="100"
                                                             class="v-progress-circular v-progress-circular--indeterminate grey--text text--lighten-5"
                                                             style="height: 32px; width: 32px;">
                                                            <svg xmlns="http://www.w3.org/2000/svg"
                                                                 viewBox="22.857142857142858 22.857142857142858 45.714285714285715 45.714285714285715"
                                                                 style="transform: rotate(0deg);">
                                                                <circle fill="transparent" cx="45.714285714285715"
                                                                        cy="45.714285714285715" r="20"
                                                                        stroke-width="5.714285714285714"
                                                                        stroke-dasharray="125.664"
                                                                        stroke-dashoffset="125.66370614359172px"
                                                                        class="v-progress-circular__overlay"></circle>
                                                            </svg>
                                                            <div class="v-progress-circular__info"></div>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="v-responsive__content"></div>
                                            </div>
                                            <div class="px-0 text-body-1 font-weight-medium custom-title-text mt-2">
                                                Macropus eugenii
                                            </div>
                                            <div class="d-flex align-center justify-space-between">
                                                <div class="rating d-flex">
                                                    <div><i aria-hidden="true"
                                                            class="v-icon notranslate mr-1 mdi mdi-star theme--light orange--text"
                                                            style="font-size: 15px;"></i><i aria-hidden="true"
                                                                                            class="v-icon notranslate mr-1 mdi mdi-star theme--light orange--text"
                                                                                            style="font-size: 15px;"></i><i
                                                        aria-hidden="true"
                                                        class="v-icon notranslate mr-1 mdi mdi-star theme--light orange--text"
                                                        style="font-size: 15px;"></i><i aria-hidden="true"
                                                                                        class="v-icon notranslate mr-1 mdi mdi-star theme--light orange--text"
                                                                                        style="font-size: 15px;"></i><i
                                                        aria-hidden="true"
                                                        class="v-icon notranslate mr-1 mdi mdi-star theme--light orange--text"
                                                        style="font-size: 15px;"></i> <span class="caption">(5)</span>
                                                    </div>
                                                </div>
                                                <span class="caption font-weight-medium fs-13">230.44$</span></div>
                                        </a><a href="/product/1"
                                               class="pa-4 v-card v-card--flat v-card--hover v-card--link v-sheet theme--light rounded-0 transparent"
                                               tabindex="0" draggable="true" style="height: auto; width: 250px;">
                                            <div class="v-image v-responsive theme--light"
                                                 style="height: 125px; width: 100%;">
                                                <div
                                                    class="v-image__image v-image__image--preload v-image__image--contain"
                                                    style="background-position: center center;"></div>
                                                <div class="v-image__placeholder">
                                                    <div class="row fill-height ma-0 align-center justify-center">
                                                        <div role="progressbar" aria-valuemin="0" aria-valuemax="100"
                                                             class="v-progress-circular v-progress-circular--indeterminate grey--text text--lighten-5"
                                                             style="height: 32px; width: 32px;">
                                                            <svg xmlns="http://www.w3.org/2000/svg"
                                                                 viewBox="22.857142857142858 22.857142857142858 45.714285714285715 45.714285714285715"
                                                                 style="transform: rotate(0deg);">
                                                                <circle fill="transparent" cx="45.714285714285715"
                                                                        cy="45.714285714285715" r="20"
                                                                        stroke-width="5.714285714285714"
                                                                        stroke-dasharray="125.664"
                                                                        stroke-dashoffset="125.66370614359172px"
                                                                        class="v-progress-circular__overlay"></circle>
                                                            </svg>
                                                            <div class="v-progress-circular__info"></div>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="v-responsive__content"></div>
                                            </div>
                                            <div class="px-0 text-body-1 font-weight-medium custom-title-text mt-2">
                                                Castor canadensis
                                            </div>
                                            <div class="d-flex align-center justify-space-between">
                                                <div class="rating d-flex">
                                                    <div><i aria-hidden="true"
                                                            class="v-icon notranslate mr-1 mdi mdi-star theme--light orange--text"
                                                            style="font-size: 15px;"></i><i aria-hidden="true"
                                                                                            class="v-icon notranslate mr-1 mdi mdi-star theme--light orange--text"
                                                                                            style="font-size: 15px;"></i><i
                                                        aria-hidden="true"
                                                        class="v-icon notranslate mr-1 mdi mdi-star theme--light orange--text"
                                                        style="font-size: 15px;"></i><i aria-hidden="true"
                                                                                        class="v-icon notranslate mr-1 mdi mdi-star theme--light orange--text"
                                                                                        style="font-size: 15px;"></i><i
                                                        aria-hidden="true"
                                                        class="v-icon notranslate mr-1 mdi mdi-star theme--light orange--text"
                                                        style="font-size: 15px;"></i> <span class="caption">(5)</span>
                                                    </div>
                                                </div>
                                                <span class="caption font-weight-medium fs-13">218.72$</span></div>
                                        </a></div>
                                    </div>
                                    <div class="v-slide-group__next"><i aria-hidden="true"
                                                                        class="v-icon notranslate mdi mdi-chevron-right theme--light"></i>
                                    </div>
                                </div>
                            </div> <!----></div>
                        <div class="my-12"><h2 class="text-center display-1 font-weight-light">Deals &amp; Outlet</h2>
                            <div class="container mb-12 mt-9 no-gutters">
                                <div class="row align-center justify-center">
                                    <div class="col-sm-6 col-md-6 col-lg-6 col-xl-6 col-12">
                                        <div class="v-image v-responsive rounded elevation-cs theme--light"
                                             style="height: 365px; width: 100%;">
                                            <div class="v-responsive__sizer" style="padding-bottom: 56.25%;"></div>
                                            <div class="v-image__image v-image__image--cover"
                                                 style="background-image: url(&quot;https://ecommerce-vuetify-template.netlify.app/_nuxt/img/deal_2.a559707.jpg&quot;); background-position: center center;"></div>
                                            <div class="v-responsive__content" style="width: 1280px;"><!---->
                                                <div class="row fill-height align-start justify-start">
                                                    <div class="ma-3">
                                                        <div class="d-flex align-center justify-center mx-3">
                                                            <div
                                                                class="pa-2 white--text accent rounded-lg elevation-cs-2">
                                                                03h
                                                            </div>
                                                            <span><i aria-hidden="true"
                                                                     class="v-icon notranslate mdi mdi-dots-vertical theme--light white--text"></i></span>
                                                            <div
                                                                class="pa-2 white--text accent rounded-lg elevation-cs-2">
                                                                59m
                                                            </div>
                                                            <span><i aria-hidden="true"
                                                                     class="v-icon notranslate mdi mdi-dots-vertical theme--light white--text"></i></span>
                                                            <div
                                                                class="pa-2 white--text accent rounded-lg elevation-cs-2">
                                                                09s
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="d-flex align-center justify-space-between py-2 px-2">
                                            <div class="font-weight-bold body-1 d-flex">
                                                Wireless Charger - iPhone
                                                <div class="mx-3"><i aria-hidden="true"
                                                                     class="v-icon notranslate mr-1 mdi mdi-star theme--light orange--text"
                                                                     style="font-size: 15px;"></i><i aria-hidden="true"
                                                                                                     class="v-icon notranslate mr-1 mdi mdi-star theme--light orange--text"
                                                                                                     style="font-size: 15px;"></i><i
                                                    aria-hidden="true"
                                                    class="v-icon notranslate mr-1 mdi mdi-star theme--light orange--text"
                                                    style="font-size: 15px;"></i><i aria-hidden="true"
                                                                                    class="v-icon notranslate mr-1 mdi mdi-star theme--light orange--text"
                                                                                    style="font-size: 15px;"></i><i
                                                    aria-hidden="true"
                                                    class="v-icon notranslate mr-1 mdi mdi-star theme--light orange--text"
                                                    style="font-size: 15px;"></i> <span class="caption">(5)</span></div>
                                            </div>
                                            <div class="font-weight-regular fs-larger primary--text">49$</div>
                                        </div>
                                    </div>
                                    <div class="col-sm-6 col-md-6 col-lg-6 col-xl-6 col-12">
                                        <div class="v-image v-responsive rounded elevation-cs theme--light"
                                             style="height: 365px; width: 100%;">
                                            <div class="v-responsive__sizer" style="padding-bottom: 52.5%;"></div>
                                            <div class="v-image__image v-image__image--cover"
                                                 style="background-image: url(&quot;https://ecommerce-vuetify-template.netlify.app/_nuxt/img/deal_1.54d7d94.jpg&quot;); background-position: center center;"></div>
                                            <div class="v-responsive__content" style="width: 1200px;"><!---->
                                                <div class="row fill-height align-start justify-end">
                                                    <div class="ma-3">
                                                        <div class="d-flex align-center justify-center mx-3">
                                                            <div
                                                                class="pa-2 white--text accent rounded-lg elevation-cs-2">
                                                                11h
                                                            </div>
                                                            <span><i aria-hidden="true"
                                                                     class="v-icon notranslate mdi mdi-dots-vertical theme--light white--text"></i></span>
                                                            <div
                                                                class="pa-2 white--text accent rounded-lg elevation-cs-2">
                                                                59m
                                                            </div>
                                                            <span><i aria-hidden="true"
                                                                     class="v-icon notranslate mdi mdi-dots-vertical theme--light white--text"></i></span>
                                                            <div
                                                                class="pa-2 white--text accent rounded-lg elevation-cs-2">
                                                                09s
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="d-flex align-center justify-space-between py-2 px-4">
                                            <div class="font-weight-bold body-1 d-flex">
                                                Google Home - Smart Speaker
                                                <div class="mx-3"><i aria-hidden="true"
                                                                     class="v-icon notranslate mr-1 mdi mdi-star theme--light orange--text"
                                                                     style="font-size: 15px;"></i><i aria-hidden="true"
                                                                                                     class="v-icon notranslate mr-1 mdi mdi-star theme--light orange--text"
                                                                                                     style="font-size: 15px;"></i><i
                                                    aria-hidden="true"
                                                    class="v-icon notranslate mr-1 mdi mdi-star theme--light orange--text"
                                                    style="font-size: 15px;"></i><i aria-hidden="true"
                                                                                    class="v-icon notranslate mr-1 mdi mdi-star theme--light orange--text"
                                                                                    style="font-size: 15px;"></i><i
                                                    aria-hidden="true"
                                                    class="v-icon notranslate mr-1 mdi mdi-star theme--light orange--text"
                                                    style="font-size: 15px;"></i> <span class="caption">(5)</span></div>
                                            </div>
                                            <div class="font-weight-regular fs-larger primary--text">87$</div>
                                        </div>
                                    </div>
                                    <button type="button"
                                            class="mt-6 mb-2 v-btn v-btn--depressed v-btn--flat v-btn--outlined v-btn--rounded theme--light v-size--default primary--text"
                                            style="width: 300px !important;"><span class="v-btn__content">More Outlet Deals
        <i aria-hidden="true" class="v-icon notranslate mdi mdi-chevron-right theme--light"></i></span></button>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div data-v-217d2940="">
                <div data-v-217d2940=""
                     class="w-100 white--text d-flex align-center justify-center flex-column mt-6 v-sheet theme--light"
                     style="height: 270px;">
                    <div data-v-217d2940="" class="d-flex align-center justify-center my-6 flex-column"><h1
                        data-v-217d2940="" class="mb-4 text-center">Subscribe to our Newsletter</h1>
                        <div data-v-217d2940="" class="d-flex align-center justify-center my-3">
                            <div data-v-217d2940=""
                                 class="v-input v-input--hide-details v-input--dense theme--light v-text-field v-text-field--single-line v-text-field--solo v-text-field--is-booted v-text-field--enclosed v-text-field--placeholder v-text-field--rounded"
                                 style="max-width: 400px;">
                                <div class="v-input__control">
                                    <div class="v-input__slot">
                                        <div class="v-text-field__slot"><input id="input-176"
                                                                               placeholder="Email Address" type="text">
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <button data-v-217d2940="" type="button"
                                    class="ml-2 v-btn v-btn--contained v-btn--rounded theme--light v-size--default primary">
                                <span class="v-btn__content">Sign up</span></button>
                        </div>
                    </div>
                </div>
            </div>

        </div>
    </page-layout>
</template>

<script>
import PageLayout from "@/Layouts/PageLayout";
import joven from '../../images/joven.jpg';

import colchonesYMuebles from '../../images/colchones y muebles.jpg';

import moda from '../../images/moda.jpg';
import restaurant from '../../images/restaurant.jpg';
import tecnologia from '../../images/tecnologia.jpg';
import electrodomesticos from '../../images/electrodomesticos.jpg';

import el_corral from '../../images/comercios/el_corral.jpg';
import jamar from '../../images/comercios/jamar.jpg';
import papa_johns from '../../images/comercios/papa_johns.jpg' ;
import solumec from '../../images/comercios/solumec.jpg';


export default {
    components: {
        PageLayout
    },
    name: "Home",
    data: () => ({
        joven: joven,
        categorias: [
            {name: 'Moda', src: moda},
            {name: 'Muebles y colchones', src: colchonesYMuebles},
            {name: 'Restaurante', src: restaurant},
            {name: 'Tecnologia', src: tecnologia},
            {name: 'Electrodomesticos', src: electrodomesticos},
        ],
        perfiles: [
            {name: 'El corral', src: el_corral},
            {name: 'Jamar', src: jamar},
            {name: 'Papa johns', src: papa_johns},
            {name: 'Solumec', src: solumec},
        ]
    })
};
</script>

<style>
</style>
