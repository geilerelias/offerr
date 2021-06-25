<template>
    <App-layout>
        <v-container class="my-6 py-4 py-lg-8">
            <v-row>
                <v-col class="col-lg-6 col-12">
                    <v-img
                        :src="data.subcategory_path_image===null?'/images/not-found-image.jpg':`/storage/${data.subcategory_path_image}`"
                        class="rounded-lg elevation-6"
                        style="max-height: 300px;">
                    </v-img>
                </v-col>
                <v-col class="col-lg-6 col-12 md:inline-flex justify-center align-center">
                    <div>
                        <h2 class="text-h3 text-lg-h2 mt-0 mt-xl-10">
                            {{ data.subcategory_name }}
                        </h2>
                        <div class="text-body-1 text-lg-h6">
                            {{ data.subcategory_description }}
                        </div>
                    </div>
                </v-col>
            </v-row>


            <v-container class="py-4 py-lg-8">
                <div
                    class="d-flex align-bottom flex-row-reverse flex-sm-row justify-right justify-sm-space-between mb-1">

                    <small class="hidden-sm-and-down body-1">Productos disponibles</small>
                    <div>

                    </div>
                </div>

                <v-divider></v-divider>

                <v-row class="mt-6">
                    <v-col class="col-lg-6 col-12" v-for="item in products" :key="item.id">

                        <v-hover v-slot="{ hover }">
                            <inertia-link :href="`/product/watch/${item.id}`">
                                <v-card
                                    :elevation="hover ? 6 : 0"
                                    flat
                                    href=""
                                    class="pa-4 mx-auto  rounded-0 transparent"
                                    tabindex="0" style="height: auto; width: 250px;">
                                    <v-img
                                        :src=" getFirtImage(item)===null?'/images/not-found-image.jpg':`/storage/${getFirtImage(item)}`"
                                        cover
                                        :aspect-ratio="1">
                                    </v-img>
                                    <div
                                        class="px-0 text-body-1 font-weight-medium custom-title-text mt-2">
                                        {{ item.product_name }}
                                    </div>

                                    <div class="d-flex align-center justify-space-between">
                                        <div class="rating d-flex">
                                            <v-rating
                                                v-model="4.5"
                                                background-color="orange lighten-3"
                                                color="orange"
                                                small
                                            >
                                            </v-rating>
                                        </div>
                                        <span
                                            class="caption font-weight-medium fs-13">$ {{
                                                item.product_price
                                            }}</span>
                                    </div>
                                </v-card>
                            </inertia-link>
                        </v-hover>
                    </v-col>
                </v-row>
            </v-container>

        </v-container>

    </App-layout>
</template>

<script>
import AppLayout from './../../Layouts/AppLayout';
import countries_cities from "../../../assets/countries_cities.json";

export default {
    name: "Show",
    components: {
        AppLayout,
    },
    props: ['data'],
    data: () => ({
        country: null,
        city: [],
        countriesCities: countries_cities,
        dropdown: [
            {title: 'Click Me'},
            {title: 'Click Me'},
            {title: 'Click Me'},
            {title: 'Click Me 2'},
        ],
        products: [],
        items: ['Foo', 'Bar', 'Fizz', 'Buzz'],
    }),

    created() {
        axios
            .get(`/subcategory/${this.data.id}/product`)
            .then(response => {
                this.products = response.data;
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

        let str = '';
        for (const item in countries_cities) {
            str = str + `${item},`;
        }
        this.countries = str.split(',');
    },
    methods: {
        getFirtImage(item) {
            try {
                return JSON.parse(item.product_path_image)[0];
            } catch (e) {
                console.log(e)
                return null;
            }
        }
    }
}
</script>

<style scoped>

</style>
