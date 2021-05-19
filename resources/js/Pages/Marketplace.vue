<template>
    <page-layout>
        <v-container>
            <div>
                <div class="container py-12 my-12">
                    <div class="row">
                        <div class="col-sm-12 col-md-4 col-lg-3 col-xl-3 col-12">
                            <div class="elevation-cs py-3 px-0 v-card v-sheet theme--light">
                                <div
                                    class="v-item-group theme--light v-expansion-panels v-expansion-panels--flat v-expansion-panels--tile aos-init aos-animate"
                                    data-aos="fade-zoom-in">
                                    <div aria-expanded="false" class="v-expansion-panel v-expansion-panel--next-active">
                                        <button type="button" class="v-expansion-panel-header">Categories
                                            <div class="v-expansion-panel-header__icon"><i aria-hidden="true"
                                                                                           class="v-icon notranslate mdi mdi-chevron-down theme--light"></i>
                                            </div>
                                        </button> <!----></div>
                                    <div aria-expanded="true"
                                         class="v-expansion-panel v-expansion-panel--active v-expansion-panel--next-active v-item--active">
                                        <button type="button"
                                                class="v-expansion-panel-header v-expansion-panel-header--active">Price
                                            <div class="v-expansion-panel-header__icon"><i aria-hidden="true"
                                                                                           class="v-icon notranslate mdi mdi-chevron-down theme--light"></i>
                                            </div>
                                        </button>
                                        <div class="v-expansion-panel-content">
                                            <div class="v-expansion-panel-content__wrap">
                                                <div
                                                    class="v-input align-center mt-6 v-input--is-label-active v-input--is-dirty theme--light v-input__slider v-input--range-slider">
                                                    <div class="v-input__control">
                                                        <div class="v-input__slot" style="height: 25px;">
                                                            <div class="v-slider v-slider--horizontal theme--light">
                                                                <input value="90" id="input-min-2893"
                                                                       readonly="readonly" tabindex="-1"><input
                                                                value="230" id="input-max-2893" readonly="readonly"
                                                                tabindex="-1">
                                                                <div class="v-slider__track-container">
                                                                    <div
                                                                        class="v-slider__track-background primary lighten-3"
                                                                        style="left: calc(0% + 0px); width: calc(30% + 0px);"></div>
                                                                    <div class="v-slider__track-fill primary"
                                                                         style="left: calc(30% + 0px); width: calc(46.6667% + 0px);"></div>
                                                                    <div
                                                                        class="v-slider__track-background primary lighten-3"
                                                                        style="left: calc(76.6667% + 0px); width: calc(23.3333% + 0px);"></div>
                                                                </div>
                                                                <div role="slider" tabindex="0" aria-valuemin="0"
                                                                     aria-valuemax="300" aria-valuenow="90,230"
                                                                     aria-readonly="false" aria-orientation="horizontal"
                                                                     class="v-slider__thumb-container v-slider__thumb-container--show-label primary--text"
                                                                     style="left: 30%;">
                                                                    <div class="v-slider__thumb primary"></div>
                                                                    <div class="v-slider__thumb-label-container">
                                                                        <div class="v-slider__thumb-label primary"
                                                                             style="height: 27px; width: 27px; transform: translateY(-20%) translateY(-12px) translateX(-50%) rotate(45deg);">
                                                                            <div><span>90</span></div>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                                <div role="slider" tabindex="0" aria-valuemin="0"
                                                                     aria-valuemax="300" aria-valuenow="90,230"
                                                                     aria-readonly="false" aria-orientation="horizontal"
                                                                     class="v-slider__thumb-container v-slider__thumb-container--show-label primary--text"
                                                                     style="left: 76.6667%;">
                                                                    <div class="v-slider__thumb primary"></div>
                                                                    <div class="v-slider__thumb-label-container">
                                                                        <div class="v-slider__thumb-label primary"
                                                                             style="height: 27px; width: 27px; transform: translateY(-20%) translateY(-12px) translateX(-50%) rotate(45deg);">
                                                                            <div><span>230</span></div>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="v-messages theme--light">
                                                            <div class="v-messages__wrapper"></div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div aria-expanded="true"
                                         class="v-expansion-panel v-expansion-panel--active v-expansion-panel--next-active v-item--active">
                                        <button type="button"
                                                class="v-expansion-panel-header v-expansion-panel-header--active">Rating
                                            <div class="v-expansion-panel-header__icon"><i aria-hidden="true"
                                                                                           class="v-icon notranslate mdi mdi-chevron-down theme--light"></i>
                                            </div>
                                        </button>
                                        <div class="v-expansion-panel-content">
                                            <div class="v-expansion-panel-content__wrap">
                                                <div class="v-rating">
                                                    <button type="button" tabindex="-1"
                                                            class="v-icon notranslate v-icon--link mdi mdi-star theme--light orange--text"></button>
                                                    <button type="button" tabindex="-1"
                                                            class="v-icon notranslate v-icon--link mdi mdi-star theme--light orange--text"></button>
                                                    <button type="button" tabindex="-1"
                                                            class="v-icon notranslate v-icon--link mdi mdi-star theme--light orange--text"></button>
                                                    <button type="button" tabindex="-1"
                                                            class="v-icon notranslate v-icon--link mdi mdi-star theme--light orange--text"></button>
                                                    <button type="button" tabindex="-1"
                                                            class="v-icon notranslate v-icon--link mdi mdi-star-half-full theme--light orange--text"></button>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div aria-expanded="true"
                                         class="v-expansion-panel v-expansion-panel--active v-expansion-panel--next-active v-item--active">
                                        <button type="button"
                                                class="v-expansion-panel-header v-expansion-panel-header--active">Color
                                            <div class="v-expansion-panel-header__icon"><i aria-hidden="true"
                                                                                           class="v-icon notranslate mdi mdi-chevron-down theme--light"></i>
                                            </div>
                                        </button>
                                        <div class="v-expansion-panel-content">
                                            <div class="v-expansion-panel-content__wrap">
                                                <div class="custom-grid">
                                                    <div
                                                        class="v-input text-capitalize v-input--hide-details v-input--is-label-active v-input--is-dirty theme--light v-input--selection-controls v-input--checkbox red--text">
                                                        <div class="v-input__control">
                                                            <div class="v-input__slot">
                                                                <div class="v-input--selection-controls__input"><i
                                                                    aria-hidden="true"
                                                                    class="v-icon notranslate mdi mdi-checkbox-marked theme--light red--text"></i><input
                                                                    aria-checked="true" id="input-2916" role="checkbox"
                                                                    type="checkbox" value="red">
                                                                    <div
                                                                        class="v-input--selection-controls__ripple red--text"></div>
                                                                </div>
                                                                <label for="input-2916" class="v-label theme--light"
                                                                       style="left: 0px; right: auto; position: relative;">red</label>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div
                                                        class="v-input text-capitalize v-input--hide-details v-input--is-label-active v-input--is-dirty theme--light v-input--selection-controls v-input--checkbox blue--text">
                                                        <div class="v-input__control">
                                                            <div class="v-input__slot">
                                                                <div class="v-input--selection-controls__input"><i
                                                                    aria-hidden="true"
                                                                    class="v-icon notranslate mdi mdi-checkbox-marked theme--light blue--text"></i><input
                                                                    aria-checked="true" id="input-2918" role="checkbox"
                                                                    type="checkbox" value="blue">
                                                                    <div
                                                                        class="v-input--selection-controls__ripple blue--text"></div>
                                                                </div>
                                                                <label for="input-2918" class="v-label theme--light"
                                                                       style="left: 0px; right: auto; position: relative;">blue</label>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div
                                                        class="v-input text-capitalize v-input--hide-details v-input--is-label-active v-input--is-dirty theme--light v-input--selection-controls v-input--checkbox pink--text">
                                                        <div class="v-input__control">
                                                            <div class="v-input__slot">
                                                                <div class="v-input--selection-controls__input"><i
                                                                    aria-hidden="true"
                                                                    class="v-icon notranslate mdi mdi-checkbox-marked theme--light pink--text"></i><input
                                                                    aria-checked="true" id="input-2920" role="checkbox"
                                                                    type="checkbox" value="pink">
                                                                    <div
                                                                        class="v-input--selection-controls__ripple pink--text"></div>
                                                                </div>
                                                                <label for="input-2920" class="v-label theme--light"
                                                                       style="left: 0px; right: auto; position: relative;">pink</label>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div
                                                        class="v-input text-capitalize v-input--hide-details v-input--is-label-active v-input--is-dirty theme--light v-input--selection-controls v-input--checkbox indigo--text">
                                                        <div class="v-input__control">
                                                            <div class="v-input__slot">
                                                                <div class="v-input--selection-controls__input"><i
                                                                    aria-hidden="true"
                                                                    class="v-icon notranslate mdi mdi-checkbox-marked theme--light indigo--text"></i><input
                                                                    aria-checked="true" id="input-2922" role="checkbox"
                                                                    type="checkbox" value="indigo">
                                                                    <div
                                                                        class="v-input--selection-controls__ripple indigo--text"></div>
                                                                </div>
                                                                <label for="input-2922" class="v-label theme--light"
                                                                       style="left: 0px; right: auto; position: relative;">indigo</label>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div
                                                        class="v-input text-capitalize v-input--hide-details v-input--is-label-active v-input--is-dirty theme--light v-input--selection-controls v-input--checkbox orange--text">
                                                        <div class="v-input__control">
                                                            <div class="v-input__slot">
                                                                <div class="v-input--selection-controls__input"><i
                                                                    aria-hidden="true"
                                                                    class="v-icon notranslate mdi mdi-checkbox-marked theme--light orange--text"></i><input
                                                                    aria-checked="true" id="input-2924" role="checkbox"
                                                                    type="checkbox" value="orange">
                                                                    <div
                                                                        class="v-input--selection-controls__ripple orange--text"></div>
                                                                </div>
                                                                <label for="input-2924" class="v-label theme--light"
                                                                       style="left: 0px; right: auto; position: relative;">orange</label>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div
                                                        class="v-input text-capitalize v-input--hide-details theme--light v-input--selection-controls v-input--checkbox">
                                                        <div class="v-input__control">
                                                            <div class="v-input__slot">
                                                                <div class="v-input--selection-controls__input"><i
                                                                    aria-hidden="true"
                                                                    class="v-icon notranslate mdi mdi-checkbox-blank-outline theme--light"></i><input
                                                                    aria-checked="false" id="input-2926" role="checkbox"
                                                                    type="checkbox" value="grey">
                                                                    <div
                                                                        class="v-input--selection-controls__ripple"></div>
                                                                </div>
                                                                <label for="input-2926" class="v-label theme--light"
                                                                       style="left: 0px; right: auto; position: relative;">grey</label>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div aria-expanded="true"
                                         class="v-expansion-panel v-expansion-panel--active v-item--active">
                                        <button type="button"
                                                class="v-expansion-panel-header v-expansion-panel-header--active">Tags
                                            <div class="v-expansion-panel-header__icon"><i aria-hidden="true"
                                                                                           class="v-icon notranslate mdi mdi-chevron-down theme--light"></i>
                                            </div>
                                        </button>
                                        <div class="v-expansion-panel-content">
                                            <div class="v-expansion-panel-content__wrap">
                                                <div
                                                    class="v-item-group theme--light v-slide-group v-chip-group v-chip-group--column">
                                                    <div class="v-slide-group__prev v-slide-group__prev--disabled">
                                                        <!----></div>
                                                    <div class="v-slide-group__wrapper">
                                                        <div class="v-slide-group__content"><span tabindex="0"
                                                                                                  class="v-chip v-chip--clickable v-chip--no-color theme--light v-size--small"><span
                                                            class="v-chip__content">
                    Laptop
                  </span></span><span tabindex="0"
                                      class="v-chip v-chip--clickable v-chip--no-color theme--light v-size--small"><span
                                                            class="v-chip__content">
                    Electronics
                  </span></span><span tabindex="0"
                                      class="v-chip v-chip--clickable v-chip--no-color theme--light v-size--small"><span
                                                            class="v-chip__content">
                    Popular
                  </span></span></div>
                                                    </div>
                                                    <div class="v-slide-group__next v-slide-group__next--disabled">
                                                        <!----></div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-sm-12 col-md-8 col-lg-9 col-xl-9 col-12">
                            <div class="d-flex align-center justify-space-between">
                                <div
                                    class="v-input hidden-md-and-up v-input--is-label-active v-input--is-dirty theme--light v-input--selection-controls v-input--switch primary--text">
                                    <div class="v-input__control">
                                        <div class="v-input__slot">
                                            <div class="v-input--selection-controls__input"><input aria-checked="true"
                                                                                                   id="input-2940"
                                                                                                   role="switch"
                                                                                                   type="checkbox"
                                                                                                   aria-disabled="false"
                                                                                                   value="">
                                                <div class="v-input--selection-controls__ripple primary--text"></div>
                                                <div class="v-input--switch__track theme--light primary--text"></div>
                                                <div class="v-input--switch__thumb theme--light primary--text">
                                                    <!----></div>
                                            </div>
                                            <label for="input-2940" class="v-label theme--light"
                                                   style="left: 0px; right: auto; position: relative;">Filter</label>
                                        </div>
                                        <div class="v-messages theme--light primary--text">
                                            <div class="v-messages__wrapper"></div>
                                        </div>
                                    </div>
                                </div>
                                <small class="hidden-sm-and-down">Showing 1-15 of 20 Products</small>
                                <div
                                    class="v-input pa-0 v-input--hide-details v-input--is-label-active v-input--is-dirty v-input--dense theme--light v-text-field v-text-field--single-line v-text-field--solo v-text-field--solo-flat v-text-field--is-booted v-text-field--enclosed v-select"
                                    style="max-width: 250px;">
                                    <div class="v-input__prepend-outer"><i aria-hidden="true"
                                                                           class="v-icon notranslate mdi mdi-sort theme--light primary--text"></i>
                                    </div>
                                    <div class="v-input__control">
                                        <div role="button" aria-haspopup="listbox" aria-expanded="false"
                                             aria-owns="list-2944" class="v-input__slot">
                                            <div class="v-select__slot">
                                                <div class="v-select__selections">
                                                    <div class="v-select__selection v-select__selection--comma">
                                                        Popularity
                                                    </div>
                                                    <input id="input-2944" readonly="readonly" type="text"
                                                           aria-readonly="false" autocomplete="off"></div>
                                                <div class="v-input__append-inner">
                                                    <div class="v-input__icon v-input__icon--append"><i
                                                        aria-hidden="true"
                                                        class="v-icon notranslate mdi mdi-menu-down theme--light"></i>
                                                    </div>
                                                </div>
                                                <input type="hidden" value="Popularity"></div>
                                            <div class="v-menu"><!----></div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <hr role="separator" aria-orientation="horizontal" class="v-divider theme--light"> <!---->
                            <div class="row align-center">
                                <div class="col-sm-6 col-md-6 col-lg-4 col-xl-3 col-12"><a :href="route('product')"
                                                                                           class="pa-4 mx-auto v-card v-card--flat v-card--hover v-card--link v-sheet theme--light rounded-0 transparent"
                                                                                           tabindex="0"
                                                                                           style="height: auto; width: 250px;">
                                    <div class="v-image v-responsive theme--light" style="height: 125px; width: 100%;">
                                        <div class="v-responsive__sizer" style="padding-bottom: 56.25%;"></div>
                                        <div class="v-image__image v-image__image--contain"
                                             style="background-image: url(&quot;https://dummyimage.com/1600x900.png/5fa2dd/ffffff&quot;); background-position: center center;"></div>
                                        <!---->
                                        <div class="v-responsive__content" style="width: 1600px;"></div>
                                    </div>
                                    <div class="px-0 text-body-1 font-weight-medium custom-title-text mt-2">Spermophilus
                                        parryii
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
                                                style="font-size: 15px;"></i> <span class="caption">(5)</span></div>
                                        </div>
                                        <span class="caption font-weight-medium fs-13">510.31$</span></div>
                                </a></div>
                                <div class="col-sm-6 col-md-6 col-lg-4 col-xl-3 col-12"><a :href="route('product')"
                                                                                           class="pa-4 mx-auto v-card v-card--flat v-card--hover v-card--link v-sheet theme--light rounded-0 transparent"
                                                                                           tabindex="0"
                                                                                           style="height: auto; width: 250px;">
                                    <div class="v-image v-responsive theme--light" style="height: 125px; width: 100%;">
                                        <div class="v-responsive__sizer" style="padding-bottom: 56.25%;"></div>
                                        <div class="v-image__image v-image__image--contain"
                                             style="background-image: url(&quot;https://dummyimage.com/1600x900.png/cc0000/ffffff&quot;); background-position: center center;"></div>
                                        <!---->
                                        <div class="v-responsive__content" style="width: 1600px;"></div>
                                    </div>
                                    <div class="px-0 text-body-1 font-weight-medium custom-title-text mt-2">Zenaida
                                        asiatica
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
                                                style="font-size: 15px;"></i> <span class="caption">(5)</span></div>
                                        </div>
                                        <span class="caption font-weight-medium fs-13">760.25$</span></div>
                                </a></div>
                                <div class="col-sm-6 col-md-6 col-lg-4 col-xl-3 col-12"><a :href="route('product')"
                                                                                           class="pa-4 mx-auto v-card v-card--flat v-card--hover v-card--link v-sheet theme--light rounded-0 transparent"
                                                                                           tabindex="0"
                                                                                           style="height: auto; width: 250px;">
                                    <div class="v-image v-responsive theme--light" style="height: 125px; width: 100%;">
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
                                                style="font-size: 15px;"></i> <span class="caption">(5)</span></div>
                                        </div>
                                        <span class="caption font-weight-medium fs-13">597.11$</span></div>
                                </a></div>
                                <div class="col-sm-6 col-md-6 col-lg-4 col-xl-3 col-12"><a :href="route('product')"
                                                                                           class="pa-4 mx-auto v-card v-card--flat v-card--hover v-card--link v-sheet theme--light rounded-0 transparent"
                                                                                           tabindex="0"
                                                                                           style="height: auto; width: 250px;">
                                    <div class="v-image v-responsive theme--light" style="height: 125px; width: 100%;">
                                        <div class="v-responsive__sizer" style="padding-bottom: 56.25%;"></div>
                                        <div class="v-image__image v-image__image--contain"
                                             style="background-image: url(&quot;https://dummyimage.com/1600x900.png/cc0000/ffffff&quot;); background-position: center center;"></div>
                                        <!---->
                                        <div class="v-responsive__content" style="width: 1600px;"></div>
                                    </div>
                                    <div class="px-0 text-body-1 font-weight-medium custom-title-text mt-2">Axis axis
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
                                                style="font-size: 15px;"></i> <span class="caption">(5)</span></div>
                                        </div>
                                        <span class="caption font-weight-medium fs-13">183.9$</span></div>
                                </a></div>
                                <div class="col-sm-6 col-md-6 col-lg-4 col-xl-3 col-12"><a :href="route('product')"
                                                                                           class="pa-4 mx-auto v-card v-card--flat v-card--hover v-card--link v-sheet theme--light rounded-0 transparent"
                                                                                           tabindex="0"
                                                                                           style="height: auto; width: 250px;">
                                    <div class="v-image v-responsive theme--light" style="height: 125px; width: 100%;">
                                        <div class="v-responsive__sizer" style="padding-bottom: 56.25%;"></div>
                                        <div class="v-image__image v-image__image--contain"
                                             style="background-image: url(&quot;https://dummyimage.com/1600x900.png/dddddd/000000&quot;); background-position: center center;"></div>
                                        <!---->
                                        <div class="v-responsive__content" style="width: 1600px;"></div>
                                    </div>
                                    <div class="px-0 text-body-1 font-weight-medium custom-title-text mt-2">Castor
                                        canadensis
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
                                                style="font-size: 15px;"></i> <span class="caption">(5)</span></div>
                                        </div>
                                        <span class="caption font-weight-medium fs-13">39.33$</span></div>
                                </a></div>
                                <div class="col-sm-6 col-md-6 col-lg-4 col-xl-3 col-12"><a :href="route('product')"
                                                                                           class="pa-4 mx-auto v-card v-card--flat v-card--hover v-card--link v-sheet theme--light rounded-0 transparent"
                                                                                           tabindex="0"
                                                                                           style="height: auto; width: 250px;">
                                    <div class="v-image v-responsive theme--light" style="height: 125px; width: 100%;">
                                        <div class="v-responsive__sizer" style="padding-bottom: 56.25%;"></div>
                                        <div class="v-image__image v-image__image--contain"
                                             style="background-image: url(&quot;https://dummyimage.com/1600x900.png/dddddd/000000&quot;); background-position: center center;"></div>
                                        <!---->
                                        <div class="v-responsive__content" style="width: 1600px;"></div>
                                    </div>
                                    <div class="px-0 text-body-1 font-weight-medium custom-title-text mt-2">Psophia
                                        viridis
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
                                                style="font-size: 15px;"></i> <span class="caption">(5)</span></div>
                                        </div>
                                        <span class="caption font-weight-medium fs-13">934.4$</span></div>
                                </a></div>
                                <div class="col-sm-6 col-md-6 col-lg-4 col-xl-3 col-12"><a :href="route('product')"
                                                                                           class="pa-4 mx-auto v-card v-card--flat v-card--hover v-card--link v-sheet theme--light rounded-0 transparent"
                                                                                           tabindex="0"
                                                                                           style="height: auto; width: 250px;">
                                    <div class="v-image v-responsive theme--light" style="height: 125px; width: 100%;">
                                        <div class="v-responsive__sizer" style="padding-bottom: 56.25%;"></div>
                                        <div class="v-image__image v-image__image--contain"
                                             style="background-image: url(&quot;https://dummyimage.com/1600x900.png/ff4444/ffffff&quot;); background-position: center center;"></div>
                                        <!---->
                                        <div class="v-responsive__content" style="width: 1600px;"></div>
                                    </div>
                                    <div class="px-0 text-body-1 font-weight-medium custom-title-text mt-2">Felis
                                        caracal
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
                                                style="font-size: 15px;"></i> <span class="caption">(5)</span></div>
                                        </div>
                                        <span class="caption font-weight-medium fs-13">232.79$</span></div>
                                </a></div>
                                <div class="col-sm-6 col-md-6 col-lg-4 col-xl-3 col-12"><a :href="route('product')"
                                                                                           class="pa-4 mx-auto v-card v-card--flat v-card--hover v-card--link v-sheet theme--light rounded-0 transparent"
                                                                                           tabindex="0"
                                                                                           style="height: auto; width: 250px;">
                                    <div class="v-image v-responsive theme--light" style="height: 125px; width: 100%;">
                                        <div class="v-responsive__sizer" style="padding-bottom: 56.25%;"></div>
                                        <div class="v-image__image v-image__image--contain"
                                             style="background-image: url(&quot;https://dummyimage.com/1600x900.png/ff4444/ffffff&quot;); background-position: center center;"></div>
                                        <!---->
                                        <div class="v-responsive__content" style="width: 1600px;"></div>
                                    </div>
                                    <div class="px-0 text-body-1 font-weight-medium custom-title-text mt-2">Felis
                                        yagouaroundi
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
                                                style="font-size: 15px;"></i> <span class="caption">(5)</span></div>
                                        </div>
                                        <span class="caption font-weight-medium fs-13">558.23$</span></div>
                                </a></div>
                                <div class="col-sm-6 col-md-6 col-lg-4 col-xl-3 col-12"><a :href="route('product')"
                                                                                           class="pa-4 mx-auto v-card v-card--flat v-card--hover v-card--link v-sheet theme--light rounded-0 transparent"
                                                                                           tabindex="0"
                                                                                           style="height: auto; width: 250px;">
                                    <div class="v-image v-responsive theme--light" style="height: 125px; width: 100%;">
                                        <div class="v-responsive__sizer" style="padding-bottom: 56.25%;"></div>
                                        <div class="v-image__image v-image__image--contain"
                                             style="background-image: url(&quot;https://dummyimage.com/1600x900.png/cc0000/ffffff&quot;); background-position: center center;"></div>
                                        <!---->
                                        <div class="v-responsive__content" style="width: 1600px;"></div>
                                    </div>
                                    <div class="px-0 text-body-1 font-weight-medium custom-title-text mt-2">Axis axis
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
                                                style="font-size: 15px;"></i> <span class="caption">(5)</span></div>
                                        </div>
                                        <span class="caption font-weight-medium fs-13">369.35$</span></div>
                                </a></div>
                                <div class="col-sm-6 col-md-6 col-lg-4 col-xl-3 col-12"><a :href="route('product')"
                                                                                           class="pa-4 mx-auto v-card v-card--flat v-card--hover v-card--link v-sheet theme--light rounded-0 transparent"
                                                                                           tabindex="0"
                                                                                           style="height: auto; width: 250px;">
                                    <div class="v-image v-responsive theme--light" style="height: 125px; width: 100%;">
                                        <div class="v-responsive__sizer" style="padding-bottom: 56.25%;"></div>
                                        <div class="v-image__image v-image__image--contain"
                                             style="background-image: url(&quot;https://dummyimage.com/1600x900.png/ff4444/ffffff&quot;); background-position: center center;"></div>
                                        <!---->
                                        <div class="v-responsive__content" style="width: 1600px;"></div>
                                    </div>
                                    <div class="px-0 text-body-1 font-weight-medium custom-title-text mt-2">Acinynox
                                        jubatus
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
                                                style="font-size: 15px;"></i> <span class="caption">(5)</span></div>
                                        </div>
                                        <span class="caption font-weight-medium fs-13">762.95$</span></div>
                                </a></div>
                                <div class="col-sm-6 col-md-6 col-lg-4 col-xl-3 col-12"><a :href="route('product')"
                                                                                           class="pa-4 mx-auto v-card v-card--flat v-card--hover v-card--link v-sheet theme--light rounded-0 transparent"
                                                                                           tabindex="0"
                                                                                           style="height: auto; width: 250px;">
                                    <div class="v-image v-responsive theme--light" style="height: 125px; width: 100%;">
                                        <div class="v-responsive__sizer" style="padding-bottom: 56.25%;"></div>
                                        <div class="v-image__image v-image__image--contain"
                                             style="background-image: url(&quot;https://dummyimage.com/1600x900.png/cc0000/ffffff&quot;); background-position: center center;"></div>
                                        <!---->
                                        <div class="v-responsive__content" style="width: 1600px;"></div>
                                    </div>
                                    <div class="px-0 text-body-1 font-weight-medium custom-title-text mt-2">Otaria
                                        flavescens
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
                                                style="font-size: 15px;"></i> <span class="caption">(5)</span></div>
                                        </div>
                                        <span class="caption font-weight-medium fs-13">929.81$</span></div>
                                </a></div>
                                <div class="col-sm-6 col-md-6 col-lg-4 col-xl-3 col-12"><a :href="route('product')"
                                                                                           class="pa-4 mx-auto v-card v-card--flat v-card--hover v-card--link v-sheet theme--light rounded-0 transparent"
                                                                                           tabindex="0"
                                                                                           style="height: auto; width: 250px;">
                                    <div class="v-image v-responsive theme--light" style="height: 125px; width: 100%;">
                                        <div class="v-responsive__sizer" style="padding-bottom: 56.25%;"></div>
                                        <div class="v-image__image v-image__image--contain"
                                             style="background-image: url(&quot;https://dummyimage.com/1600x900.png/ff4444/ffffff&quot;); background-position: center center;"></div>
                                        <!---->
                                        <div class="v-responsive__content" style="width: 1600px;"></div>
                                    </div>
                                    <div class="px-0 text-body-1 font-weight-medium custom-title-text mt-2">Pseudalopex
                                        gymnocercus
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
                                                style="font-size: 15px;"></i> <span class="caption">(5)</span></div>
                                        </div>
                                        <span class="caption font-weight-medium fs-13">30$</span></div>
                                </a></div>
                                <div class="col-sm-6 col-md-6 col-lg-4 col-xl-3 col-12"><a :href="route('product')"
                                                                                           class="pa-4 mx-auto v-card v-card--flat v-card--hover v-card--link v-sheet theme--light rounded-0 transparent"
                                                                                           tabindex="0"
                                                                                           style="height: auto; width: 250px;">
                                    <div class="v-image v-responsive theme--light" style="height: 125px; width: 100%;">
                                        <div class="v-responsive__sizer" style="padding-bottom: 56.25%;"></div>
                                        <div class="v-image__image v-image__image--contain"
                                             style="background-image: url(&quot;https://dummyimage.com/1600x900.png/dddddd/000000&quot;); background-position: center center;"></div>
                                        <!---->
                                        <div class="v-responsive__content" style="width: 1600px;"></div>
                                    </div>
                                    <div class="px-0 text-body-1 font-weight-medium custom-title-text mt-2">Trachyphonus
                                        vaillantii
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
                                                style="font-size: 15px;"></i> <span class="caption">(5)</span></div>
                                        </div>
                                        <span class="caption font-weight-medium fs-13">348.47$</span></div>
                                </a></div>
                                <div class="col-sm-6 col-md-6 col-lg-4 col-xl-3 col-12"><a :href="route('product')"
                                                                                           class="pa-4 mx-auto v-card v-card--flat v-card--hover v-card--link v-sheet theme--light rounded-0 transparent"
                                                                                           tabindex="0"
                                                                                           style="height: auto; width: 250px;">
                                    <div class="v-image v-responsive theme--light" style="height: 125px; width: 100%;">
                                        <div class="v-responsive__sizer" style="padding-bottom: 56.25%;"></div>
                                        <div class="v-image__image v-image__image--contain"
                                             style="background-image: url(&quot;https://dummyimage.com/1600x900.png/5fa2dd/ffffff&quot;); background-position: center center;"></div>
                                        <!---->
                                        <div class="v-responsive__content" style="width: 1600px;"></div>
                                    </div>
                                    <div class="px-0 text-body-1 font-weight-medium custom-title-text mt-2">Pelecanus
                                        conspicillatus
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
                                                style="font-size: 15px;"></i> <span class="caption">(5)</span></div>
                                        </div>
                                        <span class="caption font-weight-medium fs-13">893.54$</span></div>
                                </a></div>
                                <div class="col-sm-6 col-md-6 col-lg-4 col-xl-3 col-12"><a :href="route('product')"
                                                                                           class="pa-4 mx-auto v-card v-card--flat v-card--hover v-card--link v-sheet theme--light rounded-0 transparent"
                                                                                           tabindex="0"
                                                                                           style="height: auto; width: 250px;">
                                    <div class="v-image v-responsive theme--light" style="height: 125px; width: 100%;">
                                        <div class="v-responsive__sizer" style="padding-bottom: 56.25%;"></div>
                                        <div class="v-image__image v-image__image--contain"
                                             style="background-image: url(&quot;https://dummyimage.com/1600x900.png/ff4444/ffffff&quot;); background-position: center center;"></div>
                                        <!---->
                                        <div class="v-responsive__content" style="width: 1600px;"></div>
                                    </div>
                                    <div class="px-0 text-body-1 font-weight-medium custom-title-text mt-2">Equus
                                        hemionus
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
                                                style="font-size: 15px;"></i> <span class="caption">(5)</span></div>
                                        </div>
                                        <span class="caption font-weight-medium fs-13">158.92$</span></div>
                                </a></div>
                            </div>
                            <div class="row row text-center"></div>
                            <div class="my-12 d-flex justify-space-between">
                                <button type="button"
                                        class="v-btn v-btn--flat v-btn--text theme--light v-size--default primary--text"><span
                                    class="v-btn__content"><i aria-hidden="true"
                                                              class="v-icon notranslate v-icon--left mdi mdi-arrow-left theme--light"></i> Previous Page
          </span></button>
                                <button type="button"
                                        class="v-btn v-btn--flat v-btn--text theme--light v-size--default primary--text">
                                    <span class="v-btn__content">Next Page<i aria-hidden="true"
                                                                             class="v-icon notranslate v-icon--right mdi mdi-arrow-right theme--light"></i></span>
                                </button>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </v-container>
    </page-layout>
</template>

<script>
import PageLayout from "@/Layouts/PageLayout";

export default {
    components: {
        PageLayout
    },
    name: "Marketplace",
    data: () => ({})
};
</script>

<style>

</style>
