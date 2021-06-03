<template>
    <App-layout>
        <v-container>

            <div class="v-data-table product-table v-data-table--has-top v-data-table--has-bottom theme--light">
                <button type="button"
                        class="my-4 button-shadow v-btn v-btn--contained theme--dark v-size--default success"
                        role="button" aria-haspopup="true" aria-expanded="false"><span
                    class="v-btn__content">Create Product</span>
                </button>
                <div role="dialog" class="v-dialog__container"></div>
                <div class="v-data-table__wrapper">
                    <table>
                        <colgroup>
                            <col class="">
                            <col class="">
                            <col class="">
                            <col class="">
                            <col class="">
                            <col class="">
                            <col class="">
                            <col class="">
                        </colgroup>
                        <thead class="v-data-table-header">
                        <tr>
                            <th role="columnheader" scope="col" aria-label="" class="text-start"
                                style="width: 1px; min-width: 1px;">
                                <div class="v-data-table__checkbox v-simple-checkbox">
                                    <div class="v-input--selection-controls__ripple"></div>
                                    <i aria-hidden="true"
                                       class="v-icon notranslate mdi mdi-checkbox-blank-outline theme--light"></i></div>
                            </th>
                            <th role="columnheader" scope="col"
                                aria-label="ID: Sorted ascending. Activate to sort descending." aria-sort="ascending"
                                class="text-start sortable active asc"><span>ID</span><i aria-hidden="true"
                                                                                         class="v-icon notranslate v-data-table-header__icon mdi mdi-arrow-up theme--light"
                                                                                         style="font-size: 18px;"></i>
                            </th>
                            <th role="columnheader" scope="col" aria-label="Image" class="text-start"><span>Image</span>
                            </th>
                            <th role="columnheader" scope="col"
                                aria-label="Title: Not sorted. Activate to sort ascending." aria-sort="none"
                                class="text-start sortable"><span>Title</span><i aria-hidden="true"
                                                                                 class="v-icon notranslate v-data-table-header__icon mdi mdi-arrow-up theme--light"
                                                                                 style="font-size: 18px;"></i></th>
                            <th role="columnheader" scope="col"
                                aria-label="Subtitle: Not sorted. Activate to sort ascending." aria-sort="none"
                                class="text-start sortable"><span>Subtitle</span><i aria-hidden="true"
                                                                                    class="v-icon notranslate v-data-table-header__icon mdi mdi-arrow-up theme--light"
                                                                                    style="font-size: 18px;"></i></th>
                            <th role="columnheader" scope="col"
                                aria-label="Price: Not sorted. Activate to sort ascending." aria-sort="none"
                                class="text-start sortable"><span>Price</span><i aria-hidden="true"
                                                                                 class="v-icon notranslate v-data-table-header__icon mdi mdi-arrow-up theme--light"
                                                                                 style="font-size: 18px;"></i></th>
                            <th role="columnheader" scope="col"
                                aria-label="Rating: Not sorted. Activate to sort ascending." aria-sort="none"
                                class="text-start sortable"><span>Rating</span><i aria-hidden="true"
                                                                                  class="v-icon notranslate v-data-table-header__icon mdi mdi-arrow-up theme--light"
                                                                                  style="font-size: 18px;"></i></th>
                            <th role="columnheader" scope="col" aria-label="Actions" class="text-start">
                                <span>Actions</span></th>
                        </tr>
                        </thead>
                        <tbody>
                        <tr class="">
                            <td class="text-start">
                                <div class="v-data-table__checkbox v-simple-checkbox">
                                    <div class="v-input--selection-controls__ripple"></div>
                                    <i aria-hidden="true"
                                       class="v-icon notranslate mdi mdi-checkbox-blank-outline theme--light"></i></div>
                            </td>
                            <td class="text-start">1</td>
                            <td class="text-start">
                                <div class="v-image v-responsive my-3 theme--light" style="width: 100px;">
                                    <div class="v-responsive__sizer" style="padding-bottom: 66.6667%;"></div>
                                    <div class="v-image__image v-image__image--cover"
                                         style="background-image: url(&quot;https://sing-generator-node.herokuapp.com/assets/products/img1.jpg&quot;); background-position: center center;"></div>
                                    <div class="v-responsive__content" style="width: 6000px;"></div>
                                </div>
                            </td>
                            <td class="text-start"><a class="primaryConst--text">trainers</a></td>
                            <td class="text-start">Trainers In White</td>
                            <td class="text-start">76</td>
                            <td class="text-start">
                                <div class="d-flex align-center"><span class="warning--text"
                                                                       style="font-size: 1rem;">4.6 </span><i
                                    aria-hidden="true"
                                    class="v-icon notranslate mdi mdi-star theme--light warning--text"
                                    style="font-size: 20px;"></i></div>
                            </td>
                            <td class="text-start">
                                <button type="button"
                                        class="mr-3 button-shadow v-btn v-btn--contained theme--light v-size--small success">
                                    <span class="v-btn__content">Edit </span></button>
                                <button type="button"
                                        class="button-shadow v-btn v-btn--contained theme--light v-size--small secondary">
                                    <span class="v-btn__content">Delete </span></button>
                            </td>
                        </tr>
                        <tr class="">
                            <td class="text-start">
                                <div class="v-data-table__checkbox v-simple-checkbox">
                                    <div class="v-input--selection-controls__ripple"></div>
                                    <i aria-hidden="true"
                                       class="v-icon notranslate mdi mdi-checkbox-blank-outline theme--light"></i></div>
                            </td>
                            <td class="text-start">2</td>
                            <td class="text-start">
                                <div class="v-image v-responsive my-3 theme--light" style="width: 100px;">
                                    <div class="v-responsive__sizer" style="padding-bottom: 66.6667%;"></div>
                                    <div class="v-image__image v-image__image--cover"
                                         style="background-image: url(&quot;https://sing-generator-node.herokuapp.com/assets/products/img2.jpg&quot;); background-position: center center;"></div>
                                    <div class="v-responsive__content" style="width: 5184px;"></div>
                                </div>
                            </td>
                            <td class="text-start"><a class="primaryConst--text">boots</a></td>
                            <td class="text-start">Trainers In Blue</td>
                            <td class="text-start">45</td>
                            <td class="text-start">
                                <div class="d-flex align-center"><span class="warning--text"
                                                                       style="font-size: 1rem;">4.6 </span><i
                                    aria-hidden="true"
                                    class="v-icon notranslate mdi mdi-star theme--light warning--text"
                                    style="font-size: 20px;"></i></div>
                            </td>
                            <td class="text-start">
                                <button type="button"
                                        class="mr-3 button-shadow v-btn v-btn--contained theme--light v-size--small success">
                                    <span class="v-btn__content">Edit </span></button>
                                <button type="button"
                                        class="button-shadow v-btn v-btn--contained theme--light v-size--small secondary">
                                    <span class="v-btn__content">Delete </span></button>
                            </td>
                        </tr>
                        <tr class="">
                            <td class="text-start">
                                <div class="v-data-table__checkbox v-simple-checkbox">
                                    <div class="v-input--selection-controls__ripple"></div>
                                    <i aria-hidden="true"
                                       class="v-icon notranslate mdi mdi-checkbox-blank-outline theme--light"></i></div>
                            </td>
                            <td class="text-start">3</td>
                            <td class="text-start">
                                <div class="v-image v-responsive my-3 theme--light" style="width: 100px;">
                                    <div class="v-responsive__sizer" style="padding-bottom: 66.5689%;"></div>
                                    <div class="v-image__image v-image__image--cover"
                                         style="background-image: url(&quot;https://sing-generator-node.herokuapp.com/assets/products/img3.jpg&quot;); background-position: center center;"></div>
                                    <div class="v-responsive__content" style="width: 5456px;"></div>
                                </div>
                            </td>
                            <td class="text-start"><a class="primaryConst--text">flat sandals</a></td>
                            <td class="text-start">Trainers In White</td>
                            <td class="text-start">55</td>
                            <td class="text-start">
                                <div class="d-flex align-center"><span class="warning--text"
                                                                       style="font-size: 1rem;">4.6 </span><i
                                    aria-hidden="true"
                                    class="v-icon notranslate mdi mdi-star theme--light warning--text"
                                    style="font-size: 20px;"></i></div>
                            </td>
                            <td class="text-start">
                                <button type="button"
                                        class="mr-3 button-shadow v-btn v-btn--contained theme--light v-size--small success">
                                    <span class="v-btn__content">Edit </span></button>
                                <button type="button"
                                        class="button-shadow v-btn v-btn--contained theme--light v-size--small secondary">
                                    <span class="v-btn__content">Delete </span></button>
                            </td>
                        </tr>
                        <tr class="">
                            <td class="text-start">
                                <div class="v-data-table__checkbox v-simple-checkbox">
                                    <div class="v-input--selection-controls__ripple"></div>
                                    <i aria-hidden="true"
                                       class="v-icon notranslate mdi mdi-checkbox-blank-outline theme--light"></i></div>
                            </td>
                            <td class="text-start">4</td>
                            <td class="text-start">
                                <div class="v-image v-responsive my-3 theme--light" style="width: 100px;">
                                    <div class="v-responsive__sizer" style="padding-bottom: 66.6667%;"></div>
                                    <div class="v-image__image v-image__image--cover"
                                         style="background-image: url(&quot;https://sing-generator-node.herokuapp.com/assets/products/img4.jpg&quot;); background-position: center center;"></div>
                                    <div class="v-responsive__content" style="width: 2880px;"></div>
                                </div>
                            </td>
                            <td class="text-start"><a class="primaryConst--text">trainers</a></td>
                            <td class="text-start">Trainers In White</td>
                            <td class="text-start">76</td>
                            <td class="text-start">
                                <div class="d-flex align-center"><span class="warning--text"
                                                                       style="font-size: 1rem;">4.6 </span><i
                                    aria-hidden="true"
                                    class="v-icon notranslate mdi mdi-star theme--light warning--text"
                                    style="font-size: 20px;"></i></div>
                            </td>
                            <td class="text-start">
                                <button type="button"
                                        class="mr-3 button-shadow v-btn v-btn--contained theme--light v-size--small success">
                                    <span class="v-btn__content">Edit </span></button>
                                <button type="button"
                                        class="button-shadow v-btn v-btn--contained theme--light v-size--small secondary">
                                    <span class="v-btn__content">Delete </span></button>
                            </td>
                        </tr>
                        <tr class="">
                            <td class="text-start">
                                <div class="v-data-table__checkbox v-simple-checkbox">
                                    <div class="v-input--selection-controls__ripple"></div>
                                    <i aria-hidden="true"
                                       class="v-icon notranslate mdi mdi-checkbox-blank-outline theme--light"></i></div>
                            </td>
                            <td class="text-start">5</td>
                            <td class="text-start">
                                <div class="v-image v-responsive my-3 theme--light" style="width: 100px;">
                                    <div class="v-responsive__sizer" style="padding-bottom: 75%;"></div>
                                    <div class="v-image__image v-image__image--cover"
                                         style="background-image: url(&quot;https://sing-generator-node.herokuapp.com/assets/products/img5.jpeg&quot;); background-position: center center;"></div>
                                    <div class="v-responsive__content" style="width: 4608px;"></div>
                                </div>
                            </td>
                            <td class="text-start"><a class="primaryConst--text">boots</a></td>
                            <td class="text-start">Trainers In Blue</td>
                            <td class="text-start">45</td>
                            <td class="text-start">
                                <div class="d-flex align-center"><span class="warning--text"
                                                                       style="font-size: 1rem;">4.6 </span><i
                                    aria-hidden="true"
                                    class="v-icon notranslate mdi mdi-star theme--light warning--text"
                                    style="font-size: 20px;"></i></div>
                            </td>
                            <td class="text-start">
                                <button type="button"
                                        class="mr-3 button-shadow v-btn v-btn--contained theme--light v-size--small success">
                                    <span class="v-btn__content">Edit </span></button>
                                <button type="button"
                                        class="button-shadow v-btn v-btn--contained theme--light v-size--small secondary">
                                    <span class="v-btn__content">Delete </span></button>
                            </td>
                        </tr>
                        <tr class="">
                            <td class="text-start">
                                <div class="v-data-table__checkbox v-simple-checkbox">
                                    <div class="v-input--selection-controls__ripple"></div>
                                    <i aria-hidden="true"
                                       class="v-icon notranslate mdi mdi-checkbox-blank-outline theme--light"></i></div>
                            </td>
                            <td class="text-start">6</td>
                            <td class="text-start">
                                <div class="v-image v-responsive my-3 theme--light" style="width: 100px;">
                                    <div class="v-responsive__sizer" style="padding-bottom: 66.6406%;"></div>
                                    <div class="v-image__image v-image__image--cover"
                                         style="background-image: url(&quot;https://sing-generator-node.herokuapp.com/assets/products/img6.jpg&quot;); background-position: center center;"></div>
                                    <div class="v-responsive__content" style="width: 1280px;"></div>
                                </div>
                            </td>
                            <td class="text-start"><a class="primaryConst--text">flat sandals</a></td>
                            <td class="text-start">Trainers In White</td>
                            <td class="text-start">55</td>
                            <td class="text-start">
                                <div class="d-flex align-center"><span class="warning--text"
                                                                       style="font-size: 1rem;">4.6 </span><i
                                    aria-hidden="true"
                                    class="v-icon notranslate mdi mdi-star theme--light warning--text"
                                    style="font-size: 20px;"></i></div>
                            </td>
                            <td class="text-start">
                                <button type="button"
                                        class="mr-3 button-shadow v-btn v-btn--contained theme--light v-size--small success">
                                    <span class="v-btn__content">Edit </span></button>
                                <button type="button"
                                        class="button-shadow v-btn v-btn--contained theme--light v-size--small secondary">
                                    <span class="v-btn__content">Delete </span></button>
                            </td>
                        </tr>
                        <tr class="">
                            <td class="text-start">
                                <div class="v-data-table__checkbox v-simple-checkbox">
                                    <div class="v-input--selection-controls__ripple"></div>
                                    <i aria-hidden="true"
                                       class="v-icon notranslate mdi mdi-checkbox-blank-outline theme--light"></i></div>
                            </td>
                            <td class="text-start">7</td>
                            <td class="text-start">
                                <div class="v-image v-responsive my-3 theme--light" style="width: 100px;">
                                    <div class="v-responsive__sizer" style="padding-bottom: 66.6667%;"></div>
                                    <div class="v-image__image v-image__image--cover"
                                         style="background-image: url(&quot;https://sing-generator-node.herokuapp.com/assets/products/img1.jpg&quot;); background-position: center center;"></div>
                                    <div class="v-responsive__content" style="width: 6000px;"></div>
                                </div>
                            </td>
                            <td class="text-start"><a class="primaryConst--text">trainers</a></td>
                            <td class="text-start">Trainers In White</td>
                            <td class="text-start">76</td>
                            <td class="text-start">
                                <div class="d-flex align-center"><span class="warning--text"
                                                                       style="font-size: 1rem;">4.6 </span><i
                                    aria-hidden="true"
                                    class="v-icon notranslate mdi mdi-star theme--light warning--text"
                                    style="font-size: 20px;"></i></div>
                            </td>
                            <td class="text-start">
                                <button type="button"
                                        class="mr-3 button-shadow v-btn v-btn--contained theme--light v-size--small success">
                                    <span class="v-btn__content">Edit </span></button>
                                <button type="button"
                                        class="button-shadow v-btn v-btn--contained theme--light v-size--small secondary">
                                    <span class="v-btn__content">Delete </span></button>
                            </td>
                        </tr>
                        <tr class="">
                            <td class="text-start">
                                <div class="v-data-table__checkbox v-simple-checkbox">
                                    <div class="v-input--selection-controls__ripple"></div>
                                    <i aria-hidden="true"
                                       class="v-icon notranslate mdi mdi-checkbox-blank-outline theme--light"></i></div>
                            </td>
                            <td class="text-start">8</td>
                            <td class="text-start">
                                <div class="v-image v-responsive my-3 theme--light" style="width: 100px;">
                                    <div class="v-responsive__sizer" style="padding-bottom: 66.6667%;"></div>
                                    <div class="v-image__image v-image__image--cover"
                                         style="background-image: url(&quot;https://sing-generator-node.herokuapp.com/assets/products/img2.jpg&quot;); background-position: center center;"></div>
                                    <div class="v-responsive__content" style="width: 5184px;"></div>
                                </div>
                            </td>
                            <td class="text-start"><a class="primaryConst--text">boots</a></td>
                            <td class="text-start">Trainers In Blue</td>
                            <td class="text-start">45</td>
                            <td class="text-start">
                                <div class="d-flex align-center"><span class="warning--text"
                                                                       style="font-size: 1rem;">4.6 </span><i
                                    aria-hidden="true"
                                    class="v-icon notranslate mdi mdi-star theme--light warning--text"
                                    style="font-size: 20px;"></i></div>
                            </td>
                            <td class="text-start">
                                <button type="button"
                                        class="mr-3 button-shadow v-btn v-btn--contained theme--light v-size--small success">
                                    <span class="v-btn__content">Edit </span></button>
                                <button type="button"
                                        class="button-shadow v-btn v-btn--contained theme--light v-size--small secondary">
                                    <span class="v-btn__content">Delete </span></button>
                            </td>
                        </tr>
                        <tr class="">
                            <td class="text-start">
                                <div class="v-data-table__checkbox v-simple-checkbox">
                                    <div class="v-input--selection-controls__ripple"></div>
                                    <i aria-hidden="true"
                                       class="v-icon notranslate mdi mdi-checkbox-blank-outline theme--light"></i></div>
                            </td>
                            <td class="text-start">9</td>
                            <td class="text-start">
                                <div class="v-image v-responsive my-3 theme--light" style="width: 100px;">
                                    <div class="v-responsive__sizer" style="padding-bottom: 66.5689%;"></div>
                                    <div class="v-image__image v-image__image--cover"
                                         style="background-image: url(&quot;https://sing-generator-node.herokuapp.com/assets/products/img3.jpg&quot;); background-position: center center;"></div>
                                    <div class="v-responsive__content" style="width: 5456px;"></div>
                                </div>
                            </td>
                            <td class="text-start"><a class="primaryConst--text">flat sandals</a></td>
                            <td class="text-start">Trainers In White</td>
                            <td class="text-start">55</td>
                            <td class="text-start">
                                <div class="d-flex align-center"><span class="warning--text"
                                                                       style="font-size: 1rem;">4.6 </span><i
                                    aria-hidden="true"
                                    class="v-icon notranslate mdi mdi-star theme--light warning--text"
                                    style="font-size: 20px;"></i></div>
                            </td>
                            <td class="text-start">
                                <button type="button"
                                        class="mr-3 button-shadow v-btn v-btn--contained theme--light v-size--small success">
                                    <span class="v-btn__content">Edit </span></button>
                                <button type="button"
                                        class="button-shadow v-btn v-btn--contained theme--light v-size--small secondary">
                                    <span class="v-btn__content">Delete </span></button>
                            </td>
                        </tr>
                        <tr class="">
                            <td class="text-start">
                                <div class="v-data-table__checkbox v-simple-checkbox">
                                    <div class="v-input--selection-controls__ripple"></div>
                                    <i aria-hidden="true"
                                       class="v-icon notranslate mdi mdi-checkbox-blank-outline theme--light"></i></div>
                            </td>
                            <td class="text-start">10</td>
                            <td class="text-start">
                                <div class="v-image v-responsive my-3 theme--light" style="width: 100px;">
                                    <div class="v-responsive__sizer" style="padding-bottom: 66.6667%;"></div>
                                    <div class="v-image__image v-image__image--cover"
                                         style="background-image: url(&quot;https://sing-generator-node.herokuapp.com/assets/products/img4.jpg&quot;); background-position: center center;"></div>
                                    <div class="v-responsive__content" style="width: 2880px;"></div>
                                </div>
                            </td>
                            <td class="text-start"><a class="primaryConst--text">trainers</a></td>
                            <td class="text-start">Trainers In White</td>
                            <td class="text-start">76</td>
                            <td class="text-start">
                                <div class="d-flex align-center"><span class="warning--text"
                                                                       style="font-size: 1rem;">4.6 </span><i
                                    aria-hidden="true"
                                    class="v-icon notranslate mdi mdi-star theme--light warning--text"
                                    style="font-size: 20px;"></i></div>
                            </td>
                            <td class="text-start">
                                <button type="button"
                                        class="mr-3 button-shadow v-btn v-btn--contained theme--light v-size--small success">
                                    <span class="v-btn__content">Edit </span></button>
                                <button type="button"
                                        class="button-shadow v-btn v-btn--contained theme--light v-size--small secondary">
                                    <span class="v-btn__content">Delete </span></button>
                            </td>
                        </tr>
                        </tbody>
                    </table>
                </div>
                <div class="v-data-footer">
                    <div class="v-data-footer__select">Rows per page:
                        <div
                            class="v-input v-input--hide-details v-input--is-label-active v-input--is-dirty theme--light v-text-field v-text-field--is-booted v-select">
                            <div class="v-input__control">
                                <div role="button" aria-haspopup="listbox" aria-expanded="false" aria-owns="list-415"
                                     class="v-input__slot">
                                    <div class="v-select__slot">
                                        <div class="v-select__selections">
                                            <div class="v-select__selection v-select__selection--comma">10</div>
                                            <input aria-label="Rows per page:" id="input-415" readonly="readonly"
                                                   type="text" aria-readonly="false" autocomplete="off"></div>
                                        <div class="v-input__append-inner">
                                            <div class="v-input__icon v-input__icon--append"><i aria-hidden="true"
                                                                                                class="v-icon notranslate mdi mdi-menu-down theme--light"></i>
                                            </div>
                                        </div>
                                        <input type="hidden" value="10"></div>
                                    <div class="v-menu"><!----></div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="v-data-footer__pagination">1-10 of 12</div>
                    <div class="v-data-footer__icons-before">
                        <button type="button" disabled="disabled"
                                class="v-btn v-btn--disabled v-btn--flat v-btn--icon v-btn--round v-btn--text theme--light v-size--default"
                                aria-label="Previous page"><span class="v-btn__content"><i aria-hidden="true"
                                                                                           class="v-icon notranslate mdi mdi-chevron-left theme--light"></i></span>
                        </button>
                    </div>
                    <div class="v-data-footer__icons-after">
                        <button type="button"
                                class="v-btn v-btn--flat v-btn--icon v-btn--round v-btn--text theme--light v-size--default"
                                aria-label="Next page"><span class="v-btn__content"><i aria-hidden="true"
                                                                                       class="v-icon notranslate mdi mdi-chevron-right theme--light"></i></span>
                        </button>
                    </div>
                </div>
            </div>
            <v-card>
                <v-card-title>
                    <v-toolbar-title>Gestión de categorias</v-toolbar-title>
                    <v-divider
                        class="mx-4"
                        inset
                        vertical
                    ></v-divider>
                    <v-spacer></v-spacer>
                    <v-text-field
                        v-model="search"
                        append-icon="mdi-magnify"
                        label="Search"
                        single-line
                        hide-details
                    ></v-text-field>
                </v-card-title>

                <v-card-text>
                    <inertia-link :href="route('category.create')">
                        <v-btn
                            color="success"
                            dark
                            class="mb-2 my-4"
                        >
                            Crear Categoría
                        </v-btn>
                    </inertia-link>
                </v-card-text>
                <v-data-table
                    :headers="headers"
                    :items="desserts"
                    sort-by="calories"
                    :search="search"
                >

                    <template v-slot:item.actions="{ item }">
                        <v-icon
                            small
                            class="mr-2"
                            @click="editItem(item)"
                        >
                            mdi-pencil
                        </v-icon>
                        <v-icon
                            small
                            @click="deleteItem(item)"
                        >
                            mdi-delete
                        </v-icon>
                    </template>
                    <template v-slot:no-data>
                        <v-btn
                            color="primary"
                            @click="initialize"
                        >
                            Reset
                        </v-btn>
                    </template>
                </v-data-table>
            </v-card>

            {{data}}
        </v-container>
    </App-layout>
