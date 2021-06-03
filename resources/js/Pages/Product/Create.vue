<template>
    <App-layout>
        <div class="edit-dialog v-card v-sheet theme--light">
            <div class="v-card__title"><span class="headline">New Item</span></div>
            <div class="v-card__text">
                <div class="container">
                    <div class="row">
                        <div class="col-sm-6 col-12">
                            <div
                                class="v-input theme--light v-text-field v-text-field--is-booted v-text-field--enclosed v-text-field--outlined">
                                <div class="v-input__control">
                                    <div class="v-input__slot">
                                        <fieldset aria-hidden="true">
                                            <legend style="width: 0px;"><span>​</span></legend>
                                        </fieldset>
                                        <div class="v-text-field__slot"><label for="input-431"
                                                                               class="v-label theme--light"
                                                                               style="left: 0px; right: auto; position: absolute;">Product
                                            name</label><input id="input-431" type="text"></div>
                                    </div>
                                    <div class="v-text-field__details">
                                        <div class="v-messages theme--light">
                                            <div class="v-messages__wrapper"></div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-sm-6 col-12">
                            <div
                                class="v-input theme--light v-text-field v-text-field--is-booted v-text-field--enclosed v-text-field--outlined">
                                <div class="v-input__control">
                                    <div class="v-input__slot">
                                        <fieldset aria-hidden="true">
                                            <legend style="width: 0px;"><span>​</span></legend>
                                        </fieldset>
                                        <div class="v-text-field__slot"><label for="input-434"
                                                                               class="v-label theme--light"
                                                                               style="left: 0px; right: auto; position: absolute;">Subtitle</label><input
                                            id="input-434" type="text"></div>
                                    </div>
                                    <div class="v-text-field__details">
                                        <div class="v-messages theme--light">
                                            <div class="v-messages__wrapper"></div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-sm-6 col-md-4 col-12">
                            <div
                                class="v-input theme--light v-text-field v-text-field--is-booted v-text-field--enclosed v-text-field--outlined">
                                <div class="v-input__control">
                                    <div class="v-input__slot">
                                        <fieldset aria-hidden="true">
                                            <legend style="width: 0px;"><span>​</span></legend>
                                        </fieldset>
                                        <div class="v-text-field__slot"><label for="input-437"
                                                                               class="v-label theme--light"
                                                                               style="left: 0px; right: auto; position: absolute;">Price</label><input
                                            id="input-437" type="text"></div>
                                    </div>
                                    <div class="v-text-field__details">
                                        <div class="v-messages theme--light">
                                            <div class="v-messages__wrapper"></div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-sm-6 col-md-4 col-12">
                            <div
                                class="v-input v-input--has-state theme--light v-text-field v-text-field--is-booted v-text-field--enclosed v-text-field--outlined error--text">
                                <div class="v-input__control">
                                    <div class="v-input__slot">
                                        <fieldset aria-hidden="true">
                                            <legend style="width: 0px;"><span>​</span></legend>
                                        </fieldset>
                                        <div class="v-text-field__slot"><label for="input-440"
                                                                               class="v-label theme--light error--text"
                                                                               style="left: 0px; right: auto; position: absolute;">Rating</label><input
                                            id="input-440" type="number"></div>
                                    </div>
                                    <div class="v-text-field__details">
                                        <div class="v-messages theme--light error--text" role="alert">
                                            <div class="v-messages__wrapper">
                                                <div class="v-messages__message">This field is required</div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-sm-6 col-md-4 col-12">
                            <div
                                class="v-input theme--light v-text-field v-text-field--is-booted v-text-field--enclosed v-text-field--outlined v-select">
                                <div class="v-input__control">
                                    <div role="button" aria-haspopup="listbox" aria-expanded="false"
                                         aria-owns="list-443"
                                         class="v-input__slot">
                                        <fieldset aria-hidden="true">
                                            <legend style="width: 0px;"><span>​</span></legend>
                                        </fieldset>
                                        <div class="v-select__slot"><label for="input-443" class="v-label theme--light"
                                                                           style="left: 0px; right: auto; position: absolute;">Image</label>
                                            <div class="v-select__selections"><input id="input-443" readonly="readonly"
                                                                                     type="text" aria-readonly="false"
                                                                                     autocomplete="off"></div>
                                            <div class="v-input__append-inner">
                                                <div class="v-input__icon v-input__icon--append"><i aria-hidden="true"
                                                                                                    class="v-icon notranslate mdi mdi-menu-down theme--light"></i>
                                                </div>
                                            </div>
                                            <input type="hidden" value=""></div>
                                        <div class="v-menu"></div>
                                    </div>
                                    <div class="v-text-field__details">
                                        <div class="v-messages theme--light">
                                            <div class="v-messages__wrapper"></div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="v-card__actions">
                <div class="spacer"></div>
                <button type="button"
                        class="v-btn v-btn--depressed v-btn--flat v-btn--outlined theme--light v-size--default primary--text">
                    <span class="v-btn__content">Cancel</span></button>
                <button type="button" class="button-shadow v-btn v-btn--contained theme--light v-size--default success">
                    <span class="v-btn__content">Save</span></button>
            </div>
        </div>
    </App-layout>
</template>

<script>

import AppLayout from './../../Layouts/AppLayout';

export default {
    name: "Create",
    components: {
        AppLayout,
    },
    props: ['data']
}
</script>

<style scoped>

</style>
