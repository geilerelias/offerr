<template>
    <inertia-link
        href="/">
        <v-card flat max-width="110">
            <v-img
                class="h-20"
                style="max-height: 200px"
                contain
                :src="logo"
                alt="logo"
            />
        </v-card>
    </inertia-link>
</template>

<script>
import logo from '../../images/logo.jpg';

export default {
    data() {
        return {
            logo: logo
        }
    }
}
</script>

<style scoped>

</style>
