<template>
    <Dashboard-Layout>
        <div slot="title">Estadisticas</div>
        <v-container>
            <v-row>
                <v-col cols="12" md="8" sm="6">
                    <v-card>
                        <vue-apex-charts :options="chartOptionsColumn" :series="seriesColumn" class="mx-auto"
                                         height="350"
                                         type="bar"
                                         width="85%"></vue-apex-charts>
                    </v-card>
                </v-col>

                <v-col cols="12" md="4" sm="6">
                    <v-card>
                        <vue-apex-charts :options="chartOptionsPie" :series="seriesPie" class="mx-auto" height="350"
                                         type="donut"
                                         width="85%"></vue-apex-charts>
                    </v-card>
                </v-col>
            </v-row>

            <v-row>
                <v-col cols="12" md="4" sm="6">
                    <v-card>
                        <vue-apex-charts :options="chartOptionsLine" :series="seriesLine" class="mx-auto"
                                         height="350" type="line"
                                         width="85%"></vue-apex-charts>
                    </v-card>
                </v-col>

                <v-col cols="12" md="8" sm="6">
                    <v-card>
                        <vue-apex-charts :options="chartOptionsArea" :series="seriesArea" class="mx-auto"
                                         height="350" type="area"
                                         width="85%"></vue-apex-charts>
                    </v-card>
                </v-col>
            </v-row>
        </v-container>
    </Dashboard-Layout>
</template>

<script>
import DashboardLayout from '@/Layouts/BusinessLayout.vue';
import VueApexCharts from 'vue-apexcharts';

export default {
    name: "Statistics",
    components: {
        DashboardLayout,
        'vue-apex-charts': VueApexCharts,
    },
    data() {
        return {
            chartOptionsColumn: {
                chart: {
                    type: 'bar',
                },
                xaxis: {
                    categories: ['Producto A', 'Producto B', 'Producto C', 'Producto D', 'Producto E'],
                },
            },
            seriesColumn: [
                {
                    name: 'Ventas',
                    data: [150, 220, 120, 350, 280],
                },
            ],
            chartOptionsPie: {
                chart: {
                    type: 'donut',
                },
                labels: ['Producto A', 'Producto B', 'Producto C'],
            },
            seriesPie: [30, 20, 25],
            chartOptionsLine: {
                chart: {
                    type: 'line',
                },
                xaxis: {
                    categories: ['Enero', 'Febrero', 'Marzo', 'Abril', 'Mayo'],
                },
            },
            seriesLine: [
                {
                    name: 'Ventas',
                    data: [120, 160, 180, 140, 200],
                },
            ],
            chartOptionsArea: {
                chart: {
                    type: 'area',
                },
                xaxis: {
                    categories: ['Enero', 'Febrero', 'Marzo', 'Abril', 'Mayo'],
                },
            },
            seriesArea: [
                {
                    name: 'Ventas',
                    data: [80, 100, 120, 90, 110],
                },
            ],
        };
    },

}
</script>
