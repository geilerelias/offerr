<template>
    <App-layout>
        <v-container class="my-0">
            <v-breadcrumbs :items="items"></v-breadcrumbs>
            <v-row class="row">
                <v-col class="col col-12">
                    <div>
                        <div class="row">
                            <div class="col-md-6 col-lg-8 col-xl-8 col-12">

                                <div v-for="product in data" :key="product.id">
                                    <v-card class="shadow-sm br-8  d-flex flex-wrap mb-6 "
                                            style="max-width: 100%;">
                                        <v-img cover
                                               style="max-width: 140px;"
                                               :src="'/storage/'+getFirtImage(product.product_path_images)">
                                        </v-img>
                                        <div class="d-flex flex-column flex-grow-1 flex-wrap pa-4 mw-0">
                                            <div class="d-flex justify-space-between w-100 mb-3">
                                                <div>
                                                    <div class="d-flex"><h4
                                                        class="font-600 text-truncate mb-4">
                                                        {{ product.product_name }}
                                                    </h4>
                                                    </div>
                                                    <div><p class="grey--text text--darken-1 mb-0">
                                                        $
                                                        {{
                                                            new Intl.NumberFormat('es-ES').format(product.product_price)
                                                        }}
                                                        x
                                                        {{ product.product_quantity }} =
                                                        <span
                                                            class="primary--text ms-2 font-600">$ {{
                                                                new Intl.NumberFormat('es-ES').format(product.product_price * product.product_quantity)
                                                            }}</span>
                                                    </p></div>
                                                </div>
                                                <v-btn round icon color="error" @click="deleteProduct(product)">
                                                    <v-icon>
                                                        mdi-trash-can-outline
                                                    </v-icon>
                                                </v-btn>
                                            </div>
                                            <div class="d-flex justify-end flex-grow-1 align-end">
                                                <div class="d-flex align-center">
                                                    <v-btn
                                                        class="ma-2"
                                                        icon
                                                        outlined
                                                        color="secondary"
                                                        @click="quantityDecrement(product)"
                                                    >
                                                        <v-icon>mdi-minus</v-icon>
                                                    </v-btn>
                                                    <div class="text-center mx-2">{{ product.product_quantity }}</div>
                                                    <v-btn class="ma-2"
                                                           icon
                                                           outlined
                                                           color="primary"
                                                           @click="quantityIncrease(product)">
                                                        <v-icon>
                                                            mdi-plus
                                                        </v-icon>
                                                    </v-btn>
                                                </div>
                                            </div>
                                        </div>
                                    </v-card>
                                </div>
                            </div>

                            <div class="col-md-6 col-lg-4 col-xl-4 col-12">
                                <div data-v-c0fa65de="" class="shadow-sm br-8  v-card v-sheet theme--light"
                                     style="max-width: 100%;">
                                    <div class="pa-5">
                                        <div class="d-flex justify-space-between"><p
                                            class="mb-0 grey--text text--darken-1">Total</p> <h4
                                            class="font-600">$ {{ new Intl.NumberFormat('es-ES').format(total) }}</h4>
                                        </div>
                                        <v-divider class="my-3"/>

                                        <div class="d-flex align-center mb-4">
                                            <h6>Comentarios adicionales</h6>
                                            <v-chip
                                                class="ma-2"
                                                color="primary"
                                            >
                                                Nota
                                            </v-chip>
                                        </div>
                                        <v-textarea
                                            outlined
                                            name="input-7-4"
                                            label="Comentarios"
                                        ></v-textarea>
                                        <hr role="separator" aria-orientation="horizontal"
                                            class="my-4 v-divider theme--light">


                                        <h6 class="mb-4">Estimaciones de envío</h6>

                                        <p class="text-14 mb-1 mt-2">Departamento</p>
                                        <v-select
                                            v-if="$vuetify.breakpoint.mdAndUp"
                                            :items="departments"
                                            label="Departamento"
                                            v-model="department"
                                            @change="getMunicipality()"
                                            required
                                            outlined
                                            dense
                                            hide-details
                                        ></v-select>
                                        <p class="text-14 mb-1 mt-2">Municipio</p>
                                        <v-select
                                            v-if="$vuetify.breakpoint.mdAndUp"
                                            :items="municipalities"
                                            :disabled="!municipalities.length>0"
                                            label="Municipio"
                                            v-model="municipality"
                                            required
                                            outlined
                                            dense
                                            hide-details
                                        ></v-select>

                                        <p class="text-14 mb-1 mt-2">Código postal</p>
                                        <v-text-field
                                            label="Código postal"
                                            dense
                                            outlined
                                            v-model="zipCode"
                                        ></v-text-field>

                                        <p class="text-14 mb-1">Dirección</p>
                                        <v-text-field
                                            label="Dirección"
                                            dense
                                            outlined
                                            v-model="direction"
                                        ></v-text-field>

                                        <v-btn block outlined
                                               class="text-capitalize font-600 mb-4 primary--text">
                                            calcular costo envío
                                        </v-btn>
                                        <v-btn block
                                               class="text-capitalize font-600 mb-4  primary" @click="sendMessage()">
                                            Pagar ahora
                                        </v-btn>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!--                        <div class="row">
                                                    <div class="col-md-6 col-lg-8 col-xl-9 col-12">
                                                        <div data-v-c0fa65de="" class="shadow-sm br-8  v-card v-sheet theme&#45;&#45;light"
                                                             style="max-width: 100%;">
                                                            <div class="pa-5"><h6 class="mb-4">Shipping Address</h6>
                                                                <div class="row">
                                                                    <div class="col-lg-6 col-xl-6 col-12"><p class="text-14 mb-1">
                                                                        Full Name</p>
                                                                        <div
                                                                            class="v-input v-input&#45;&#45;hide-details v-input&#45;&#45;dense theme&#45;&#45;light v-text-field v-text-field&#45;&#45;is-booted v-text-field&#45;&#45;enclosed v-text-field&#45;&#45;outlined">
                                                                            <div class="v-input__control">
                                                                                <div class="v-input__slot">
                                                                                    <fieldset aria-hidden="true">
                                                                                        <legend style="width: 0px;"><span
                                                                                            class="notranslate">​</span></legend>
                                                                                    </fieldset>
                                                                                    <div class="v-text-field__slot"><input
                                                                                        id="input-2161" type="text"></div>
                                                                                </div>
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                    <div class="col-lg-6 col-xl-6 col-12"><p class="text-14 mb-1">
                                                                        Email Address</p>
                                                                        <div
                                                                            class="v-input v-input&#45;&#45;hide-details v-input&#45;&#45;dense theme&#45;&#45;light v-text-field v-text-field&#45;&#45;is-booted v-text-field&#45;&#45;enclosed v-text-field&#45;&#45;outlined">
                                                                            <div class="v-input__control">
                                                                                <div class="v-input__slot">
                                                                                    <fieldset aria-hidden="true">
                                                                                        <legend style="width: 0px;"><span
                                                                                            class="notranslate">​</span></legend>
                                                                                    </fieldset>
                                                                                    <div class="v-text-field__slot"><input
                                                                                        id="input-2162" type="text"></div>
                                                                                </div>
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                    <div class="col-lg-6 col-xl-6 col-12"><p class="text-14 mb-1">
                                                                        Phone Number</p>
                                                                        <div
                                                                            class="v-input v-input&#45;&#45;hide-details v-input&#45;&#45;dense theme&#45;&#45;light v-text-field v-text-field&#45;&#45;is-booted v-text-field&#45;&#45;enclosed v-text-field&#45;&#45;outlined">
                                                                            <div class="v-input__control">
                                                                                <div class="v-input__slot">
                                                                                    <fieldset aria-hidden="true">
                                                                                        <legend style="width: 0px;"><span
                                                                                            class="notranslate">​</span></legend>
                                                                                    </fieldset>
                                                                                    <div class="v-text-field__slot"><input
                                                                                        id="input-2163" type="text"></div>
                                                                                </div>
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                    <div class="col-lg-6 col-xl-6 col-12"><p class="text-14 mb-1">
                                                                        Company</p>
                                                                        <div
                                                                            class="v-input v-input&#45;&#45;hide-details v-input&#45;&#45;dense theme&#45;&#45;light v-text-field v-text-field&#45;&#45;is-booted v-text-field&#45;&#45;enclosed v-text-field&#45;&#45;outlined">
                                                                            <div class="v-input__control">
                                                                                <div class="v-input__slot">
                                                                                    <fieldset aria-hidden="true">
                                                                                        <legend style="width: 0px;"><span
                                                                                            class="notranslate">​</span></legend>
                                                                                    </fieldset>
                                                                                    <div class="v-text-field__slot"><input
                                                                                        id="input-2164" type="text"></div>
                                                                                </div>
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                    <div class="col-lg-6 col-xl-6 col-12"><p class="text-14 mb-1">
                                                                        Zip Code</p>
                                                                        <div
                                                                            class="v-input v-input&#45;&#45;hide-details v-input&#45;&#45;dense theme&#45;&#45;light v-text-field v-text-field&#45;&#45;is-booted v-text-field&#45;&#45;enclosed v-text-field&#45;&#45;outlined">
                                                                            <div class="v-input__control">
                                                                                <div class="v-input__slot">
                                                                                    <fieldset aria-hidden="true">
                                                                                        <legend style="width: 0px;"><span
                                                                                            class="notranslate">​</span></legend>
                                                                                    </fieldset>
                                                                                    <div class="v-text-field__slot"><input
                                                                                        id="input-2165" type="text"></div>
                                                                                </div>
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                    <div class="col-lg-6 col-xl-6 col-12"><p class="text-14 mb-1">
                                                                        Country</p>
                                                                        <div
                                                                            class="v-input v-input&#45;&#45;hide-details v-input&#45;&#45;dense theme&#45;&#45;light v-text-field v-text-field&#45;&#45;is-booted v-text-field&#45;&#45;enclosed v-text-field&#45;&#45;outlined v-select">
                                                                            <div class="v-input__control">
                                                                                <div role="button" aria-haspopup="listbox"
                                                                                     aria-expanded="false" aria-owns="list-2166"
                                                                                     class="v-input__slot">
                                                                                    <fieldset aria-hidden="true">
                                                                                        <legend style="width: 0px;"><span
                                                                                            class="notranslate">​</span></legend>
                                                                                    </fieldset>
                                                                                    <div class="v-select__slot"><label
                                                                                        for="input-2166"
                                                                                        class="v-label theme&#45;&#45;light"
                                                                                        style="left: 0px; right: auto; position: absolute;">Select...</label>
                                                                                        <div class="v-select__selections"><input
                                                                                            id="input-2166" readonly="readonly"
                                                                                            type="text" aria-readonly="false"
                                                                                            autocomplete="off"></div>
                                                                                        <div class="v-input__append-inner">
                                                                                            <div
                                                                                                class="v-input__icon v-input__icon&#45;&#45;append">
                                                                                                <i aria-hidden="true"
                                                                                                   class="v-icon notranslate mdi mdi-menu-down theme&#45;&#45;light"></i>
                                                                                            </div>
                                                                                        </div>
                                                                                        <input type="hidden"></div>
                                                                                    <div class="v-menu">&lt;!&ndash;&ndash;&gt;</div>
                                                                                </div>
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                    <div class="col-lg-6 col-xl-6 col-12"><p class="text-14 mb-1">
                                                                        Address 1</p>
                                                                        <div
                                                                            class="v-input v-input&#45;&#45;hide-details v-input&#45;&#45;dense theme&#45;&#45;light v-text-field v-text-field&#45;&#45;is-booted v-text-field&#45;&#45;enclosed v-text-field&#45;&#45;outlined">
                                                                            <div class="v-input__control">
                                                                                <div class="v-input__slot">
                                                                                    <fieldset aria-hidden="true">
                                                                                        <legend style="width: 0px;"><span
                                                                                            class="notranslate">​</span></legend>
                                                                                    </fieldset>
                                                                                    <div class="v-text-field__slot"><input
                                                                                        id="input-2169" type="text"></div>
                                                                                </div>
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                    <div class="col-lg-6 col-xl-6 col-12"><p class="text-14 mb-1">
                                                                        Address 2</p>
                                                                        <div
                                                                            class="v-input v-input&#45;&#45;hide-details v-input&#45;&#45;dense theme&#45;&#45;light v-text-field v-text-field&#45;&#45;is-booted v-text-field&#45;&#45;enclosed v-text-field&#45;&#45;outlined">
                                                                            <div class="v-input__control">
                                                                                <div class="v-input__slot">
                                                                                    <fieldset aria-hidden="true">
                                                                                        <legend style="width: 0px;"><span
                                                                                            class="notranslate">​</span></legend>
                                                                                    </fieldset>
                                                                                    <div class="v-text-field__slot"><input
                                                                                        id="input-2170" type="text"></div>
                                                                                </div>
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="col-md-6 col-lg-4 col-xl-3 col-12">
                                                        <div data-v-c0fa65de="" class="shadow-sm br-8  v-card v-sheet theme&#45;&#45;light"
                                                             style="max-width: 100%;">
                                                            <div class="pa-5">
                                                                <div class="d-flex justify-space-between mb-2"><p
                                                                    class="mb-0 grey&#45;&#45;text text&#45;&#45;darken-1">Subtotal:</p> <h4
                                                                    class="font-600 mb-0">$2610.00</h4></div>
                                                                <div class="d-flex justify-space-between mb-2"><p
                                                                    class="mb-0 grey&#45;&#45;text text&#45;&#45;darken-1">Shipping:</p> <h4
                                                                    class="font-600"> - </h4></div>
                                                                <div class="d-flex justify-space-between mb-2"><p
                                                                    class="mb-0 grey&#45;&#45;text text&#45;&#45;darken-1">Tax:</p> <h4
                                                                    class="font-600"> $40.00 </h4></div>
                                                                <div class="d-flex justify-space-between mb-2"><p
                                                                    class="mb-0 grey&#45;&#45;text text&#45;&#45;darken-1">Discount:</p> <h4
                                                                    class="font-600"> - </h4></div>
                                                                <hr role="separator" aria-orientation="horizontal"
                                                                    class="my-3 v-divider theme&#45;&#45;light">
                                                                <div class="d-flex justify-end"><h2 class="mb-3">$2610.00</h2></div>
                                                                <div
                                                                    class="v-input mb-4 v-input&#45;&#45;hide-details v-input&#45;&#45;dense theme&#45;&#45;light v-text-field v-text-field&#45;&#45;is-booted v-text-field&#45;&#45;enclosed v-text-field&#45;&#45;outlined">
                                                                    <div class="v-input__control">
                                                                        <div class="v-input__slot">
                                                                            <fieldset aria-hidden="true">
                                                                                <legend style="width: 0px;"><span
                                                                                    class="notranslate">​</span></legend>
                                                                            </fieldset>
                                                                            <div class="v-text-field__slot"><label for="input-2174"
                                                                                                                   class="v-label theme&#45;&#45;light"
                                                                                                                   style="left: 0px; right: auto; position: absolute;">Voucher</label><input
                                                                                id="input-2174" type="text"></div>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                                <button type="button"
                                                                        class="text-capitalize font-600 v-btn v-btn&#45;&#45;block v-btn&#45;&#45;outlined theme&#45;&#45;light v-size&#45;&#45;default primary&#45;&#45;text"><span
                                                                    class="v-btn__content">
                                                              Apply Voucher
                                                          </span></button>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="row">
                                                    <div class="col-md-6 col-lg-8 col-xl-9 col-12">
                                                        <div data-v-c0fa65de="" class="shadow-sm br-8  v-card v-sheet theme&#45;&#45;light"
                                                             style="max-width: 100%;">
                                                            <div class="pa-5">
                                                                <div
                                                                    class="v-input mt-0 pt-0 v-input&#45;&#45;hide-details theme&#45;&#45;light v-input&#45;&#45;selection-controls v-input&#45;&#45;radio-group v-input&#45;&#45;radio-group&#45;&#45;column">
                                                                    <div class="v-input__control">
                                                                        <div class="v-input__slot" style="height: auto;">
                                                                            <div role="radiogroup" aria-labelledby="input-2179"
                                                                                 class="v-input&#45;&#45;radio-group__input">
                                                                                <div class="v-radio theme&#45;&#45;light">
                                                                                    <div class="v-input&#45;&#45;selection-controls__input">
                                                                                        <i aria-hidden="true"
                                                                                           class="v-icon notranslate mdi mdi-radiobox-blank theme&#45;&#45;light"></i><input
                                                                                        aria-checked="false" id="input-2180"
                                                                                        role="radio" type="radio" name="radio-2179"
                                                                                        value="">
                                                                                        <div
                                                                                            class="v-input&#45;&#45;selection-controls__ripple"></div>
                                                                                    </div>
                                                                                    <label for="input-2180"
                                                                                           class="v-label theme&#45;&#45;light"
                                                                                           style="left: 0px; right: auto; position: relative;">
                                                                                        <h6 class="black&#45;&#45;text font-600">Pay With
                                                                                            Credit Card</h6></label></div>
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                            <hr role="separator" aria-orientation="horizontal"
                                                                class="v-divider theme&#45;&#45;light">
                                                            <div class="row pa-5">
                                                                <div class="col-lg-6 col-xl-6 col-12"><p class="text-14 mb-1">Card
                                                                    Number</p>
                                                                    <div
                                                                        class="v-input v-input&#45;&#45;hide-details v-input&#45;&#45;dense theme&#45;&#45;light v-text-field v-text-field&#45;&#45;is-booted v-text-field&#45;&#45;enclosed v-text-field&#45;&#45;outlined">
                                                                        <div class="v-input__control">
                                                                            <div class="v-input__slot">
                                                                                <fieldset aria-hidden="true">
                                                                                    <legend style="width: 0px;"><span
                                                                                        class="notranslate">​</span></legend>
                                                                                </fieldset>
                                                                                <div class="v-text-field__slot"><input
                                                                                    id="input-2183" type="text"></div>
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                                <div class="col-lg-6 col-xl-6 col-12"><p class="text-14 mb-1">Exp
                                                                    Date</p>
                                                                    <div
                                                                        class="v-input v-input&#45;&#45;hide-details v-input&#45;&#45;dense theme&#45;&#45;light v-text-field v-text-field&#45;&#45;is-booted v-text-field&#45;&#45;enclosed v-text-field&#45;&#45;outlined">
                                                                        <div class="v-input__control">
                                                                            <div class="v-input__slot">
                                                                                <fieldset aria-hidden="true">
                                                                                    <legend style="width: 0px;"><span
                                                                                        class="notranslate">​</span></legend>
                                                                                </fieldset>
                                                                                <div class="v-text-field__slot"><input
                                                                                    id="input-2184" type="text"></div>
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                                <div class="col-lg-6 col-xl-6 col-12"><p class="text-14 mb-1">Name
                                                                    on Card </p>
                                                                    <div
                                                                        class="v-input v-input&#45;&#45;hide-details v-input&#45;&#45;dense theme&#45;&#45;light v-text-field v-text-field&#45;&#45;is-booted v-text-field&#45;&#45;enclosed v-text-field&#45;&#45;outlined">
                                                                        <div class="v-input__control">
                                                                            <div class="v-input__slot">
                                                                                <fieldset aria-hidden="true">
                                                                                    <legend style="width: 0px;"><span
                                                                                        class="notranslate">​</span></legend>
                                                                                </fieldset>
                                                                                <div class="v-text-field__slot"><input
                                                                                    id="input-2185" type="text"></div>
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                                <div class="col-lg-6 col-xl-6 col-12"><p class="text-14 mb-1">Name
                                                                    on Card</p>
                                                                    <div
                                                                        class="v-input v-input&#45;&#45;hide-details v-input&#45;&#45;dense theme&#45;&#45;light v-text-field v-text-field&#45;&#45;is-booted v-text-field&#45;&#45;enclosed v-text-field&#45;&#45;outlined">
                                                                        <div class="v-input__control">
                                                                            <div class="v-input__slot">
                                                                                <fieldset aria-hidden="true">
                                                                                    <legend style="width: 0px;"><span
                                                                                        class="notranslate">​</span></legend>
                                                                                </fieldset>
                                                                                <div class="v-text-field__slot"><input
                                                                                    id="input-2186" type="text"></div>
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                                <div class="col-xl-6 col-12">
                                                                    <button type="button"
                                                                            class="text-capitalize font-600 v-btn v-btn&#45;&#45;outlined theme&#45;&#45;light v-size&#45;&#45;default primary&#45;&#45;text"><span
                                                                        class="v-btn__content">
                                                                      Submit
                                                                  </span></button>
                                                                </div>
                                                            </div>
                                                            <hr role="separator" aria-orientation="horizontal"
                                                                class="v-divider theme&#45;&#45;light">
                                                            <div class="pa-5">
                                                                <div
                                                                    class="v-input mt-0 pt-0 v-input&#45;&#45;hide-details theme&#45;&#45;light v-input&#45;&#45;selection-controls v-input&#45;&#45;radio-group v-input&#45;&#45;radio-group&#45;&#45;column">
                                                                    <div class="v-input__control">
                                                                        <div class="v-input__slot" style="height: auto;">
                                                                            <div role="radiogroup" aria-labelledby="input-2189"
                                                                                 class="v-input&#45;&#45;radio-group__input">
                                                                                <div class="v-radio theme&#45;&#45;light">
                                                                                    <div class="v-input&#45;&#45;selection-controls__input">
                                                                                        <i aria-hidden="true"
                                                                                           class="v-icon notranslate mdi mdi-radiobox-blank theme&#45;&#45;light"></i><input
                                                                                        aria-checked="false" id="input-2190"
                                                                                        role="radio" type="radio" name="radio-2189"
                                                                                        value="">
                                                                                        <div
                                                                                            class="v-input&#45;&#45;selection-controls__ripple"></div>
                                                                                    </div>
                                                                                    <label for="input-2190"
                                                                                           class="v-label theme&#45;&#45;light"
                                                                                           style="left: 0px; right: auto; position: relative;">
                                                                                        <h6 class="black&#45;&#45;text font-600">Pay with
                                                                                            Paypal</h6></label></div>
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                            <hr role="separator" aria-orientation="horizontal"
                                                                class="v-divider theme&#45;&#45;light">
                                                            <div class="pa-5"><p class="text-14 mb-1">Name on Card </p>
                                                                <div class="d-flex">
                                                                    <div
                                                                        class="v-input mr-4 v-input&#45;&#45;hide-details v-input&#45;&#45;dense theme&#45;&#45;light v-text-field v-text-field&#45;&#45;is-booted v-text-field&#45;&#45;enclosed v-text-field&#45;&#45;outlined">
                                                                        <div class="v-input__control">
                                                                            <div class="v-input__slot">
                                                                                <fieldset aria-hidden="true">
                                                                                    <legend style="width: 0px;"><span
                                                                                        class="notranslate">​</span></legend>
                                                                                </fieldset>
                                                                                <div class="v-text-field__slot"><input
                                                                                    id="input-2193" type="text"></div>
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                    <button type="button"
                                                                            class="v-btn v-btn&#45;&#45;outlined theme&#45;&#45;light v-size&#45;&#45;default primary&#45;&#45;text"><span
                                                                        class="v-btn__content">
                                                                      Submit
                                                                  </span></button>
                                                                </div>
                                                            </div>
                                                            <hr role="separator" aria-orientation="horizontal"
                                                                class="v-divider theme&#45;&#45;light">
                                                            <div class="pa-5">
                                                                <div
                                                                    class="v-input mt-0 pt-0 v-input&#45;&#45;hide-details theme&#45;&#45;light v-input&#45;&#45;selection-controls v-input&#45;&#45;radio-group v-input&#45;&#45;radio-group&#45;&#45;column">
                                                                    <div class="v-input__control">
                                                                        <div class="v-input__slot" style="height: auto;">
                                                                            <div role="radiogroup" aria-labelledby="input-2196"
                                                                                 class="v-input&#45;&#45;radio-group__input">
                                                                                <div class="v-radio theme&#45;&#45;light">
                                                                                    <div class="v-input&#45;&#45;selection-controls__input">
                                                                                        <i aria-hidden="true"
                                                                                           class="v-icon notranslate mdi mdi-radiobox-blank theme&#45;&#45;light"></i><input
                                                                                        aria-checked="false" id="input-2197"
                                                                                        role="radio" type="radio" name="radio-2196"
                                                                                        value="">
                                                                                        <div
                                                                                            class="v-input&#45;&#45;selection-controls__ripple"></div>
                                                                                    </div>
                                                                                    <label for="input-2197"
                                                                                           class="v-label theme&#45;&#45;light"
                                                                                           style="left: 0px; right: auto; position: relative;">
                                                                                        <h6 class="black&#45;&#45;text font-600">Cash On
                                                                                            Delivery</h6></label></div>
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="col-md-6 col-lg-4 col-xl-3 col-12">
                                                        <div data-v-c0fa65de="" class="shadow-sm br-8  v-card v-sheet theme&#45;&#45;light"
                                                             style="max-width: 100%;">
                                                            <div class="pa-5">
                                                                <div class="d-flex justify-space-between mb-2"><p
                                                                    class="mb-0 grey&#45;&#45;text text&#45;&#45;darken-1">Subtotal:</p> <h4
                                                                    class="font-600 mb-0">$2610.00</h4></div>
                                                                <div class="d-flex justify-space-between mb-2"><p
                                                                    class="mb-0 grey&#45;&#45;text text&#45;&#45;darken-1">Shipping:</p> <h4
                                                                    class="font-600"> - </h4></div>
                                                                <div class="d-flex justify-space-between mb-2"><p
                                                                    class="mb-0 grey&#45;&#45;text text&#45;&#45;darken-1">Tax:</p> <h4
                                                                    class="font-600"> $40.00 </h4></div>
                                                                <div class="d-flex justify-space-between mb-2"><p
                                                                    class="mb-0 grey&#45;&#45;text text&#45;&#45;darken-1">Discount:</p> <h4
                                                                    class="font-600"> - </h4></div>
                                                                <hr role="separator" aria-orientation="horizontal"
                                                                    class="my-3 v-divider theme&#45;&#45;light">
                                                                <div class="d-flex justify-end"><h2 class="mb-3">$2610.00</h2></div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>-->
                    </div>

                </v-col>
            </v-row>
        </v-container>

        <div class="text-center">
            <v-overlay :value="overlay" :opacity="0.9" color="primary">
                <spinner-component></spinner-component>
            </v-overlay>
        </div>

        <v-snackbar
            v-model="snackbar"
            :timeout="timeout"
        >
            {{ text }}

            <template v-slot:action="{ attrs }">
                <v-btn
                    color="blue"
                    text
                    v-bind="attrs"
                    @click="snackbar = false"
                >
                    Close
                </v-btn>
            </template>
        </v-snackbar>
    </App-layout>
