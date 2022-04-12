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
                                <h2 class="font-weight-bold mt-4 blue-grey--text text--darken-2">
                                    Registrar
                                </h2>
                                <div
                                    class="subtitle-1">
                                    ¿Ya tienes una cuenta?
                                    <inertia-link href="/login">
                                        Ingresa
                                    </inertia-link>
                                </div>

                                <v-form
                                    ref="form"
                                    v-model="valid"
                                    lazy-validation
                                >
                                    <v-text-field
                                        outlined
                                        dense
                                        clearable
                                        v-model="user.name"
                                        :counter="100"
                                        :rules="nameRules"
                                        label="Nombre"
                                        required
                                    ></v-text-field>

                                    <v-text-field
                                        outlined
                                        dense
                                        clearable
                                        v-model="user.email"
                                        :rules="emailRules"
                                        label="Email"
                                        required
                                    ></v-text-field>


                                    <v-text-field
                                        outlined
                                        dense
                                        autocomplete="off"
                                        v-model="user.password"
                                        :append-icon="
                                                    show1
                                                        ? 'mdi-eye'
                                                        : 'mdi-eye-off'
                                                "
                                        :rules="passwordRules"
                                        :type="
                                                    show1 ? 'text' : 'password'
                                                "
                                        label="Password"
                                        hint="Al menos 4 carácteres"
                                        counter
                                        @click:append="show1 = !show1"
                                    ></v-text-field>

                                    <v-text-field
                                        outlined
                                        dense
                                        v-model="
                                                    user.password_confirmation
                                                "
                                        :append-icon="
                                                    show2
                                                        ? 'mdi-eye'
                                                        : 'mdi-eye-off'
                                                "
                                        :rules="passwordConfirmRules"
                                        :type="
                                                    show2 ? 'text' : 'password'
                                                "
                                        label="Confirmar password"
                                        hint="Al menos 4 carácteres"
                                        counter
                                        @click:append="show2 = !show2"
                                    ></v-text-field>


                                    <v-row
                                        class="justify-center aling-center text-center ma-0 pa-0"
                                    >
                                        <v-col cols="12" class="ma-0 pa-0 text-start">
                                            <v-btn
                                                block
                                                :disabled="!valid"
                                                color="primary"
                                                dark
                                                @click="validate"
                                            >
                                                Registrar
                                            </v-btn
                                            >
                                        </v-col>

                                        <v-col cols="12" class="ma-0 pa-1 text-center">
                                            <v-btn text color="error" @click="reset"
                                            >Limpiar
                                            </v-btn
                                            >
                                        </v-col>
                                    </v-row>
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
import bg from '../../../images/bg-login.jpg'
import SpinnerComponent from "@/Components/SpinnerComponent";

export default {
    components: {
        logo,
        SpinnerComponent
    },
    data() {
        return {
            bg,
            name: "",
            email: "",
            password: "",
            user: {
                name: "",
                email: "",
                password: "",
                password_confirmation: ""
            },
            show1: false,
            show2: false,
            snackbar: false,
            color: "",
            text: "",
            mode: "",
            response: "",
            valid: true,
            nameRules: [
                v => !!v || "El nombre es requerido",
                v =>
                    (v && v.length <= 100) ||
                    "El nombre no puede tener mas de 100 caracteres"
            ],
            emailRules: [
                v => !!v || "E-mail es requerido",
                v => /.+@.+\..+/.test(v) || "E-mail invalido"
            ],
            passwordRules: [
                v => !!v || "Requerido.",
                v => (v && v.length >= 4) || "Mínimo 4 caracteres"
            ],
            passwordConfirmRules: [
                v => !!v || "Requerido.",
                v => (v && v.length >= 4) || "Mínimo 4 caracteres",
                v => v === this.user.password || "No coinciden."
            ],
            overlay: false
        };
    },

    methods: {
        validate() {
            if (!this.$refs.form.validate()) {
                return;
            }
            this.register();
        },
        reset() {
            this.$refs.form.reset();
        },
        resetValidation() {
            this.$refs.form.resetValidation();
        },
        register() {
            console.log(this.user);
            const newUser = this.user;
            this.overlay = true;

            axios
                .post("/register", newUser)
                .then(response => {
                    console.log('this is response: ', response)
                    this.$swal(
                        response.status === 201
                            ? "!Buen trabajo! 😀" : "Oops... 😮",
                        response.data.message,
                        response.status === 201 ? "success" : "error"
                    ).then(result => {
                        if (response.status === 201) {
                            this.$inertia.get('/dashboard');
                        }
                    });
                    this.reset();
                })
                .catch(error => {
                    this.overlay = false;
                    this.color = "red darken-3";
                    this.mode = "vertical";
                    console.log(error);
                    console.log(error.response.data);
                    console.log(error.response.data.message);
                    const array = error.response.data.errors;
                    console.log(array);
                    this.text = "";
                    for (var clave in array) {
                        this.text += clave + ": " + array[clave] + "\n ";
                    }

                    console.log(this.text);
                    this.text += error.response.data.message;
                    this.$swal("Oops... 😮", this.text, "error");
                });

            // this.$inertia.post(route('register'), newUser, {
            //     onSuccess: (response) => {
            //         console.log('this is :',response);
            //         this.$swal(
            //             response.data.status === 201
            //                 ? "!Buen trabajo! 😀"
            //                 : "Oops... 😮",
            //             response.data.message,
            //             response.data.status === 201 ? "success" : "error"
            //         ).then(result => {
            //             if (response.data.status === 201) {
            //                 this.$router.push("/login");
            //             }
            //         });
            //         this.reset();
            //     },
            //     onError: (error) => {
            //         console.log(error);
            //         this.overlay = false;
            //         this.color = "red darken-3";
            //         this.mode = "vertical";
            //         console.log(error);
            //         console.log(error.response.data);
            //         console.log(error.response.data.message);
            //         const array = error.response.data.errors;
            //         console.log(array);
            //         this.text = "";
            //         for (var clave in array) {
            //             this.text += clave + ": " + array[clave] + "\n ";
            //         }
            //
            //         console.log(this.text);
            //         this.text += error.response.data.message;
            //         this.$swal("Oops... 😮", this.text, "error");
            //     }
            // })
        }
    }
};
</script>
