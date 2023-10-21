<template>
    <v-app id="inspire">
        <!-- Page Drawer-->
        <drawer-component></drawer-component>
        <!-- Page Heading -->
        <header-component></header-component>
        <!-- Page Content -->
        <main class="fill-height">
            <div>
                <slot></slot>
            </div>
        </main>
        <!-- Page Footer -->
        <footer-component></footer-component>
        <v-overlay :value="overlay">
            <v-progress-circular
                indeterminate
                size="64"
            ></v-progress-circular>
        </v-overlay>
    </v-app>
</template>

<script>
import Footer from "@/Base/Footer.vue";
import Header from "@/Base/Header.vue";
import Drawer from "@/Base/Drawer.vue";


export default {
    components: {
        "footer-component": Footer,
        "header-component": Header,
        "drawer-component": Drawer
    },
    data: () => ({overlay: true,}),
    mounted() {
        this.overlay = false;
    },
};
</script>

<style>
.v-btn {
    outline: none !important;
}

</style>