</template>

<script>
import AppLayout from './../../Layouts/AppLayout';
import colombiaJson from '@/../assets/colombia.json'
import SpinnerComponent from "@/Components/SpinnerComponent";


export default {
    name: "AppShoppingCart",
    components: {
        AppLayout,
        SpinnerComponent,
    },
    props: ['data'],

    data: () => ({
        snackbar: false,
        text: '',
        timeout: 1000,
        overlay: false,
        zIndex: 0,
        e1: 1,
        products: [],
        cantidad: 0,
        total: 0,
        department: null,
        departments: [],
        municipality: null,
        municipalities: [],
        zipCode: null,
        direction: null,
        items: [
            {
                text: 'Inicio',
                disabled: false,
                href: '/',
            },
            {
                text: 'Detalle carrito de compra',
                disabled: true,
                href: '#',
            },
        ],
    }),
    created() {
        for (const item in colombiaJson) {
            this.departments.push(colombiaJson[item].departamento);
        }
        this.departments = this.departments.sort();

        console.log('user => ', this.$page.user.id);

        axios.get('/cart/count')
            .then(response => {
                console.log('count => ', response)
                this.cantidad = response.data;
            })

        axios.get('/cart/total')
            .then(response => {
                console.log('total => ', response)
                this.total = response.data;
            })
    },
    methods: {
        quantityIncrease(item) {
            let quantity = item.product_quantity;
            let oldQuantity = quantity;
            let newQuantity = quantity * 1 + 1;

            let data = {id: item.id, quantity: newQuantity}
            this.$inertia.post('/cart/update/quantity', data, {
                    onSuccess: (data) => {
                        console.log('data => ', data)
                        this.snackbar = true;
                        this.text = 'aumento en la cantidad';
                    },
                    onError(error) {
                        console.log('error => ', error)
                        this.$swal.fire(
                            'No eliminado!',
                            'ha ocurrido un error inesperado.',
                            'error'
                        )
                    }
                }
            )

            /* axios.post('/cart/update/quantity', {'id': item.id, 'quantity': newQuantity})
                 .then(response => {
                     console.log('total => ', response)
                     this.total = response.data;
                 })*/
            console.log(item.product_name, ': old quantity => ', oldQuantity, " =>  quantity Increase", newQuantity)
        },
        quantityDecrement(item) {
            let oldQuantity = item.product_quantity;
            let newQuantity = item.product_quantity * 1 - 1;
            console.log(item.product_name, ': old quantity => ', oldQuantity, " =>  quantity Increase", newQuantity)

            if (newQuantity <= 0) {
                this.$swal.fire(
                    'No Decremento!',
                    'La cantidad minima permita no puede ser inferior igual a cero.',
                    'error'
                )
            } else {
                let data = {id: item.id, quantity: newQuantity}
                this.$inertia.post('/cart/update/quantity', data, {
                    onSuccess: (page) => {
                        console.log(page);
                        this.snackbar = true;
                        this.text = 'cantidad decrementada';
                    },
                    onError: (errors) => {
                        this.$swal.fire(
                            'No eliminado!',
                            'ha ocurrido un error inesperado.',
                            'error'
                        )
                    },
                });

                /*  axios.post('/cart/decrement', {'id': item.id, 'quantity': newQuantity})
                      .then(response => {
                          console.log('total => ', response)
                          this.total = response.data;
                      })*/
                console.log(item.product_name, ': old quantity => ', oldQuantity, " =>  quantity Increase", newQuantity)
            }
        }
        ,
        deleteProduct(item) {
            this.$swal.fire({
                title: '¿Está seguro?',
                text: "¡No podrás revertir esto!",
                icon: 'warning',
                showCancelButton: true,
                confirmButtonColor: '#3085d6',
                cancelButtonColor: '#d33',
                confirmButtonText: 'Sí, eliminar esto!'
            }).then((result) => {
                if (result.isConfirmed) {
                    this.overlay = true;
                    let data = item;
                    item._method = 'DELETE';
                    /*this.$inertia.delete('/cart/' + item.id, item.id, {
                        onBefore: (visit) => {
                            console.log()
                        },
                        onStart: (visit) => {
                        },
                        onProgress: (progress) => {
                        },
                        onSuccess: (page) => {
                            console.log(page);
                            this.$swal.fire(
                                'Eliminado!',
                                'Su producto fue eliminado correctamente.',
                                'success'
                            )

                        },
                        onError: (errors) => {
                            this.$swal.fire(
                                'No eliminado!',
                                'Su producto no fue eliminado.',
                                'error'
                            )
                        },
                        onCancel: () => {
                            this.overlay = false;
                        },
                        onFinish: visit => {
                            this.overlay = false;
                        },
                    });*/
                    axios
                        .delete(`/cart/${data.id}`, data)
                        .then(response => {
                            console.log('this is response: ', response)
                            this.$swal.fire(
                                'Eliminado!',
                                'Su producto fue eliminado correctamente.',
                                'success'
                            )
                            this.$inertia.get('/cart');
                        })
                        .catch(error => {
                            console.log(error)
                            this.$swal.fire(
                                'No eliminado!',
                                'Su producto no fue eliminado.',
                                'error'
                            )
                        })
                        .finally(() => {
                            this.overlay = false;
                        })

                }
            })
        }
        ,
        getMunicipality() {
            this.municipalities = colombiaJson.filter((item) => {
                return item.departamento == this.department;
            })[0].ciudades;
            console.log(this.municipalities)
            // this.municipalities = this.municipalities.sort();
        }
        ,
        getFirtImage(item) {
            console.log('This is path images ', item)
            try {
                return JSON.parse(item)[0];
            } catch (e) {
                console.log(e)
                return null;
            }
        },
        async sendMessage() {
            console.log(this.data)
            let arrayProduct = [];
            let result = null;
            for (const key in this.data) {
                console.log(this.data[key].product_id)
                result = this.$inertia.get(`/product/${this.data[key].product_id}/business`);
                result = await axios
                    .get(`/product/${this.data.id}/business`)

                console.log(result)
            }
        }
    },
}
</script>

<style scoped>

</style>
