<template>
  <div class="container" style="background-color: white; max-width: 97%; height: 100%; border-radius: 10px;">
    <br>
    <br>
    <span class="icon-text has-text-info">
      <span class="icon">
        <i class="fas fa-info-circle"></i>
      </span>
      <b>Regression</b>
    </span>
    <center>
      <Bar v-if="true" :chart-options="chartOptions" :chart-data="chartData" :chart-id="chartId"
      :dataset-id-key="datasetIdKey" :plugins="plugins" :css-classes="cssClasses" :styles="styles" :width="width"
      :height="height"  style="max-width: 80%;"/>
    </center>
    <br>
    <br>
    <br>
    <span class="icon-text has-text-info">
      <span class="icon">
        <i class="fas fa-info-circle"></i>
      </span>
      <b>Classification</b>
    </span>
    <center>
      <LineChartGenerator  style="max-width: 80%;"  v-if="true" :chart-options="options" :chart-data="data" :width="300" />
    </center>
    <br>
    <br>
    <p class="has-text-grey" style="text-align: left; padding-left: 200px;">group 1 คือ <label for="" style="color: red;">ไลค์ ตั้งแต่ 0 ถึง 10</label></p>
    <p class="has-text-grey" style="text-align: left; padding-left: 200px;">group 2 คือ <label for="" style="color: red;">ไลค์ ตั้งแต่ 10 ถึง 20</label></p>
    <p class="has-text-grey" style="text-align: left; padding-left: 200px;">group 3 คือ <label for="" style="color: red;">ไลค์ ตั้งแต่ 20 ถึง 40</label></p>
    <p class="has-text-grey" style="text-align: left; padding-left: 200px;">group 4 คือ <label for="" style="color: red;">ไลค์ ตั้งแต่ 40 ถึง 79</label></p>
    <p class="has-text-grey" style="text-align: left; padding-left: 200px;">group 5 คือ <label for="" style="color: red;">ไลค์ ตั้งแต่ 79 ถึง 158</label></p>
    <p class="has-text-grey" style="text-align: left; padding-left: 200px;">group 6 คือ <label for="" style="color: red;">ไลค์ ตั้งแต่ 158 ถึง 316</label></p>
    <p class="has-text-grey" style="text-align: left; padding-left: 200px;">group 7 คือ <label for="" style="color: red;">ไลค์ ตั้งแต่ 316 ถึง 630</label></p>
    <p class="has-text-grey" style="text-align: left; padding-left: 200px;">group 8 คือ <label for="" style="color: red;">ไลค์ ตั้งแต่ 630 ถึง 1257</label></p>
    <p class="has-text-grey" style="text-align: left; padding-left: 200px;">group 9 คือ <label for="" style="color: red;">ไลค์ ตั้งแต่ 1257 ถึง 2507</label></p>
    <p class="has-text-grey" style="text-align: left; padding-left: 200px;">group 10 คือ <label for="" style="color: red;">ไลค์ ตั้งแต่ 2507 ถึง 5000</label></p>
    <p class="has-text-grey" style="text-align: left; padding-left: 200px;">group 11 คือ <label for="" style="color: red;">ไลค์ ตั้งแต่ 5000</label></p>
  </div>
</template>

<script>
import { Bar, Line as LineChartGenerator } from 'vue-chartjs/legacy'
import {
  Chart as ChartJS,
  Title,
  Tooltip,
  Legend,
  LineElement,
  LinearScale,
  CategoryScale,
  PointElement,
  BarElement
} from 'chart.js'

ChartJS.register(
  Title,
  Tooltip,
  Legend,
  LineElement,
  LinearScale,
  CategoryScale,
  PointElement,
  BarElement
)

export default {

  components: { LineChartGenerator, Bar },
  props: {
    chartId: {
      type: String,
      default: 'bar-chart'
    },
    datasetIdKey: {
      type: String,
      default: 'label'
    },
    width: {
      type: Number,
      default: 400
    },
    height: {
      type: Number,
      default: 400
    },
    cssClasses: {
      default: '',
      type: String
    },
    styles: {
      type: Object,
      default: () => { }
    },
    plugins: {
      type: Array,
      default: () => []
    }
  },
  data () {
    return {
      data: {
        labels: [
          'Day 1',
          'Day 2',
          'Day 3',
          'Day 4',
          'Day 5',
          'Day 6',
          'Day 7',
          'Day 8',
          'Day 9',
          'Day 10',
          'Day 11',
          'Day 12',
          'Day 13',
          'Day 14',
          'Day 15',
          'Day 16',
          'Day 17',
          'Day 18',
          'Day 19',
          'Day 20',
          'Day 21',
          'Day 22',
          'Day 23',
          'Day 24',
          'Day 25',
          'Day 26',
          'Day 27',
          'Day 28',
          'Day 29',
          'Day 30'
        ],
        datasets: [
          {
            label: 'like group',
            backgroundColor: '#f87979',
            data: [1, 1, 1, 2, 2, 2, 2, 3, 3, 4, 4, 4, 4, 4, 5, 5, 5, 5, 5, 6, 6, 6, 7, 7, 8, 8, 9, 9, 10, 11]
          }
        ]
      },
      options: {
        responsive: true,
        maintainAspectRatio: false
      },
      chartData: {
        labels: [
          'Day 1',
          'Day 2',
          'Day 3',
          'Day 4',
          'Day 5',
          'Day 6',
          'Day 7',
          'Day 8',
          'Day 9',
          'Day 10',
          'Day 11',
          'Day 12',
          'Day 13',
          'Day 14',
          'Day 15',
          'Day 16',
          'Day 17',
          'Day 18',
          'Day 19',
          'Day 20',
          'Day 21',
          'Day 22',
          'Day 23',
          'Day 24',
          'Day 25',
          'Day 26',
          'Day 27',
          'Day 28',
          'Day 29',
          'Day 30'
        ],
        datasets: [
          {
            label: 'like',
            backgroundColor: '#f87979',
            data: [40, 60, 100, 150, 226, 451, 668, 855, 1038, 1569, 1852, 2056, 2569, 2896, 3215, 3597, 4059, 5950, 6508, 6686, 6945, 7102, 7250, 7450, 7568, 7850, 7966, 8206, 8325, 8502]
          }
        ]
      },
      chartOptions: {
        responsive: true,
        maintainAspectRatio: false
      }
    }
  }
}
</script>
