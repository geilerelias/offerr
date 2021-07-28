<template>
    <App-layout>
        <v-container class="py-12 my-12">
            <v-row>
                <v-col class="col-md-12 col-lg-7 col-xl-6 col-12">
                    <div class="d-flex flex-column-reverse flex-lg-column-reverse flex-md-row flex-xl-row">
                        <div class="d-flex flex-lg-row flex-md-column flex-xl-column justify-center">
                            <div class="ma-3" v-for="item in JSON.parse(data.product_path_image)" :key="item.id">
                                <v-hover
                                    v-slot="{ hover }"
                                    open-delay="200"
                                >
                                    <v-card flat :elevation="hover ? 6 : 0"
                                            class="pa-0 ma-0 rounded-0"
                                            :class="{ 'on-hover': hover }"
                                            @click="updateUrl(item)">
                                        <v-img :src="`/storage/${item}`"
                                               height="35"
                                               width="50"
                                               cover
                                               :aspect-ratio="1"
                                               rounded class="ma-0 pa-0 cursor-pointer">
                                            <template v-slot:placeholder>
                                                <v-responsive
                                                    class="fill-height ma-0"
                                                    align="center"
                                                    justify="center"
                                                >
                                                    <v-skeleton-loader
                                                        :aspect-ratio="1"
                                                        type="image"
                                                    ></v-skeleton-loader>
                                                </v-responsive>
                                            </template>
                                        </v-img>
                                    </v-card>
                                </v-hover>
                            </div>
                        </div>

                        <v-img :src="url" cover
                               elevation="12"
                               class="rounded mx-4"
                               :aspect-ratio="1"
                               style="max-height: 390px; max-width: 580px;">
                            <template v-slot:placeholder>
                                <v-responsive
                                    class="fill-height ma-0"
                                    align="center"
                                    justify="center"
                                >
                                    <v-skeleton-loader
                                        :aspect-ratio="1"
                                        type="image"
                                    ></v-skeleton-loader>
                                </v-responsive>
                            </template>
                        </v-img>
                    </div>
                    <v-divider class="mt-2 pa-1 d-md-none"></v-divider>
                </v-col>

                <v-col class="col-md-12 col-lg-5 col-xl-6 col-12">
                    <h2 class="font-weight-bold">{{ data.product_name }}</h2>

                    <h2 class="primary--text">$ {{ data.product_price }}</h2>
                    <p class="font-weight-light mt-3 mb-8">
                        {{ data.product_description }}
                    </p>
                    <v-text-field
                        min="0"
                        v-model="quantity"
                        dense
                        type="number"
                        label="Cantidad"
                        outlined
                        persistent-placeholder
                        style="max-width: 150px;"
                    >
                        <v-icon @click="quantity++"
                                slot="append-outer"
                                color="primary"
                        >
                            mdi-plus
                        </v-icon>
                        <v-icon
                            @click="quantity>=1?quantity--:quantity=quantity"
                            slot="prepend"
                            color="primary"
                        >
                            mdi-minus
                        </v-icon>
                    </v-text-field>

                    <v-row>
                        <v-col>
                            <p v-if="total>0">
                                total: $ {{ total }}
                            </p>
                        </v-col>
                    </v-row>
                    <v-divider class="mt-4 py-1"></v-divider>
                    <v-row class="d-flex align-center">

                        <v-col class="d-flex  justify-space-around">
                            <v-btn outlined @click="addToCart()">
                                Agregar
                                <v-icon right size="16"> mdi-cart-plus</v-icon>
                            </v-btn>
                            <v-btn contained class="primary" @click="buy()">
                                Pedir ya
                            </v-btn>
                        </v-col>
                    </v-row>
                    <v-divider v-if="business!==null" class="mt-4 py-1"></v-divider>
                    <v-row v-if="business!==null" class="d-flex align-center">
                        <v-card outlined class="transparent pa-2">
                            <div class="d-flex align-center">
                                <div class="mr-1">
                                    <v-avatar :size="$vuetify.breakpoint.mobile?70:120">
                                        <v-img :src="`/storage/${business.business_path_profile_image}`"
                                               cover>
                                        </v-img>
                                    </v-avatar>
                                </div>

                                <div class="pa-2">
                                    <div class="text-h6 mt-3">
                                        <inertia-link :href="route('business.look',business.id)">
                                            {{ business.business_name }}
                                        </inertia-link>
                                    </div>

                                    <div class="text-body-1 gray--text">{{ business.business_email }}</div>
                                    <div class="text-body-2 gray--text  text--darken-4  my-1">
                                        {{ business.business_city }} {{ business.business_address }}
                                    </div>
                                    <div class="ml-n1">
                                        <v-btn outlined x-small class="text--black">
                                            reseñas
                                        </v-btn>
                                        <v-btn outlined x-small class="text--black">
                                            preguntar
                                        </v-btn>
                                    </div>
                                </div>

                                <v-btn x-small text
                                       class="primary--text absolute top-0 right-0 mt-n12"
                                       @click="follower(business.id)"
                                >
                                    seguir
                                </v-btn>
                            </div>
                        </v-card>
                    </v-row>
                    <v-divider class="mt-4 py-1"></v-divider>
                    <!--<div class="d-flex flex-column flex-sm-row justify-sm-space-between">
                            <div class="d-flex align-center justify-start">
                                Share:
                                <div class="d-flex social-icons">
                                    <v-btn icon>
                                        <v-icon size="20"> mdi-facebook</v-icon>
                                    </v-btn>
                                    <v-btn icon>
                                        <v-icon size="20">mdi-twitter</v-icon>
                                    </v-btn>
                                    <v-btn icon>
                                        <v-icon size="20">mdi-instagram</v-icon>
                                    </v-btn>
                                    <v-btn icon>
                                        <v-icon size="20">mdi-whatsapp</v-icon>
                                    </v-btn>
                                </div>
                            </div>
                        </div>-->
                </v-col>

            </v-row>
        </v-container>

        <!--Dialog -->
        <v-row justify="center">
            <v-dialog
                v-model="dialog"
                fullscreen
                hide-overlay
                transition="dialog-bottom-transition"
            >
                <v-card>
                    <v-toolbar
                        dark
                        color="primary"
                    >
                        <v-btn
                            icon
                            dark
                            @click="dialog = false"
                        >
                            <v-icon>mdi-close</v-icon>
                        </v-btn>
                        <v-toolbar-title>Orden de compra</v-toolbar-title>
                        <v-spacer></v-spacer>
                    </v-toolbar>

                    <v-row>
                        <v-col cols="12" md="8">
                            <v-container>
                                <v-form
                                    ref="form"
                                >
                                    <v-container fluid>
                                        <v-row>
                                            <v-col
                                                cols="12"
                                                sm="6"
                                            >
                                                <v-text-field
                                                    :rules="rules.name"
                                                    color="purple darken-2"
                                                    label="Nombres"
                                                    required
                                                ></v-text-field>
                                            </v-col>
                                            <v-col
                                                cols="12"
                                                sm="6"
                                            >
                                                <v-text-field
                                                    :rules="rules.name"
                                                    color="blue darken-2"
                                                    label="Apellidos"
                                                    required
                                                ></v-text-field>
                                            </v-col>
                                        </v-row>
                                        <v-row>
                                            <v-col>
                                                <v-select
                                                    v-model="order.department"
                                                    :items="departments"
                                                    :rules="[v => !!v || 'department is required']"
                                                    label="Departamento *"
                                                    required
                                                ></v-select>
                                            </v-col>
                                            <v-col>
                                                <v-select
                                                    :disable="order.department==null"
                                                    v-model="order.city"
                                                    :items="getCities(order.department)"
                                                    :rules="[v => !!v || 'City is required']"
                                                    label="Ciudad *"
                                                    required
                                                ></v-select>
                                            </v-col>
                                        </v-row>
                                        <v-row>
                                            <v-col
                                            >
                                                <v-text-field
                                                    label="Dirección">

                                                </v-text-field>
                                            </v-col>
                                            <v-col
                                            >
                                                <v-text-field
                                                    label="Datos adicionales">

                                                </v-text-field>
                                            </v-col>
                                            <v-col
                                            >
                                                <v-text-field
                                                    label="Teléfono de contacto">

                                                </v-text-field>
                                            </v-col>
                                        </v-row>

                                    </v-container>
                                    <v-divider></v-divider>
                                    <v-card-actions>
                                        <v-btn
                                            @click="dialog=false"
                                        >
                                            Cancel
                                        </v-btn>
                                        <v-spacer></v-spacer>
                                        <v-btn
                                            color="primary"
                                            type="submit"
                                        >
                                            Continuar
                                        </v-btn>
                                    </v-card-actions>
                                </v-form>
                            </v-container>
                        </v-col>
                        <v-divider vertical></v-divider>
                        <v-col cols="12" md="4">

                            <div class="d-flex flex-column justify-center align-center mt-6">
                                <v-avatar>
                                    <v-img :src="url">
                                    </v-img>
                                </v-avatar>
                                <h2 class="font-weight-bold">{{ data.product_name }}</h2>


                                <p class="font-weight-light mt-3 mb-8">
                                    {{ data.product_description }}
                                </p>
                                cantidad: {{ quantity }}
                                <br>
                                <v-divider class="pa-1 ma-auto"></v-divider>
                                <v-simple-table dense>
                                    <tbody>
                                    <tr>
                                        <td><h2>Precio</h2></td>
                                        <td><h2>$ {{ data.product_price }}</h2></td>
                                    </tr>
                                    <tr>
                                        <td><h2>Envio</h2></td>
                                        <td><h2 class="success--text">gratis</h2></td>
                                    </tr>
                                    </tbody>
                                </v-simple-table>
                                <v-divider class="pa-1"></v-divider>
                                <v-simple-table dense>
                                    <tbody>
                                    <tr>
                                        <td><h2>Pagas</h2></td>
                                        <td><h2>$ {{ data.product_price * quantity }}</h2></td>
                                    </tr>
                                    </tbody>
                                </v-simple-table>

                            </div>
                        </v-col>
                    </v-row>
                </v-card>
            </v-dialog>
        </v-row>

    </App-layout>
