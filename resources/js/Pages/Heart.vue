<template>
    <v-app>
        <v-main>
            <v-container class="center d-flex flex-column justify-center">
                <div class="corazon">💕</div>

                <h1 class="error-title text-blue-500">
                    My love
                </h1>
            </v-container>
        </v-main>
    </v-app>
</template>

<script>
export default {
    name: "Heart"
}
</script>

<style>
@keyframes latidos {
    from {
        transform: none;
    }
    50% {
        transform: scale(1.4);
    }
    to {
        transform: none;
    }
}

/* En la clase corazon vamos a llamar latidos en la animación  */
.corazon {
    display: inline-block;
    font-size: 150px;
    text-shadow: 0 0 10px #222, 1px 1px 0 #450505;
    color: red;
    animation: latidos .5s infinite;
    transform-origin: center;
}

body {
    text-align: center;
    background: #333;
    height: 230px;
}

.error-title {
    font-size: 50px;
    font-weight: 900;
    text-shadow: 4px 4px 0 #fff, 6px 6px 0 #343a40;
    line-height: 210px;
}

</style>
<!--<style>-->
<!--.error-title {-->
<!--    font-size: 50px;-->
<!--    font-weight: 900;-->
<!--    text-shadow: 4px 4px 0 #fff, 6px 6px 0 #343a40;-->
<!--    line-height: 210px;-->
<!--}-->

<!--.heart {-->
<!--    background-color: #f44336;-->
<!--    width: 50px;-->
<!--    height: 50px;-->
<!--    position: relative;-->
<!--    transform: rotate(45deg);-->
<!--    animation: animateHeart 1.2s infinite;-->
<!--}-->

<!--.heart::before, .heart::after {-->
<!--    content: "";-->
<!--    width: 50px;-->
<!--    height: 50px;-->
<!--    background-color: #f44336;-->
<!--    position: absolute;-->
<!--    border-radius: 50%;-->
<!--}-->

<!--.heart::before {-->
<!--    left: -25px;-->
<!--}-->

<!--.heart::after {-->
<!--    top: -25px;-->
<!--}-->

<!--@keyframes animateHeart {-->
<!--    0% {-->
<!--        transform: rotate(45deg) scale(0.8);-->
<!--    }-->
<!--    5% {-->
<!--        transform: rotate(45deg) scale(0.9);-->
<!--    }-->
<!--    10% {-->
<!--        transform: rotate(45deg) scale(0.8);-->
<!--    }-->
<!--    15% {-->
<!--        transform: rotate(45deg) scale(1);-->
<!--    }-->
<!--    50% {-->
<!--        transform: rotate(45deg) scale(0.8);-->
<!--    }-->
<!--    100% {-->
<!--        transform: rotate(45deg) scale(0.8);-->
<!--    }-->
<!--}-->

<!--body {-->
<!--    padding: 5rem;-->
<!--    height: calc(100vh - 10rem);-->
<!--}-->

<!--.center {-->
<!--    position: absolute;-->
<!--    top: 50%;-->
<!--    left: 50%;-->
<!--    transform: translate(-50%, -50%);-->
<!--}-->
<!--</style>-->
