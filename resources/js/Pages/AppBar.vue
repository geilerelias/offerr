<template>
    <v-app>
        <v-app-bar
            app
            color="#fcb69f"
            dark
            shrink-on-scroll
        >
            <template v-slot:img="{ props }">
                <v-img
                    v-bind="props"
                    gradient="to top right, rgba(19,84,122,.5), rgba(128,208,199,.8)"
                ></v-img>
            </template>

            <v-app-bar-nav-icon></v-app-bar-nav-icon>

            <v-app-bar-title>Title</v-app-bar-title>

            <v-spacer></v-spacer>

            <v-btn icon>
                <v-icon>mdi-magnify</v-icon>
            </v-btn>

            <v-btn icon>
                <v-icon>mdi-heart</v-icon>
            </v-btn>

            <v-btn icon>
                <v-icon>mdi-dots-vertical</v-icon>
            </v-btn>
        </v-app-bar>

        <div v-for="item in 100" :key="item.id">
            <template>
                <v-card
                    class="mx-auto"
                    max-width="344"
                    outlined
                >
                    <v-list-item three-line>
                        <v-list-item-content>
                            <div class="text-overline mb-4">
                                OVERLINE
                            </div>
                            <v-list-item-title class="text-h5 mb-1">
                                Headline {{item}}
                            </v-list-item-title>
                            <v-list-item-subtitle>Greyhound divisely hello coldly fonwderfully</v-list-item-subtitle>
                        </v-list-item-content>

                        <v-list-item-avatar
                            tile
                            size="80"
                            color="grey"
                        ></v-list-item-avatar>
                    </v-list-item>

                    <v-card-actions>
                        <v-btn
                            outlined
                            rounded
                            text
                        >
                            Button
                        </v-btn>
                    </v-card-actions>
                </v-card>
            </template>
        </div>
    </v-app>
</template>

<script>
export default {
    name: "AppBar"
}
</script>

<style scoped>

</style>
