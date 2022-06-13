<template>
    <v-app id="inspire">
        <div class="bg-gray-100 h-screen w-screen">
            <div class="flex flex-col items-center flex-1 h-full justify-center  sm:px-0">
                <v-card class="elevation-4 w-full sm:w-3/4 lg:w-1/2" style="padding: 11px !important;">
                    <v-row class="d-flex flex-row-reverse">
                        <v-col class="transparent d-none d-md-flex col-lg-6 col pa-0">
                            <v-img :src="bg" class="rounded-l-0">
                                <template v-slot:placeholder>

                                    <v-skeleton-loader style="height: 100%"
                                                       type="image"
                                    ></v-skeleton-loader>

                                </template>

                            </v-img>
                        </v-col>
                        <v-col class="col-lg-6 col">
                            <div class="px-7 pt-6 px-sm-7">

                                <logo></logo>

                                <div v-if="status!==null" class="mb-4 font-medium text-sm text-green-600">
                                    {{ status }}
                                </div>

                                <h2 class="font-weight-bold mt-4 blue-grey--text text--darken-2">
                                    Iniciar sesión
                                </h2>

                                <h6
                                    class="subtitle-1">
                                    ¿no tengo una cuenta?
                                    <inertia-link href="/register">
                                        Registrate
                                    </inertia-link>
                                </h6>

                                <v-form novalidate="novalidate"
                                        v-on:submit.prevent="login"
                                        ref="form"
                                        v-model="valid"
                                        lazy-validation
                                        class="mt-4">

                                    <v-text-field
                                        v-model="user.email"
                                        dense
                                        :rules="emailRules"
                                        label="Correo"
                                        required
                                        clearable
                                        outlined
                                    ></v-text-field>
                                    <v-text-field
                                        v-model="user.password"
                                        dense
                                        :append-icon="show1? 'mdi-eye': 'mdi-eye-off'"
                                        :rules="passwordRules"
                                        :type="show1 ? 'text' : 'password'"
                                        label="Contraseña"
                                        hint="Al menos 4 carácteres"
                                        counter
                                        @click:append="show1 = !show1"
                                        outlined
                                    ></v-text-field>
                                    <div class="d-block d-sm-flex align-center mb-4 mb-sm-0">
                                        <v-checkbox
                                            v-model="user.remember"
                                            label="Recuerdame"
                                        ></v-checkbox>
                                        <div class="ml-auto">
                                            <v-btn
                                                text
                                                color="error"
                                                @click="reset"
                                            >
                                                Limpiar
                                            </v-btn>
                                        </div>
                                    </div>
                                    <v-container class="ma-0 pa-0 pb-8">
                                        <v-row
                                            class="justify-center aling-center text-center ma-0 pa-0"
                                        >
                                            <v-col class="ma-0 pa-1">
                                                <v-btn
                                                    block
                                                    :disabled="!valid"
                                                    color="primary"
                                                    dark @click="validate"
                                                >Ingresar
                                                </v-btn>
                                            </v-col>
                                        </v-row>
                                        <v-row
                                            class="justify-center aling-center text-center ma-0 pa-0"
                                        >
                                            <v-col class="ma-0 pa-0">
                                                <inertia-link
                                                    :href="route('password.request')"
                                                    text
                                                >
                                                    Olvidaste tu contraseña
                                                </inertia-link
                                                >
                                            </v-col>
                                        </v-row>
                                    </v-container>

                                </v-form>

                            </div>
                        </v-col>

                    </v-row>
                </v-card>
            </div>
        </div>

        <div class="text-center">
            <v-overlay :value="overlay" :opacity="0.9" color="primary">
                <spinner-component></spinner-component>
            </v-overlay>
        </div>
    </v-app>
</template>

<script>
import logo from '@/Jetstream/ApplicationMark'
import bg from '@/../images/bg-login.jpg'
import SpinnerComponent from "@/Components/SpinnerComponent";


export default {
    components: {
        logo,
        SpinnerComponent
    },
    props: ['status', "canResetPassword"],
    data() {
        return {
            bg,
            email: "",
            password: "",
            valid: true,
            color: "",
            mode: "",
            text: "",
            user: {email: "", password: "", remember: true},
            show1: false,
            passwordRules: [
                v => !!v || "El password es Requirido.",
                v => (v && v.length >= 4) || "Minimo 4 caracteres"
            ],
            emailRules: [
                v => !!v || "EL email es requerido",
                v => /.+@.+\..+/.test(v) || "El email debe ser válido"
            ],
            checkbox: false,
            overlay: false,
            code: null
        };
    },
    mounted() {
        let params = new URLSearchParams(location.search);
        var status = params.get("status");
        var message = params.get("message");
        if (status !== null) {
            this.$swal(
                status === "200" ? "!Buen trabajo! 😀" : "Oops... 😮",
                message,
                status === "200" ? "success" : "error"
            );
        }
    },
    methods: {
        validate() {
            if (!this.$refs.form.validate()) {
                return;
            }
            this.login();
        },
        reset() {
            this.$refs.form.reset();
        },
        resetValidation() {
            this.$refs.form.resetValidation();
        },

        login() {
            console.log(this.user);
            const newUser = this.user;
            this.overlay = true;
            axios
                .post("/login", newUser)
                .then(response => {
                    if (response.status === 200) {
                        this.color = "green";
                        this.mode = "";
                        this.text = "Información correcta 😀, Bienvenido! ";
                        console.log("hasta aqui yo voy");
                        console.log('response', response);

                        // console.log("despues del login");

                        try {
                            this.overlay = false;
                            this.$swal(
                                "¡Buen trabajo!",
                                "Información correcta 😀, Bienvenido! ",
                                "success"
                            )

                            this.$inertia.get(this.route('home'));

                        } catch (error) {
                            this.overlay = false;
                            console.log(error);
                        }
                    } else {

                    }
                })
                .catch(error => {
                    this.mode = "";
                    this.color = "red darken-3";
                    //console.log('soy error',error);
                    // console.log(`soy error.response.data ${error.response.data}`);
                    //console.log(
                    // `soy error.response.data.message ${error.response.data.message}`
                    // );
                    const array = error.response.data.errors;
                    this.overlay = false;
                    console.log(`soy un array ${array}`);
                    this.text = "";
                    for (var clave in array) {
                        this.text += clave + ": " + array[clave] + "\n ";
                    }
                    //console.log(this.text);
                    this.text += error.response.data.message;

                    this.$swal("¡Algo salió mal! 😥", this.text, "error");
                    // if (typeof array === "undefined") {
                    //     setTimeout(() => location.reload(), 500);
                    // }
                });
        }
    }
};
</script>
<style>
div.v-image__placeholder > div > div {
    height: 100%;
}
</style>
