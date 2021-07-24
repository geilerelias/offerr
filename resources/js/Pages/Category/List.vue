<template>
    <page-layout>
        <v-container class="my-6">
            <v-list two-line class="rounded-lg pa-4">
                <v-list-item-group v-model="selectedItem"
                                   color="primary">
                    <v-subheader>Categorías</v-subheader>
                    <inertia-link :href="`/category/show/${item.id}`"
                                  v-for="(item, index) in data"
                                  :key="index">
                        <v-list-item>
                            <v-list-item-avatar>
                                <v-img :src="`/storage/${item.category_path_image}`"></v-img>
                            </v-list-item-avatar>

                            <v-list-item-content>
                                <v-list-item-title v-html="item.category_name"></v-list-item-title>
                                <v-list-item-subtitle v-html="item.category_description"></v-list-item-subtitle>
                            </v-list-item-content>
                        </v-list-item>
                        <v-divider inset></v-divider>
                    </inertia-link>
                </v-list-item-group>
            </v-list>
        </v-container>
    </page-layout>
</template>

<script>
import PageLayout from "../../Layouts/PageLayout";

export default {
    name: "list",
    components: {
        PageLayout,
    },
    props: ['data'],
    created() {
    },
    data: () => ({
        drawerLocal: null,
        selectedItem: null,
        miniVariant: null
    }),
}
</script>

<style scoped>

</style>
