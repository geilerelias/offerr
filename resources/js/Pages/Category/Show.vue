<template>
    <App-layout>
        <v-navigation-drawer
            v-if="$vuetify.breakpoint.mdAndUp"
            v-model="drawerLocal"
            app
            clipped
            permanent
            width="300"
            :mini-variant="miniVariant"
        >
            <v-list shaped class="rounded-lg pa-4">
                <v-list-item-group v-model="selectedItem"
                                   color="primary">
                    <v-subheader class="mt-6">Categorías</v-subheader>
                    <inertia-link :href="`/category/show/${item.id}`"
                                  v-for="(item, index) in categories"
                                  :key="index">
                        <v-list-item
                            :class="item.id===data.id?'v-item--active v-list-item--active':''">

                            <v-list-item-avatar>
                                <v-img :src="`/storage/${item.category_path_image}`"></v-img>
                            </v-list-item-avatar>

                            <v-list-item-content>
                                <v-list-item-title v-html="item.category_name"></v-list-item-title>
                            </v-list-item-content>
                        </v-list-item>
                    </inertia-link>
                </v-list-item-group>
            </v-list>

        </v-navigation-drawer>

        <v-main class="py-0">

<!--                        <v-container>-->

<!--                            <v-row>-->
<!--                                <v-col class="col-lg-6 col-12">-->
<!--                                    <v-img :src="`/storage/${data.category_path_image}`"-->
<!--                                           class="rounded-lg elevation-6"-->
<!--                                           style="max-height: 300px;">-->
<!--                                    </v-img>-->
<!--                                </v-col>-->
<!--                                <v-col class="col-lg-6 col-12 md:inline-flex justify-center align-center">-->
<!--                                    <div>-->
<!--                                        <h2 class="text-h5 text-md-h3 text-lg-h2 mt-0 mt-xl-10">-->
<!--                                            {{ data.category_name }}-->
<!--                                        </h2>-->
<!--                                        <div class="text-body-1 text-lg-h6">-->
<!--                                            {{ data.category_description }}-->
<!--                                        </div>-->
<!--                                    </div>-->
<!--                                </v-col>-->
<!--                            </v-row>-->
<!--                        </v-container>-->

            <v-container class="py-0">
                <div class="d-flex align-bottom flex-row-reverse flex-md-row justify-right justify-md-space-between mb-1">

                    <small class="hidden-sm-and-down body-1">Comercios disponibles</small>
                    <div>
                        <v-row >
                            <v-col cols="6">
                                <v-select
                                    dense
                                    outlined
                                    style="max-width: 250px;"
                                    v-model="department"
                                    :items="departments"
                                    prepend-icon="mdi-map"
                                    :rules="[v => !!v || 'department is required']"
                                    label="Departamento *"
                                    required
                                    hide-details
                                ></v-select>
                            </v-col>
                            <v-col cols="6">
                                <v-select
                                    :disabled="department!==null?false:true"
                                    dense
                                    outlined
                                    style="max-width: 250px;"
                                    v-model="city"
                                    :items="getCities(department)"
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

                <v-row class="mt-6 d-flex justify-space-around">

                    <v-chip
                        label
                        outlined
                        color="primary"
                        class="ma-2"
                        v-for="item in JSON.parse(data.category_subcategories)" :key="item.id">
                        {{ item.name }}
                    </v-chip>
                </v-row>


                <v-row class="mt-6">
                    <v-subheader inset>Tiendas</v-subheader>
                    <v-col class="col-12" v-for="item in listBusiness" :key="item.id">
                        <v-card outlined class="transparent pa-2">
                            <div class="d-flex align-center justify-space-between">
                                <div class=" d-flex align-center">
                                    <div class="mr-2">
                                        <v-avatar :size="$vuetify.breakpoint.mobile?70:120">
                                            <v-img :src="`/storage/${item.business_path_profile_image}`"
                                                   cover>
                                            </v-img>
                                        </v-avatar>
                                    </div>

                                    <div class="pa-2">
                                        <div class="text-h6 mt-3">
                                            <inertia-link :href="route('business.look',item.id)">
                                                {{ item.business_name }}
                                            </inertia-link>
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
                                </div>
                                <v-btn x-small text
                                       class="primary--text absolute top-0 right-0 mt-n12"
                                       @click="follower(item.id)"
                                >
                                    seguir
                                </v-btn>
                            </div>
                        </v-card>
                        <v-divider></v-divider>
                    </v-col>
                </v-row>
            </v-container>

        </v-main>
    </App-layout>
</template>

<script>
import AppLayout from './../../Layouts/AppLayout';
import countries_cities from "../../../assets/countries_cities.json";
import colombiaJson from '@/../assets/colombia.json';

export default {
    name: "Show",
    components: {
        AppLayout,
    },
    props: ['data'],
    data: () => ({

        countriesCities: countries_cities,
        businesses: [],
        categories: [],
        drawerLocal: null,
        selectedItem: null,
        miniVariant: null,
        department: null,
        city: null,
        departments: [],
        folders: [
            {
                subtitle: 'Jan 9, 2014',
                title: 'Photos',
            },
            {
                subtitle: 'Jan 17, 2014',
                title: 'Recipes',
            },
            {
                subtitle: 'Jan 28, 2014',
                title: 'Work',
            },
        ],

    }),
    created() {
        for (const item in colombiaJson) {
            this.departments.push(colombiaJson[item].departamento);
        }
        this.departments = this.departments.sort();


        axios
            .get(`/category/all`)
            .then(response => {
                this.categories = response.data;
            })
            .catch(error => {
                console.log(error);
            });

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

    computed: {
        listBusiness() {
            if (this.department === null) {
                return this.businesses
            } else {
                const department = this.department.toLowerCase()
                if (this.city === null) {
                    return this.businesses.filter(item => {
                        const text = item.business_department.toLowerCase()
                        return text.indexOf(department) > -1
                    })
                } else {
                    const businessFordepartment = this.businesses.filter(item => {
                        const text = item.business_department.toLowerCase()
                        return text.indexOf(department) > -1
                    });

                    const city = this.city.toLowerCase()

                    return businessFordepartment.filter(item => {
                        const text = item.business_city.toLowerCase()
                        return text.indexOf(city) > -1
                    })
                }

            }

        },
    },
    methods: {
        getCities(department) {
            try {
                return colombiaJson.filter(
                    function (colombiaJson) {
                        return colombiaJson.departamento == department
                    }
                )[0].ciudades;

            } catch (e) {
                return [];
            }
        },
        follower(id) {
            this.$inertia
                .post('/follower/add', {business_id: id}, {
                    onSuccess: (page) => {
                        this.$swal.fire({
                            position: 'top-end',
                            icon: this.$page.flash.message.icon,
                            title: this.$page.flash.message.text,
                            showConfirmButton: false,
                            timer: 2000
                        })
                    },
                })
        },
    }
}
</script>

<style scoped>

</style>
