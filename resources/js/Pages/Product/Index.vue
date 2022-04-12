<template>
    <App-Layout>

        <template #title>
            <h2 class="text-xl text-gray-800 leading-tight">
                Mis Productos
            </h2>
        </template>

        <v-container
            class="px-6"
            fluid
        >
            <v-row>
                <v-col>
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
                                <div class="d-flex align-center py-4">
                                    <v-avatar size="32" class="mr-2"
                                              v-if="getImagePath(item.product_path_image)!==null">
                                        <v-img :src="`/storage/${getImagePath(item.product_path_image)}`">
                                        </v-img>
                                    </v-avatar>
                                    <div>{{ item.product_name }}</div>
                                </div>
                            </template>
                            <template v-slot:item.subcategory_id="{ item }">
                                <inertia-link :href="route('subcategory.show',item.subcategory_id)"
                                              class="primaryConst--text">
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
                </v-col>
            </v-row>
        </v-container>

        <div class="text-center">
            <v-overlay :value="overlay" :opacity="0.9" color="primary">
                <spinner-component></spinner-component>
            </v-overlay>
        </div>
    </App-Layout>
</template>

<script>
import AppLayout from "../../Layouts/AppLayout";
import SpinnerComponent from "@/Components/SpinnerComponent";

export default {
    name: "Index",
    components: {
        AppLayout,
        SpinnerComponent
    },
    props: ['data'],
    data: () => ({
        cards: ['Today', 'Yesterday'],
        drawer: null,
        overlay: false,
        links: [
            ['mdi-book-open-outline', 'pedidos'],
            ['mdi-clipboard-list', 'mis productos'],
            ['mdi-newspaper-variant-outline', 'reseñas'],
            ['mdi-account-group', 'seguidores'],
            ['mdi-chart-bar', 'estadisticas'],
            ['mdi-file-document-edit-outline', 'editar perfil']
        ],


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
                    let res = this.$inertia.delete('/product/' + item.id, item.id,

                        {
                            onBefore: (visit) => {
                                console.log()
                            },
                            onStart: (visit) => {
                            },
                            onProgress: (progress) => {
                            },
                            onSuccess: (page) => {
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
                        }
                    );
                }
            });
        },
    },
}
</script>

<style scoped>

</style>
