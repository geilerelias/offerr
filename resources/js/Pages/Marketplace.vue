<template>
    <page-layout>
        <v-container class="py-12 my-12">
            <v-row>
                <v-col class="col-sm-12 col-md-4 col-lg-3 col-xl-3 col-12">
                    <v-card>
                        <v-expansion-panels v-model="panel" multiple accordion>
                            <v-expansion-panel>
                                <v-expansion-panel-header>Categorías</v-expansion-panel-header>
                                <v-expansion-panel-content>
                                    <v-list
                                        nav
                                        dense
                                    >
                                        <v-list-item-group
                                            v-model="selectedCategory"
                                            color="primary"
                                        >
                                            <v-list-item
                                                v-for="(item, i) in categories"
                                                :key="i"
                                            >
                                                <v-list-item-avatar>
                                                    <v-img :src="`/storage/${item.category_path_image}`"></v-img>
                                                </v-list-item-avatar>

                                                <v-list-item-content>
                                                    <v-list-item-title v-text="item.category_name"></v-list-item-title>
                                                </v-list-item-content>
                                            </v-list-item>
                                        </v-list-item-group>
                                    </v-list>
                                </v-expansion-panel-content>
                            </v-expansion-panel>
                            <v-expansion-panel>
                                <v-expansion-panel-header>Precio</v-expansion-panel-header>
                                <v-expansion-panel-content>
                                    <v-row>
                                        <v-col>
                                            <v-range-slider
                                                v-model="range"
                                                :max="max"
                                                :min="min"
                                                hide-details
                                                class="align-center"
                                            >
                                                <template v-slot:prepend>
                                                    <v-text-field
                                                        :value="range[0]"
                                                        class="mt-0 pt-0"
                                                        hide-details
                                                        single-line
                                                        type="number"
                                                        style="width: 60px"
                                                        @change="$set(range, 0, $event)"
                                                    ></v-text-field>
                                                </template>
                                                <template v-slot:append>
                                                    <v-text-field
                                                        :value="range[1]"
                                                        class="mt-0 pt-0"
                                                        hide-details
                                                        single-line
                                                        type="number"
                                                        style="width: 60px"
                                                        @change="$set(range, 1, $event)"
                                                    ></v-text-field>
                                                </template>
                                            </v-range-slider>
                                        </v-col>
                                    </v-row>
                                </v-expansion-panel-content>
                            </v-expansion-panel>
                        </v-expansion-panels>
                    </v-card>
                </v-col>
                <v-col class="col-sm-12 col-md-8 col-lg-9 col-xl-9 col-12">
                    <template>
                        <v-container fluid>
                            <v-data-iterator
                                :items="products"
                                :items-per-page.sync="itemsPerPage"
                                :page.sync="page"
                                :search="search"
                                :sort-by="sortBy.toLowerCase()"
                                :sort-desc="sortDesc"
                                hide-default-footer
                            >
                                <template v-slot:header>
                                    <v-toolbar
                                        dark
                                        color="primary"
                                        class="mb-1"
                                    >
                                        <v-text-field
                                            v-model="search"
                                            clearable
                                            flat
                                            solo-inverted
                                            hide-details
                                            prepend-inner-icon="mdi-magnify"
                                            label="Search"
                                        ></v-text-field>
                                        <template v-if="$vuetify.breakpoint.mdAndUp">
                                            <v-spacer></v-spacer>
                                            <v-select
                                                v-model="sortBy"
                                                flat
                                                solo-inverted
                                                hide-details
                                                :items="keys"
                                                prepend-inner-icon="mdi-magnify"
                                                label="Sort by"
                                            ></v-select>
                                            <v-spacer></v-spacer>
                                            <v-btn-toggle
                                                v-model="sortDesc"
                                                mandatory
                                            >
                                                <v-btn
                                                    large
                                                    depressed
                                                    color="secondary"
                                                    :value="false"
                                                >
                                                    <v-icon>mdi-arrow-up</v-icon>
                                                </v-btn>
                                                <v-btn
                                                    large
                                                    depressed
                                                    color="secondary"
                                                    :value="true"
                                                >
                                                    <v-icon>mdi-arrow-down</v-icon>
                                                </v-btn>
                                            </v-btn-toggle>
                                        </template>
                                    </v-toolbar>
                                </template>

                                <template v-slot:default="props">
                                    <v-row class="align-center">
                                        <v-col
                                            v-for="item in props.items"
                                            :key="item.name"
                                            cols="12"
                                            sm="6"
                                            md="6"
                                            lg="4"
                                            xl="3"
                                        >
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

                                            <v-card>
                                                <v-card-title class="subheading font-weight-bold">
                                                    {{ item.product_name }}
                                                </v-card-title>

                                                <v-divider></v-divider>

                                                <v-list dense>
                                                    <v-list-item
                                                        v-for="(key, index) in filteredKeys"
                                                        :key="index"
                                                    >
                                                        <v-list-item-content :class="{ 'blue--text': sortBy === key }">
                                                            {{ key }}:
                                                        </v-list-item-content>
                                                        <v-list-item-content
                                                            class="align-end"
                                                            :class="{ 'blue--text': sortBy === key }"
                                                        >
                                                            {{ item[key.toLowerCase()] }}
                                                        </v-list-item-content>
                                                    </v-list-item>
                                                </v-list>
                                            </v-card>
                                        </v-col>
                                    </v-row>
                                </template>

                                <template v-slot:footer>
                                    <v-row
                                        class="mt-2"
                                        align="center"
                                        justify="center"
                                    >
                                        <span class="grey--text">Items per page</span>
                                        <v-menu offset-y>
                                            <template v-slot:activator="{ on, attrs }">
                                                <v-btn
                                                    dark
                                                    text
                                                    color="primary"
                                                    class="ml-2"
                                                    v-bind="attrs"
                                                    v-on="on"
                                                >
                                                    {{ itemsPerPage }}
                                                    <v-icon>mdi-chevron-down</v-icon>
                                                </v-btn>
                                            </template>
                                            <v-list>
                                                <v-list-item
                                                    v-for="(number, index) in itemsPerPageArray"
                                                    :key="index"
                                                    @click="updateItemsPerPage(number)"
                                                >
                                                    <v-list-item-title>{{ number }}</v-list-item-title>
                                                </v-list-item>
                                            </v-list>
                                        </v-menu>

                                        <v-spacer></v-spacer>

                                        <p class="mr-4 grey--text">
                                            Page {{ page }} of {{ numberOfPages }}
                                        </p>
                                        <v-btn
                                            fab
                                            dark
                                            color="blue darken-3"
                                            class="mr-1"
                                            @click="formerPage"
                                        >
                                            <v-icon>mdi-chevron-left</v-icon>
                                        </v-btn>
                                        <v-btn
                                            fab
                                            dark
                                            color="blue darken-3"
                                            class="ml-1"
                                            @click="nextPage"
                                        >
                                            <v-icon>mdi-chevron-right</v-icon>
                                        </v-btn>
                                    </v-row>
                                </template>
                            </v-data-iterator>
                        </v-container>
                    </template>
                </v-col>
            </v-row>
        </v-container>
        {{ products }}
    </page-layout>