</template>

<script>
import AppLayout from './../../Layouts/AppLayout';

export default {
    name: "Index",
    components: {
        AppLayout,
    },
    props: ['data'],
    data: () => ({
        dialog: false,
        dialogDelete: false,
        headers: [
            {
                text: 'Dessert (100g serving)',
                align: 'start',
                sortable: false,
                value: 'name',
            },
            {text: 'Calories', value: 'calories'},
            {text: 'Fat (g)', value: 'fat'},
            {text: 'Carbs (g)', value: 'carbs'},
            {text: 'Protein (g)', value: 'protein'},
            {text: 'Actions', value: 'actions', sortable: false},
        ],
        desserts: [],
        editedIndex: -1,
        editedItem: {
            name: '',
            calories: 0,
            fat: 0,
            carbs: 0,
            protein: 0,
        },
        defaultItem: {
            name: '',
            calories: 0,
            fat: 0,
            carbs: 0,
            protein: 0,
        },
        search: null
    }),

    computed: {
        formTitle() {
            return this.editedIndex === -1 ? 'New Item' : 'Edit Item'
        },
    },

    watch: {
        dialog(val) {
            val || this.close()
        },
        dialogDelete(val) {
            val || this.closeDelete()
        },
    },

    created() {
        this.initialize()
    },

    methods: {
        initialize() {
            this.desserts = [
                {
                    name: 'Frozen Yogurt',
                    calories: 159,
                    fat: 6.0,
                    carbs: 24,
                    protein: 4.0,
                },
                {
                    name: 'Ice cream sandwich',
                    calories: 237,
                    fat: 9.0,
                    carbs: 37,
                    protein: 4.3,
                },
                {
                    name: 'Eclair',
                    calories: 262,
                    fat: 16.0,
                    carbs: 23,
                    protein: 6.0,
                },
                {
                    name: 'Cupcake',
                    calories: 305,
                    fat: 3.7,
                    carbs: 67,
                    protein: 4.3,
                },
                {
                    name: 'Gingerbread',
                    calories: 356,
                    fat: 16.0,
                    carbs: 49,
                    protein: 3.9,
                },
                {
                    name: 'Jelly bean',
                    calories: 375,
                    fat: 0.0,
                    carbs: 94,
                    protein: 0.0,
                },
                {
                    name: 'Lollipop',
                    calories: 392,
                    fat: 0.2,
                    carbs: 98,
                    protein: 0,
                },
                {
                    name: 'Honeycomb',
                    calories: 408,
                    fat: 3.2,
                    carbs: 87,
                    protein: 6.5,
                },
                {
                    name: 'Donut',
                    calories: 452,
                    fat: 25.0,
                    carbs: 51,
                    protein: 4.9,
                },
                {
                    name: 'KitKat',
                    calories: 518,
                    fat: 26.0,
                    carbs: 65,
                    protein: 7,
                },
            ]
        },

        editItem(item) {
            this.editedIndex = this.desserts.indexOf(item)
            this.editedItem = Object.assign({}, item)
            this.dialog = true
        },

        deleteItem(item) {
            this.editedIndex = this.desserts.indexOf(item)
            this.editedItem = Object.assign({}, item)
            this.dialogDelete = true
        },

        deleteItemConfirm() {
            this.desserts.splice(this.editedIndex, 1)
            this.closeDelete()
        },

        close() {
            this.dialog = false
            this.$nextTick(() => {
                this.editedItem = Object.assign({}, this.defaultItem)
                this.editedIndex = -1
            })
        },

        closeDelete() {
            this.dialogDelete = false
            this.$nextTick(() => {
                this.editedItem = Object.assign({}, this.defaultItem)
                this.editedIndex = -1
            })
        },

        save() {
            if (this.editedIndex > -1) {
                Object.assign(this.desserts[this.editedIndex], this.editedItem)
            } else {
                this.desserts.push(this.editedItem)
            }
            this.close()
        },
    },
}
</script>

<style scoped>

</style>