</template>

<script>
import AppLayout from './../../Layouts/AppLayout';
import colombiaJson from "../../../assets/colombia.json";

export default {
    name: "Watch",
    components: {
        AppLayout,
    },
    props: ['data'],
    data: () => ({
        url: '',
        quantity: 0,
        saving: false,
        business: null,
        departments: [],
        dialog: false,
        notifications: false,
        sound: true,
        widgets: false,
        rules: {
            age: [
                val => val < 10 || `I don't believe you!`,
            ],
            animal: [val => (val || '').length > 0 || 'This field is required'],
            name: [val => (val || '').length > 0 || 'This field is required'],
        },
        content: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer nec odio. Praesent libero. Sed cursus ante dapibus diam. Sed nisi. Nulla quis sem at nibh elementum imperdiet. Duis sagittis ipsum. Praesent mauris. Fusce nec tellus sed augue semper porta. Mauris massa. Vestibulum lacinia arcu eget nulla. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Curabitur sodales ligula in libero. Sed dignissim lacinia nunc.',
        order: {
            department: null,
            city: null
        },
    }),
    created() {

        for (const item in colombiaJson) {
            this.departments.push(colombiaJson[item].departamento);
        }
        this.departments = this.departments.sort();

        axios
            .get(`/product/${this.data.id}/business`)
            .then(response => {
                this.business = response.data;
            })
            .catch(error => {
                console.log(error);
            });

        try {
            console.log(this.data.product_path_image)
            if (this.data.product_path_image === null) {
                this.url = "/images/not-found-image.jpg"
            } else {
                this.url = `/storage/${JSON.parse(this.data.product_path_image)[0]}`;
            }

        } catch (e) {

        }
    },
    computed: {
        total() {
            try {
                return this.data.product_price * this.quantity;
            } catch (e) {
                console.log(e)
            }

        }
    },
    methods: {
        updateUrl(item) {
            this.url = `/storage/${item}`
        },
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
        addToCart() {
            let cart = {
                product_id: this.data.id,
                product_quantity: this.quantity
            }
            if (this.quantity > 0) {
                this.saving = true;
                axios
                    .post('/cart', cart)
                    .then(response => {
                        this.$swal.fire(
                            "Agregado!",
                            "Su Producto fue agregado exitosamente al carrito!",
                            "success"
                        ).then(result => {
                            this.saving = false;
                        });
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
                        this.saving = false;
                    });
            } else {
                this.$swal.fire(
                    "Cantidad Insuficiente!",
                    "La cantidad debe ser superior a 0!",
                    "error"
                )

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
        buy() {
            if (this.quantity > 0) {
                this.dialog = true;
            } else {
                this.$swal.fire(
                    "Cantidad Insuficiente!",
                    "La cantidad debe ser superior a 0!",
                    "warning"
                )
            }
        },
        orderProduct() {

        }
    }
}
</script>

<style scoped>

</style>
