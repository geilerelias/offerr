<template>
    <inertia-link
        href="/">
        <img class="h-20 mx-auto" :src="logo" alt="logo"
             style="max-height: 200px"/>
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
