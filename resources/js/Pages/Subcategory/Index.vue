<template>
    <App-layout>
        <v-container class="my-6">
            <v-card>
                <v-card-title>
                    <v-toolbar-title>Gestión de subcategorías</v-toolbar-title>
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
                    <inertia-link :href="route('subcategory.create')">
                        <v-btn
                            color="success"
                            dark
                            class="mb-2 my-4"
                        >
                            Crear Subcategoría
                        </v-btn>
                    </inertia-link>
                </v-card-text>
                <v-data-table
                    class="px-6 pb-6"
                    :headers="headers"
                    :items="data"
                    :search="search"
                >

                    <template v-slot:item.subcategory_name="{ item }">
                        <div class="d-flex align-center">
                            <v-avatar size="32" class="mr-2" v-if="item.subcategory_path_image!==null">
                                <v-img :src="`storage/${item.subcategory_path_image}`">
                                </v-img>
                            </v-avatar>
                            <div>{{ item.subcategory_name }}</div>
                        </div>
                    </template>


                    <template v-slot:item.actions="{ item }">
                        <inertia-link :href="route('subcategory.edit',item.id)">
                            <v-icon small
                                    :left="$vuetify.breakpoint.mdAndUp"
                                    color="success">
                                mdi-pencil
                            </v-icon>
                        </inertia-link>

                        <v-icon small
                                :left="$vuetify.breakpoint.mdAndUp" @click="deleteItem(item)"
                                color="error">
                            mdi-delete
                        </v-icon>

                        <inertia-link :href="route('subcategory.show',item.id)">
                            <v-icon
                                small
                                color="secondary"
                            >
                                mdi-view-split-vertical
                            </v-icon>
                        </inertia-link>


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
                text: 'Name',
                align: 'start',
                sortable: false,
                value: 'subcategory_name',
            },
            {text: 'Descripción', value: 'subcategory_description'},
            {text: 'Actions', value: 'actions', sortable: false},
        ],
        search: null,
        business: null
    }),

    computed: {
        localDrawer: {
            get() {
                return this.drawer;
            },
            set(val) {
                this.setDrawer(val);
            }
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

    },

    methods: {
        initialize() {
            window.location.reload();
        },
        currentBusiness(item) {
            if (this.business !== null) {
                let res = this.business.find(element => element.id === item.business_id);
                return res.business_name;
            } else {
                return null;
            }
        },
        deleteItem(item) {
            this.$swal.fire({
                title: '¿Estas seguro?',
                text: "¡esta acción no se puede revertir!",
                icon: 'warning',
                showCancelButton: true,
                confirmButtonColor: '#3085d6',
                cancelButtonColor: '#d33',
                confirmButtonText: 'Si, eliminar!'
            }).then((result) => {
                if (result.isConfirmed) {
                    item._method = 'DELETE';
                    let res = this.$inertia.delete('/subcategory/' + item.id, item.id);

                    this.$swal.fire(
                        '¡Eliminada!',
                        'La subcategoría fue eliminada correctamente.',
                        'success'
                    )
                }
            });
        },
    },
}
</script>

<style scoped>

</style>
