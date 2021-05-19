<template>
    <App-layout>
        <v-card
            class="mx-auto"
            max-width="500"
        >
            <v-toolbar
                color="indigo"
                dark
            >
                <v-app-bar-nav-icon></v-app-bar-nav-icon>

                <v-toolbar-title>Discover</v-toolbar-title>

                <v-spacer></v-spacer>

                <v-btn icon>
                    <v-icon>mdi-magnify</v-icon>
                </v-btn>
            </v-toolbar>

            <v-container fluid>
            </v-container>
        </v-card>
    </App-layout>
</template>

<script>
import AppLayout from './../../Layouts/AppLayout'

export default {
    name: "Create",
    components: {
        AppLayout,
    },
}
</script>

<style scoped>

</style>