</template>

<script>
import PageLayout from "@/Layouts/PageLayout";

export default {
    components: {
        PageLayout
    },
    name: "Marketplace",
    data: () => ({
        panel: [0, 1],
        min: 900,
        max: 2000000,
        range: [900, 100000],
        itemsPerPageArray: [8, 12, 24, 48],
        search: '',
        filter: {},
        sortDesc: false,
        page: 1,
        itemsPerPage: 8,
        sortBy: 'name',
        keys: [
            'Name',
            'Calories',
            'Fat',
            'Carbs',
            'Protein',
            'Sodium',
            'Calcium',
            'Iron',
        ],
        products: [],
        selectedCategory: 0,
        categories: [],
        items: [
            {
                name: 'Frozen Yogurt',
                calories: 159,
                fat: 6.0,
                carbs: 24,
                protein: 4.0,
                sodium: 87,
                calcium: '14%',
                iron: '1%',
            },
            {
                name: 'Ice cream sandwich',
                calories: 237,
                fat: 9.0,
                carbs: 37,
                protein: 4.3,
                sodium: 129,
                calcium: '8%',
                iron: '1%',
            },
            {
                name: 'Eclair',
                calories: 262,
                fat: 16.0,
                carbs: 23,
                protein: 6.0,
                sodium: 337,
                calcium: '6%',
                iron: '7%',
            },
            {
                name: 'Cupcake',
                calories: 305,
                fat: 3.7,
                carbs: 67,
                protein: 4.3,
                sodium: 413,
                calcium: '3%',
                iron: '8%',
            },
            {
                name: 'Gingerbread',
                calories: 356,
                fat: 16.0,
                carbs: 49,
                protein: 3.9,
                sodium: 327,
                calcium: '7%',
                iron: '16%',
            },
            {
                name: 'Jelly bean',
                calories: 375,
                fat: 0.0,
                carbs: 94,
                protein: 0.0,
                sodium: 50,
                calcium: '0%',
                iron: '0%',
            },
            {
                name: 'Lollipop',
                calories: 392,
                fat: 0.2,
                carbs: 98,
                protein: 0,
                sodium: 38,
                calcium: '0%',
                iron: '2%',
            },
            {
                name: 'Honeycomb',
                calories: 408,
                fat: 3.2,
                carbs: 87,
                protein: 6.5,
                sodium: 562,
                calcium: '0%',
                iron: '45%',
            },
            {
                name: 'Donut',
                calories: 452,
                fat: 25.0,
                carbs: 51,
                protein: 4.9,
                sodium: 326,
                calcium: '2%',
                iron: '22%',
            },
            {
                name: 'KitKat',
                calories: 518,
                fat: 26.0,
                carbs: 65,
                protein: 7,
                sodium: 54,
                calcium: '12%',
                iron: '6%',
            },
        ],
    }),
    created() {
        axios
            .get("/category/all")
            .then(response => {
                this.categories = response.data;
            })
            .catch(error => {
                console.error('Error category => ', error.response.data.errors);
            });

        axios
            .get("/product/all")
            .then(response => {
                this.products = response.data;
            })
            .catch(error => {
                console.error('Error product => ', error.response.data.errors);
            });

    },
    computed: {
        numberOfPages() {
            return Math.ceil(this.items.length / this.itemsPerPage)
        },
        filteredKeys() {
            return this.keys.filter(key => key !== 'Name')
        },
    },
    methods: {
        getFirtImage(item) {
            try {
                return JSON.parse(item.product_path_image)[0];
            } catch (e) {
                console.log(e)
                return null;
            }
        },
        nextPage() {
            if (this.page + 1 <= this.numberOfPages) this.page += 1
        },
        formerPage() {
            if (this.page - 1 >= 1) this.page -= 1
        },
        updateItemsPerPage(number) {
            this.itemsPerPage = number
        },
    },
}
</script>

<style>

</style>
