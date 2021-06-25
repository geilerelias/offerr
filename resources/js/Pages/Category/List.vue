<template>
    <App-layout>
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
    </App-layout>
</template>

<script>
import AppLayout from './../../Layouts/AppLayout';

export default {
    name: "list",
    components: {
        AppLayout,
    },
    props: ['data'],
    created() {
    },
    data: () => ({
        selectedItem: null,
        items: [
            {header: 'Cat'},
            {
                avatar: 'https://cdn.vuetifyjs.com/images/lists/1.jpg',
                title: 'Brunch this weekend?',
                subtitle: `<span class="text--primary">Ali Connors</span> &mdash; I'll be in your neighborhood doing errands this weekend. Do you want to hang out?`,
            },
            {divider: true, inset: true},
            {
                avatar: 'https://cdn.vuetifyjs.com/images/lists/2.jpg',
                title: 'Summer BBQ <span class="grey--text text--lighten-1">4</span>',
                subtitle: `<span class="text--primary">to Alex, Scott, Jennifer</span> &mdash; Wish I could come, but I'm out of town this weekend.`,
            },
            {divider: true, inset: true},
            {
                avatar: 'https://cdn.vuetifyjs.com/images/lists/3.jpg',
                title: 'Oui oui',
                subtitle: '<span class="text--primary">Sandra Adams</span> &mdash; Do you have Paris recommendations? Have you ever been?',
            },
            {divider: true, inset: true},
            {
                avatar: 'https://cdn.vuetifyjs.com/images/lists/4.jpg',
                title: 'Birthday gift',
                subtitle: '<span class="text--primary">Trevor Hansen</span> &mdash; Have any ideas about what we should get Heidi for her birthday?',
            },
            {divider: true, inset: true},
            {
                avatar: 'https://cdn.vuetifyjs.com/images/lists/5.jpg',
                title: 'Recipe to try',
                subtitle: '<span class="text--primary">Britta Holt</span> &mdash; We should eat this: Grate, Squash, Corn, and tomatillo Tacos.',
            },
        ],
    }),
}
</script>

<style scoped>

</style>
