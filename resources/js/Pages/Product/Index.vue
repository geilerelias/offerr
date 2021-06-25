<template>
    <App-layout>
        <v-container class="my-12">

            <v-card>
                <v-card-title>
                    <v-toolbar-title>Gestión de Productos</v-toolbar-title>
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
                    <inertia-link :href="route('product.create')">
                        <v-btn
                            color="success"
                            dark
                            class="mb-2 my-4"
                        >
                            Crear Producto
                        </v-btn>
                    </inertia-link>
                </v-card-text>

                <v-data-table
                    class="px-6 pb-6"
                    :headers="headers"
                    :items="product"
                    :search="search"
                >
                    <template v-slot:item.product_name="{ item }">
                        <div class="d-flex align-center">
                            <v-avatar size="32" class="mr-2" v-if="getImagePath(item.product_path_image)!==null">
                                <v-img :src="`/storage/${getImagePath(item.product_path_image)}`">
                                </v-img>
                            </v-avatar>
                            <div>{{ item.product_name }}</div>
                        </div>
                    </template>
                    <template v-slot:item.subcategory_id="{ item }">
                        <inertia-link :href="route('subcategory.show',item.subcategory_id)" class="primaryConst--text">
                            {{ currentSubcategory(item) }}
                        </inertia-link>
                    </template>

                    <template v-slot:item.actions="{ item }">
                        <inertia-link :href="route('product.edit',item.id)">
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
        headers: [
            {
                text: 'Name',
                align: 'start',
                sortable: false,
                value: 'product_name',
            },
            {text: 'Descripción', value: 'product_description'},
            {text: 'Precio', value: 'product_price'},
            {text: 'Cantidad', value: 'product_stock'},
            {text: 'Subcategoría', value: 'subcategory_id'},
            {text: 'Actions', value: 'actions', sortable: false},
        ],
        search: null,
        product: [],
        subcategories: null
    }),
    created() {
        this.product = this.data;
        console.log(this.product)
        axios
            .get("/subcategory/user/all")
            .then(response => {
                this.subcategories = response.data;
            })
            .catch(error => {
                console.log(error);
                const array = error.response.data.errors;
                let text = "";
                for (var clave in array) {
                    text += clave + ": " + array[clave] + "\n ";
                }
                this.$swal.fire("Error!", text, "error");
                console.log(text);
            });
    },

    methods: {
        getImagePath(item) {
            if (item == null) return null;

            try {
                return JSON.parse(item)[0];
            } catch (e) {
                console.log(e)
            }

            return null;
        },
        initialize() {
            window.location.reload();
        },
        currentSubcategory(item) {
            if (this.subcategories !== null) {
                let res = this.subcategories.find(element => element.id === item.subcategory_id);
                return res.subcategory_name;
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
                    let res = this.$inertia.delete('/product/' + item.id, item.id);

                    this.$swal.fire(
                        '¡Eliminada!',
                        'El producto fue eliminado correctamente.',
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
