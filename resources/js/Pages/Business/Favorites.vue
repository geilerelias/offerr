<template>
    <Dashboard-Layout>
        <template v-slot:title>Favoritos</template>
    </Dashboard-Layout>
</template>

<script>
import DashboardLayout from '@/Layouts/BusinessLayout.vue'

export default {
    name: "Favorites",
    props: ["bussiness_id"],
    components: {
        DashboardLayout
    },
}
</script>

<style scoped>

</style>
