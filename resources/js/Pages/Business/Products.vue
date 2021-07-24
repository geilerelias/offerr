<template>
    <Dashboard-Layout>

        <template v-slot:title>Products</template>

        <v-container class="mt-n12">
            <v-toolbar color="transparent" flat>
                <inertia-link :href="route('product.create')">
                    <v-btn
                        color="primary"
                        class="hidden-xs-only "
                    >
                        Crear nuevo producto
                    </v-btn>
                </inertia-link>
                <v-spacer></v-spacer>
            </v-toolbar>

            <v-col v-for="item in data.products" :key="item.id" cols="12">
                <v-card :href="route('product.watch',item.id)"
                        class="elevation-cs ml-0 d-flex align-center pa-6 justify-center justify-md-space-between rounded-lg">
                    <div
                        class="align-center align-md-center d-flex flex-column flex-md-row justify-center mx-0 mx-md-12">
                        <v-avatar tile size="90" class="grey lighten-4">
                            <v-icon
                                v-if="item.product_path_image===null ||getFirstImage(item.product_path_image)===undefined"
                                size="40">
                                mdi-decagram
                            </v-icon>
                            <v-img v-else :src="'/storage/'+getFirstImage(item.product_path_image)">
                            </v-img>
                        </v-avatar>

                        <div class="mx-0 mx-md-12 text-center text-md-left w-100">
                            <p class="font-weight-bold black--text" v-text="item.product_name"></p>
                            <p v-text="item.product_description"></p>
                            <h2 class="font-weight-bold primary--text">
                                Precio ${{ item.product_price }}
                            </h2>
                            <p>
                                <span class="grey--text">Cantidad disponible</span>
                                {{ item.product_stock }} unidades
                            </p>
                        </div>
                    </div>
                    <div>
                        <inertia-link :href="route('product.edit',item.id)">
                            <v-btn>
                                editar
                            </v-btn>
                        </inertia-link>
                        <inertia-link :href="route('product.index',item.id)">
                            <v-btn>
                                ver mas
                            </v-btn>
                        </inertia-link>
                    </div>
                </v-card>
            </v-col>
        </v-container>

        {{ data }}
    </Dashboard-Layout>
</template>

<script>
import DashboardLayout from '@/Layouts/BusinessLayout.vue'

export default {
    name: "Products",
    components: {
        DashboardLayout
    },
    props: ['data']
}
</script>

<style scoped>

</style>
