<template>
    <App-layout>
        <v-container fluid class="my-8">
            <v-card
                class="mx-auto"
                style="max-width:800px"
            >
                <v-toolbar
                    color="primary"
                    dark
                >
                    <v-toolbar-title>Gestión de Comercio</v-toolbar-title>

                    <v-spacer></v-spacer>
                    <v-divider
                        class="mx-4"

                        vertical
                    ></v-divider>


                    <inertia-link :href="route('business.create')">
                        <v-btn
                            class="ma-2"
                            outlined
                            :fab="$vuetify.breakpoint.smAndDown"
                            :small="$vuetify.breakpoint.smAndDown"
                            color="white"
                            dark
                        >
                            <v-icon dark v-if="$vuetify.breakpoint.smAndDown">
                                mdi-plus
                            </v-icon>
                            <span v-else>
                                Nuevo comercio
                            </span>
                        </v-btn>
                    </inertia-link>


                </v-toolbar>
                <v-toolbar flat dense>
                    <v-spacer v-if="$vuetify.breakpoint.mdAndUp"></v-spacer>
                    <v-text-field
                        class="mx-auto mt-2 "
                        :class="$vuetify.breakpoint.smAndDown?'':'w-12'"
                        hide-details
                        dense
                        placeholder="Buscar"
                        prepend-inner-icon="mdi-magnify"
                        v-model="search"
                        single-line
                    ></v-text-field>
                </v-toolbar>
                <v-data-table
                    :headers="headersBusiness"
                    :items="data"
                    :search="search"
                >
                    <template v-slot:item.business_name="{ item }">
                        <div class="d-flex align-center">
                            <v-avatar size="32" class="mr-1" v-if="item.business_path_profile_image!==null">
                                <v-img :src="`storage/${item.business_path_profile_image}`">
                                </v-img>
                            </v-avatar>
                            <div>{{ item.business_name }}</div>
                        </div>
                    </template>
                    <template v-slot:item.actions="{ item }">
                        <inertia-link :href="route('business.edit',item.id)">
                            <v-icon
                                small
                                class="mr-2"
                            >
                                mdi-pencil
                            </v-icon>
                        </inertia-link>
                        <v-icon
                            class="mr-2"
                            small
                            @click="deleteItem(item)"
                        >
                            mdi-delete
                        </v-icon>

                        <inertia-link :href="route('business.show',item.id)">
                            <v-icon
                                small
                            >
                                mdi-text-box-plus
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
import AppLayout from './../../Layouts/AppLayout'

export default {
    name: "Index",
    props: ['data'],
    components: {
        AppLayout,
    },
    data: () => ({
        search: '',

        headersBusiness: [
            {text: 'Name', value: 'business_name'},
            {text: 'Dirección', value: 'business_address'},
            {text: 'Telefono', value: 'business_phone'},
            {text: 'E-mail', value: 'business_email'},
            {text: 'Actions', value: 'actions', sortable: false},
        ],

    }),

    methods: {
        initialize() {

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
                    let res = this.$inertia.delete('/business/' + item.id, item.id);

                    this.$swal.fire(
                        'Eliminado!',
                        'El comercio fue eliminado correctamente.',
                        'success'
                    )
                }
            });
        },
    },
}
</script>

<style>

.avatar-absolute {
    position: absolute;
    left: 0;
    right: 0;
    margin-left: auto;
    margin-right: auto;
    transform: translateY(-50%) scale(1);
    border: 3px solid #fff;
    transition: all .15s ease;
}
</style>
