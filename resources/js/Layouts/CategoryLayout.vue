<template>
    <v-app id="inspire">
        <v-app-bar
            app
            clipped-left
            flat
        >
            <v-spacer></v-spacer>

        </v-app-bar>
    </v-app>
</template>

<script>

export default {
    name: "CategoryLayout",
    data: () => ({
        drawerLocal: null,
        miniVariant: null,
        categories: null
    }),
    created() {
        axios
            .get("/category/all")
            .then(response => {
                this.categories = response.data;
            })
            .catch(error => {
                console.error('Error category => ', error.response.data.errors);
            });
    }
}
</script>


<style scoped>

</style>
