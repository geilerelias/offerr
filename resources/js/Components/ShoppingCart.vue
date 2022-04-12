<template>
    <div class="text-center " v-if="cantidad>0">
        <v-menu
            v-model="menuCart"
            :close-on-content-click="false"
            bottom
            origin="center center"
            transition="scale-transition"
            offset-y
        >
            <template v-slot:activator="{ on, attrs }">

                <v-badge
                    color="error"
                    :content="cantidad"
                    overlap
                    class="mr-4"
                >
                    <v-btn
                        small
                        fab
                        text
                        color="primary"
                        v-bind="attrs"
                        v-on="on"
                    >
                        <v-icon>
                            mdi-cart-outline
                        </v-icon>
                    </v-btn>
                </v-badge>

            </template>
            <v-card class="my-0 py-0 overflow-hidden">
                <v-list-item>
                    <v-list-item-avatar class="mr-0" size="40"
                    >
                        <v-icon>
                            mdi-shopping-outline
                        </v-icon>
                    </v-list-item-avatar>
                    <v-list-item-content class="">
                        <v-list-item-title>{{ cantidad }} Items</v-list-item-title>
                    </v-list-item-content>
                    <v-list-item-action>
                        <v-btn rounded icon @click="menuCart=!menuCart">
                            <v-icon>
                                mdi-close
                            </v-icon>
                        </v-btn>
                    </v-list-item-action>
                </v-list-item>
                <v-divider></v-divider>

                <v-card-text class="overflow-auto"
                             style="max-height:300px">

                    <v-list-item
                        v-for="(item, n) in products" :key="item.id"
                    >

                        <v-list-item-avatar>
                            <v-img :src="'/storage/'+getFirtImage(item.product_path_images)"></v-img>
                        </v-list-item-avatar>

                        <v-list-item-content>
                            <v-list-item-title v-html="item.product_name"></v-list-item-title>
                            <v-list-item-subtitle
                                v-html="'$ '+new Intl.NumberFormat('es-ES').format(item.product_price)"></v-list-item-subtitle>
                            <v-list-item-subtitle v-html="item.product_quantity"></v-list-item-subtitle>
                        </v-list-item-content>
                    </v-list-item>

                </v-card-text>

                <v-divider></v-divider>

                <v-list dense>
                    <v-list-item
                        v-for="item in cartDetail"
                        :key="item.title"
                        link
                    >
                        <v-list-item-icon>
                            <v-icon>{{ item.icon }}</v-icon>
                        </v-list-item-icon>

                        <v-list-item-content>
                            <v-list-item-title>{{ item.title }}</v-list-item-title>
                        </v-list-item-content>
                    </v-list-item>
                </v-list>

                <v-card-actions>
                    <v-row>
                        <v-col cols="12">
                            <v-btn block elevated
                                   class="text-capitalize  primary"
                            >
                                Checkout Now ($ {{ new Intl.NumberFormat('es-ES').format(total) }})
                            </v-btn>
                        </v-col>
                        <v-col cols="12">
                            <inertia-link href="/cart">
                                <v-btn block outlined
                                       class="text-cappitalise  primary--text">
                                    View Cart
                                </v-btn>
                            </inertia-link>
                        </v-col>
                    </v-row>
                </v-card-actions>
            </v-card>
        </v-menu>
    </div>
</template>

<script>
import exampleimg from "../../images/example.png";

export default {
    name: "ShoppingCart",
    data: () => ({
        menuCart: false,
        products: [],
        exampleimg: exampleimg,
        cantidad: 0,
        total: 0,
        cartDetail: [],
    }),
    created() {
        console.log('user => ', this.$page.user.id);
        axios.get('/cart/all')
            .then(response => {
                console.log('all => ', response)
                this.products = response.data;
            })
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
        getFirtImage(item) {
            console.log('This is path images ', item)
            try {
                return JSON.parse(item)[0];
            } catch (e) {
                console.log(e)
                return null;
            }
        },
    }
}
</script>

<style scoped>

</style>
