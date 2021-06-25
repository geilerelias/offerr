<template>
    <App-layout>
        <v-container class="my-6 py-4 py-lg-8">
            <v-row>
                <v-col class="col-lg-6 col-12">
                    <v-img :src="`/storage/${data.category_path_image}`"
                           class="rounded-lg elevation-6"
                           style="max-height: 300px;">
                    </v-img>
                </v-col>
                <v-col class="col-lg-6 col-12 md:inline-flex justify-center align-center">
                    <div>
                        <h2 class="text-h3 text-lg-h2 mt-0 mt-xl-10">
                            {{ data.category_name }}
                        </h2>
                        <div class="text-body-1 text-lg-h6">
                            {{ data.category_description }}
                        </div>
                    </div>
                </v-col>
            </v-row>


            <v-container class="py-4 py-lg-8">
                <div
                    class="d-flex align-bottom flex-row-reverse flex-sm-row justify-right justify-sm-space-between mb-1">

                    <small class="hidden-sm-and-down body-1">Comercios disponibles</small>
                    <div>
                        <v-row>
                            <v-col>
                                <v-select
                                    dense
                                    outlined
                                    style="max-width: 250px;"
                                    v-model="country"
                                    :items="countries"
                                    prepend-icon="mdi-map"
                                    :rules="[v => !!v || 'Country is required']"
                                    label="País *"
                                    required
                                    hide-details
                                ></v-select>
                            </v-col>
                            <v-col>
                                <v-select
                                    :disabled="country!==null?false:true"
                                    dense
                                    outlined
                                    style="max-width: 250px;"
                                    v-model="city"
                                    :items="countriesCities[country]"
                                    :rules="[v => !!v || 'City is required']"
                                    label="Ciudad *"
                                    required
                                    hide-details
                                ></v-select>
                            </v-col>
                        </v-row>
                    </div>
                </div>

                <v-divider></v-divider>

                <v-row class="mt-6">
                    <v-col class="col-lg-6 col-12" v-for="item in businesses" :key="item.id">
                        <v-card outlined class="transparent pa-2">
                            <div class="d-flex align-center">
                                <div class="mr-1">
                                    <v-avatar :size="$vuetify.breakpoint.mobile?70:120">
                                        <v-img :src="`/storage/${item.business_path_profile_image}`"
                                               cover>
                                        </v-img>
                                    </v-avatar>
                                </div>

                                <div class="pa-2">
                                    <div class="text-h6 mt-3">
                                        {{ item.business_name }}
                                    </div>

                                    <div class="text-body-1 gray--text">{{ item.business_email }}</div>
                                    <div class="text-body-2 gray--text  text--darken-4  my-1">
                                        {{ item.business_city }} {{ item.business_address }}
                                    </div>
                                    <div class="ml-n1">
                                        <v-btn outlined x-small class="text--black">
                                            ver menu
                                        </v-btn>
                                        <v-btn outlined x-small class="text--black">
                                            mensaje
                                        </v-btn>
                                    </div>
                                </div>

                                <v-btn x-small text
                                       class="primary--text absolute top-0 right-0 mt-n12"
                                >
                                    seguir
                                </v-btn>
                            </div>
                        </v-card>
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
    created() {
        axios
            .get(`/category/${this.data.id}/business`)
            .then(response => {
                this.businesses = response.data;
            })
            .catch(error => {
                console.log(error);
            });
        let str = '';
        for (const item in countries_cities) {
            str = str + `${item},`;
        }
        this.countries = str.split(',');
    },
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
        businesses: [],
        items: ['Foo', 'Bar', 'Fizz', 'Buzz'],
    })
}
</script>

<style scoped>

</style>
