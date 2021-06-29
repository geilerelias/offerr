<template>
    <page-layout>
        <v-container class="">
            <div class="d-flex justify-end align-center">
                <v-select
                    class="mr-1"
                    style="max-width:150px"
                    dense
                    solo
                    v-model="sortBy"
                    hide-details
                    :items="header"
                    item-text="name"
                    item-value="value"
                    prepend-inner-icon="mdi-sort-alphabetical-variant"
                    label="Sort by"
                ></v-select>
                <v-btn-toggle
                    v-model="sortDesc"
                    color="secondary"
                    dense
                    group
                >
                    <v-btn
                        text
                        :value="false"
                    >
                        <v-icon>mdi-sort-descending</v-icon>
                    </v-btn>
                    <v-btn
                        text
                        :value="true"
                    >
                        <v-icon>mdi-sort-ascending</v-icon>
                    </v-btn>
                </v-btn-toggle>
            </div>
            <v-divider class="mb-2"></v-divider>
            <v-data-iterator
                :items="products"
                :items-per-page.sync="itemsPerPage"
                :page.sync="page"
                :search="localSearch"
                :sort-by="sortBy.toLowerCase()"
                :sort-desc="sortDesc"

            >
                <template v-slot:default="props">
                    <v-row class="align-center">
                        <v-col
                            v-for="item in props.items"
                            :key="item.name"
                            cols="6"
                            sm="4"
                            md="4"
                            lg="3"
                            xl="2"
                        >
                            <inertia-link :href="`/product/watch/${item.id}`">
                                <v-hover v-slot="{ hover }" class="ma-0 pa-0">

                                    <v-card
                                        :elevation="hover ? 6 : 2">
                                        <v-img
                                            :src=" getFirtImage(item)===null?'/images/not-found-image.jpg':`/storage/${getFirtImage(item)}`"
                                            cover
                                            :aspect-ratio="1">
                                        </v-img>
                                        <!-- <div
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
                                                                                               </div>-->
                                        <v-list dense>
                                            <v-list-item
                                                v-for="(key, index) in filteredKeys"
                                                :key="index"
                                            >
                                                <v-list-item-content
                                                    :class="{ 'blue--text': sortBy === key }">
                                                    {{ header[index].name }}:
                                                </v-list-item-content>
                                                <v-list-item-content
                                                    class="align-end"
                                                    :class="{ 'blue--text': sortBy === key }"
                                                >
                                                    <span v-if="key==='subcategory_id'">
                                                        <inertia-link
                                                            :href="route('subcategory.look',item.subcategory_id)"
                                                            class="primaryConst--text truncate">
                                                        {{ currentSubcategory(item[key.toLowerCase()]) }}
                                                        </inertia-link>
                                                    </span>
                                                    <span v-else>
                                                        {{ item[key.toLowerCase()] }}
                                                    </span>

                                                </v-list-item-content>
                                            </v-list-item>
                                        </v-list>
                                    </v-card>
                                </v-hover>
                            </inertia-link>

                        </v-col>
                    </v-row>
                </template>

            </v-data-iterator>

        </v-container>
    </page-layout>
</template>

<script>
import {mapMutations, mapState} from "vuex";
import PageLayout from "@/Layouts/PageLayout";

export default {
    components: {
        PageLayout
    },
    name: "Marketplace",
    data: () => ({
        panel: [0, 1],
        min: null,
        max: null,
        itemsPerPageArray: [8, 12, 24, 48],
        filter: {},
        sortDesc: false,
        page: 1,
        itemsPerPage: 8,
        sortBy: 'product_name',
        header: [
            {name: 'Nombre', value: 'product_name'},
            {name: 'Precio', value: 'product_price',},
            {name: 'Subcategoría', value: 'subcategory_id',},
        ],
        keys: [
            'product_name',
            'product_price',
            'subcategory_id',
        ],
        products: [],
        selectedSubcategory: 0,
        subcategories: [],

    }),
    created() {
        axios
            .get("/subcategory/all")
            .then(response => {
                this.subcategories = response.data;
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
        ...mapState(["search"]),
        numberOfPages() {
            return Math.ceil(this.products.length / this.itemsPerPage)
        },
        filteredKeys() {
            return this.keys.filter(key => key !== 'Name')
        },
        localSearch: {
            get() {
                return this.search;
            },
            set(val) {
                this.setSearch(val);
            }
        }
    },
    methods: {
        ...mapMutations([
            "setSearch",
        ]),
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
        currentSubcategory(item) {
            console.log('Key subcategory =>', item);
            if (this.subcategories !== null) {
                try {
                    let res = this.subcategories.find(element => element.id === item);
                    return res.subcategory_name;
                } catch (e) {
                    console.log(e);
                }

            } else {
                return null;
            }
        },
    },
}
</script>

<style>

</style>
