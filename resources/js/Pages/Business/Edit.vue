<template>
    <App-layout>
        <v-container>
            <v-card
                class="d-flex justify-center mb-6"
                :color="$vuetify.theme.dark ? 'grey darken-3' : 'grey lighten-4'"
                flat
                tile
            >
                <v-card class="mb-6 text-center transparent"
                        height="500"
                        width="800">
                    <picture-input
                        ref="pictureInput"
                        @change="onChange"
                        height="500"
                        width="800"
                        accept="image/jpeg,image/png"
                        size="10"
                        :removable="true"
                        button-class="v-btn v-btn--contained theme--light v-size--small info"
                        removeButtonClass="v-btn v-btn--contained theme--light v-size--small error"
                        :zIndex="0"
                        radius="1"
                        :customStrings="customStrings"
                    >

                    </picture-input>
                    <v-avatar zIndex="100" :size="$vuetify.breakpoint.mdAndUp?'200':'150'"
                              class="rounded-circle elevation-6 mt-n12 d-inline-block">
                        <v-img cover src="https://demos.creative-tim.com/vue-material-dashboard/img/marc.aba54d65.jpg"
                               class="rounded-circle d-inline-block"
                               style="z-index: 100"
                               :style="`width:${$vuetify.breakpoint.mdAndUp?'200':'150'}`">
                        </v-img>
                    </v-avatar>
                </v-card>
            </v-card>

        </v-container>
        <h1>this is edit business</h1>
        {{ data }}
    </App-layout>
</template>

<script>
import AppLayout from './../../Layouts/AppLayout'
import PictureInput from 'vue-picture-input'

export default {
    name: "Edit",
    components: {
        AppLayout,
        PictureInput
    },
    props: ['data'],
    data: () => ({
        customStrings: {
            upload: "<p> Su dispositivo no admite la carga de archivos. </p>", // HTML allowed
            drag:
                "Arrastre una imagen o <br> haga clic aquí para seleccionar", // HTML allowed
            tap: "Toque aquí para seleccionar una foto <br> de su galería", // HTML allowed
            change: "Cambiar", // Text only
            remove: "Eliminar", // Text only
            select: "Selecciona una foto", // Text only
            selected: '<p>Photo successfully selected!</p>', // HTML allowed
            fileType: "Este tipo de archivo no es compatible.",
            fileSize: 'The file size exceeds the limit', // Text only
            aspect: 'Landscape/Portrait',// Text only
        }
    }),
    methods: {
        onChange(image) {
            console.log("New picture selected!");
            if (image) {
                console.log("Picture loaded.");
                this.business.business_image = this.$refs.pictureInput.file;
                console.log(this.$refs.pictureInput.file);
            } else {
                console.log(
                    "FileReader API not supported: use the <form>, Luke!"
                );
            }
        },
        removeImage() {
            this.$refs.pictureInput.removeImage();
        },
    }
}
</script>

<style scoped>

</style>
