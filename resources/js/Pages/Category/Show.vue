<template>
     <App-layout>
         {{data}}
    </App-layout>
</template>

<script>
import AppLayout from './../../Layouts/AppLayout';
export default {
    name: "Show",
     components: {
        AppLayout,
    },
    props: ['data']
}
</script>

<style scoped>

</style>
