<template>
  <div class="container">
    <Bar v-if="false" :chart-options="chartOptions" :chart-data="chartData" :chart-id="chartId"
      :dataset-id-key="datasetIdKey" :plugins="plugins" :css-classes="cssClasses" :styles="styles" :width="width"
      :height="height" />

    <LineChartGenerator v-if="false" :chart-options="options" :chart-data="data" :width="300" />
    <div style="white-space: pre-wrap; text-align: left;">{{text}}</div>
    <div class="modal" :style="{'display': modalstatus}">
      <div class="modal-background"></div>
      <div class="modal-card">
        <header class="modal-card-head">
          <p class="modal-card-title">Create post</p>
          <button class="delete" aria-label="close"></button>
        </header>
        <section class="modal-card-body">
          <textarea class="textarea" placeholder="e.g. Hello world" v-model="text"></textarea>
          <br>
          <div class="input">Add to your post
            <div>
              <img
              src="https://static.xx.fbcdn.net/rsrc.php/v3/yC/r/a6OjkIIE-R0.png?_nc_eui2=AeEROHNgEIeAgmIkEz0Cir2CfK5Z1qDG7FV8rlnWoMbsVRBub7G9sWD6iVVh0J5TdGt_1i-OnVJ_PSthRF33l8_A"
              style="margin-left: 250px; height: 24px; cursor: pointer;" /><input class="file-input" type="file" name="resume">
              <input type="file" name="resume">
            </div>

            <img
              src="https://static.xx.fbcdn.net/rsrc.php/v3/yC/r/MqTJr_DM3Jg.png?_nc_eui2=AeFJI-Af9QMlz4__VIPfsowRt8fz8ZW9Ebm3x_Pxlb0RuY34momAG_iIJru00iVh9P572xJfSkS6MOm0sIxYoBQF"
              style="margin-left: 15px; height: 24px;" />
            <img
              src="https://static.xx.fbcdn.net/rsrc.php/v3/yk/r/yMDS19UDsWe.png?_nc_eui2=AeEi2s3rGXvlZU57UTWU6R9dv2_PAiqLvPK_b88CKou88twurSMqHa2w99_rqhQsXSMFCRrWJAUhQtK_N-KKcBhB"
              style="margin-left: 15px; height: 24px;" />
            <img
              src="https://static.xx.fbcdn.net/rsrc.php/v3/yy/r/uywzfiZad5N.png?_nc_eui2=AeGl2qErAVlTazE4NIAAtE-SzQ4v13Ks4CbNDi_XcqzgJkhrtx7REu1TQw2_F8CIws13tK5CbD6e4h1tNG2gtGYL"
              style="margin-left: 15px; height: 24px;" />
            <img
              src="https://static.xx.fbcdn.net/rsrc.php/v3/yY/r/CenxFlWjtJO.png?_nc_eui2=AeHNEdymbgD-8uBWR6mmjZ8Kz4XXObU63WDPhdc5tTrdYOq3gKzMywwqCKKeW8fTJ_YGuqtay6hQSitG7v1S5BGz"
              style="margin-left: 15px; height: 24px;" />
          </div>
        </section>
        <footer class="modal-card-foot">
          <button class="button is-success" @click="submitpost">Post</button>
          <button class="button">Cancel</button>
        </footer>
      </div>
    </div>
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
      text: '',
      modalstatus: 'inline',
      data: {
        labels: ['January', 'February', 'March', 'April', 'May', 'June', 'July'],
        datasets: [
          {
            label: 'Data One',
            backgroundColor: '#f87979',
            data: [40, 39, 10, 40, 39, 80, 40]
          }
        ]
      },
      options: {
        responsive: true,
        maintainAspectRatio: false
      },
      chartData: {
        labels: [
          'January',
          'February',
          'March',
          'April',
          'May',
          'June',
          'July',
          'August',
          'September',
          'October',
          'November',
          'December'
        ],
        datasets: [
          {
            label: 'Data One',
            backgroundColor: '#f87979',
            data: [40, 20, 12, 39, 10, 40, 39, 80, 40, 20, 12, 11]
          }
        ]
      },
      chartOptions: {
        responsive: true,
        maintainAspectRatio: false
      }
    }
  },
  methods: {
    submitpost () {
      this.modalstatus = 'none'
      console.log(this.text)
    }
  }
}
</script>
