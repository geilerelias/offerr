<template>
    <app-layout>
        <template #header>
            <h2 class="font-semibold text-xl text-gray-800 leading-tight">
                Hello, place any Headline here!
            </h2>
        </template>

        <div>
            <div class="max-w-7xl mx-auto py-10 sm:px-6 lg:px-8">
                {{ bar }}
            </div>
        </div>
    </app-layout>
</template>

<script>
import AppLayout from './../../Layouts/PageLayout'

export default {
    name: "Hello.vue",
    props: ['bar'],

    components: {
        AppLayout,
    },
}
</script>



