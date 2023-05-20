<template>
  <div class="container" style="background-color: white; max-width: 97%; height: 100%; border-radius: 10px;">
    <div style="margin-top: 22px;" v-if="showregression">
      <div class="columns">
          <div class="column is-8" >
            <center>
              <Bar  :chart-options="chartOptions" :chart-data="chartData" :chart-id="chartId"
                :dataset-id-key="datasetIdKey" :plugins="plugins" :css-classes="cssClasses" :styles="styles" :width="width"
                :height="height" style="max-width: 90%;" />
            </center>
          </div>
          <div class="column">
            <p style="font-size: 48px; color: #005188; text-align: left;">Regression</p>
            <div style="width: 532px; height: 240px; border: 1px solid black; border-radius: 42px; background-color: #0c3f66;">
              <div class="columns" style="padding-top: 57px; padding-left: 100px;">
                <div class="column is-3">
                  <svg width="143.56px" height="122.56px" fill="currentColor" class="bi bi-heart" viewBox="0 0 16 16" style="color: white;">
                    <path
                      d="m8 2.748-.717-.737C5.6.281 2.514.878 1.4 3.053c-.523 1.023-.641 2.5.314 4.385.92 1.815 2.834 3.989 6.286 6.357 3.452-2.368 5.365-4.542 6.286-6.357.955-1.886.838-3.362.314-4.385C13.486.878 10.4.28 8.717 2.01L8 2.748zM8 15C-7.333 4.868 3.279-3.04 7.824 1.143c.06.055.119.112.176.171a3.12 3.12 0 0 1 .176-.17C12.72-3.042 23.333 4.867 8 15z" />
                  </svg>
                </div>
                <div class="column is-8">
                  <p style="color: white; font-size: 48px;">{{resultregression}}</p>
                  <p style="color: white; font-size: 36px;">Likes/day</p>
                </div>
              </div>
            </div>
          </div>
        </div>
    </div>
    <br>
    <br>
    <br>
    <div style="background-color: #D2E7F8; padding: 55px" v-if="showclassification">
      <p style="font-size: 48px; color: #005188; text-align: left;"><b>Classification</b></p>
      <center>
        <LineChartGenerator style="max-width: 100%; fill: white;"  :chart-options="options" :chart-data="data" :width="300" />
      </center>
      <center>
        <br>
        <br>
        <br>
      <div class="columns">
        <div class="column">
          <p style="color: #0C3F66;"><b>Average number of likes per day (accuracy  50%)</b></p>
          <br>
          <div style="border: 1px solid; border-radius: 30px; width: 300px; height: 65px; background-color: white; padding-top: 20px; text-align: center; background-color: #b5f38b;"><b>ยอดไลค์จะอยู่ในช่วง {{ resultclassification1 }}</b></div>
          <div style="border: 1px solid; border-radius: 30px; width: 231px; height: 35px; background-color: white; padding-top: 5px; margin-top: 5px;" :style="{backgroundColor:cng1}"><b>กลุ่ม 1 ยอดไลค์ 0 - 10</b></div>
          <div style="border: 1px solid; border-radius: 30px; width: 231px; height: 35px; background-color: white; padding-top: 5px;margin-top: 5px;" :style="{backgroundColor:cng2}"><b>กลุ่ม 2 ยอดไลค์ 10 - 20</b></div>
          <div style="border: 1px solid; border-radius: 30px; width: 231px; height: 35px; background-color: white; padding-top: 5px;margin-top: 5px;" :style="{backgroundColor:cng3}"><b>กลุ่ม 3 ยอดไลค์ 20 - 40</b></div>
          <div style="border: 1px solid; border-radius: 30px; width: 231px; height: 35px; background-color: white; padding-top: 5px;margin-top: 5px;" :style="{backgroundColor:cng4}"><b>กลุ่ม 4 ยอดไลค์ 40 - 79</b></div>
          <div style="border: 1px solid; border-radius: 30px; width: 231px; height: 35px; background-color: white; padding-top: 5px;margin-top: 5px;" :style="{backgroundColor:cng5}"><b>กลุ่ม 5 ยอดไลค์ 79 - 158</b></div>
          <div style="border: 1px solid; border-radius: 30px; width: 231px; height: 35px; background-color: white; padding-top: 5px;margin-top: 5px;" :style="{backgroundColor:cng6}"><b>กลุ่ม 6 ยอดไลค์ 158 - 316</b></div>
          <div style="border: 1px solid; border-radius: 30px; width: 231px; height: 35px; background-color: white; padding-top: 5px;margin-top: 5px;" :style="{backgroundColor:cng7}"><b>กลุ่ม 7 ยอดไลค์ 316 - 630</b></div>
          <div style="border: 1px solid; border-radius: 30px; width: 231px; height: 35px; background-color: white; padding-top: 5px;margin-top: 5px;" :style="{backgroundColor:cng8}"><b>กลุ่ม 8 ยอดไลค์ 630 - 1257</b></div>
          <div style="border: 1px solid; border-radius: 30px; width: 231px; height: 35px; background-color: white; padding-top: 5px;margin-top: 5px;" :style="{backgroundColor:cng9}"><b>กลุ่ม 9 ยอดไลค์ 1257 - 2507</b></div>
          <div style="border: 1px solid; border-radius: 30px; width: 231px; height: 35px; background-color: white; padding-top: 5px;margin-top: 5px;" :style="{backgroundColor:cng10}"><b>กลุ่ม 10 ยอดไลค์ 2507 - 5000</b></div>
          <div style="border: 1px solid; border-radius: 30px; width: 231px; height: 35px; background-color: white; padding-top: 5px;margin-top: 5px;" :style="{backgroundColor:cng11}"><b>กลุ่ม 11 ยอดไลค์มากกว่า 5000</b></div>
        </div>
        <div class="column">
          <p style="color: #0C3F66;"><b>Adjacent Group (accuracy  70%)</b></p>
          <br>
          <div style="border: 1px solid; border-radius: 30px; width: 300px; height: 65px; background-color: white; padding-top: 20px; text-align: center; background-color: #b5f38b;"><b>ยอดไลค์จะอยู่ในช่วง  {{ resultclassification1 }}</b></div>
          <div style="border: 1px solid; border-radius: 30px; width: 300px; height: 65px; background-color: white; padding-top: 20px; margin-top: 5px; text-align: center; background-color: #b5f38b;"><b>ยอดไลค์จะอยู่ในช่วง  {{ resultclassification2 }}</b></div>
          <div style="border: 1px solid; border-radius: 30px; width: 300px; height: 65px; background-color: white; padding-top: 20px; margin-top: 5px; text-align: center; background-color: #b5f38b;"><b>ยอดไลค์จะอยู่ในช่วง  {{ resultclassification3 }}</b></div>
          <div style="border: 1px solid; border-radius: 30px; width: 231px; height: 35px; background-color: white; padding-top: 5px; margin-top: 5px;" :style="{backgroundColor:cag1}"><b>กลุ่ม 1 ยอดไลค์ 0 - 10</b></div>
          <div style="border: 1px solid; border-radius: 30px; width: 231px; height: 35px; background-color: white; padding-top: 5px;margin-top: 5px;" :style="{backgroundColor:cag2}"><b>กลุ่ม 2 ยอดไลค์ 10 - 20</b></div>
          <div style="border: 1px solid; border-radius: 30px; width: 231px; height: 35px; background-color: white; padding-top: 5px;margin-top: 5px;" :style="{backgroundColor:cag3}"><b>กลุ่ม 3 ยอดไลค์ 20 - 40</b></div>
          <div style="border: 1px solid; border-radius: 30px; width: 231px; height: 35px; background-color: white; padding-top: 5px;margin-top: 5px;" :style="{backgroundColor:cag4}"><b>กลุ่ม 4 ยอดไลค์ 40 - 79</b></div>
          <div style="border: 1px solid; border-radius: 30px; width: 231px; height: 35px; background-color: white; padding-top: 5px;margin-top: 5px;" :style="{backgroundColor:cag5}"><b>กลุ่ม 5 ยอดไลค์ 79 - 158</b></div>
          <div style="border: 1px solid; border-radius: 30px; width: 231px; height: 35px; background-color: white; padding-top: 5px;margin-top: 5px;" :style="{backgroundColor:cag6}"><b>กลุ่ม 6 ยอดไลค์ 158 - 316</b></div>
          <div style="border: 1px solid; border-radius: 30px; width: 231px; height: 35px; background-color: white; padding-top: 5px;margin-top: 5px;" :style="{backgroundColor:cag7}"><b>กลุ่ม 7 ยอดไลค์ 316 - 630</b></div>
          <div style="border: 1px solid; border-radius: 30px; width: 231px; height: 35px; background-color: white; padding-top: 5px;margin-top: 5px;" :style="{backgroundColor:cag8}"><b>กลุ่ม 8 ยอดไลค์ 630 - 1257</b></div>
          <div style="border: 1px solid; border-radius: 30px; width: 231px; height: 35px; background-color: white; padding-top: 5px;margin-top: 5px;" :style="{backgroundColor:cag9}"><b>กลุ่ม 9 ยอดไลค์ 1257 - 2507</b></div>
          <div style="border: 1px solid; border-radius: 30px; width: 231px; height: 35px; background-color: white; padding-top: 5px;margin-top: 5px;" :style="{backgroundColor:cag10}"><b>กลุ่ม 10 ยอดไลค์ 2507 - 5000</b></div>
          <div style="border: 1px solid; border-radius: 30px; width: 231px; height: 35px; background-color: white; padding-top: 5px;margin-top: 5px;" :style="{backgroundColor:cag11}"><b>กลุ่ม 11 ยอดไลค์มากกว่า 5000</b></div>
        </div>
      </div>
      </center>
    </div>
    <div style="background-color: white; padding: 55px" v-if="showranking">
      <p style="font-size: 48px; color: #005188; text-align: left;"><b>Ranking</b></p>
      <center>
        <LineChartGenerator style="max-width: 100%; fill: white;" :chart-options="options" :chart-data="data1" :width="300" />
      </center>
      <center>
        <br>
        <br>
        <br>
      <div class="columns">
        <div class="column">
          <p style="color: #0C3F66;"><b>Average number of likes per day (accuracy  50%)</b></p>
          <br>
          <div style="border: 1px solid; border-radius: 30px; width: 300px; height: 65px; background-color: white; padding-top: 20px; text-align: center; background-color: #b5f38b;"><b>ยอดไลค์จะอยู่ในช่วง {{ resultranking1 }}</b></div>
          <div style="border: 1px solid; border-radius: 30px; width: 231px; height: 35px; background-color: white; padding-top: 5px; margin-top: 5px;" :style="{backgroundColor:rng1}"><b>กลุ่ม 1 ยอดไลค์ 0 - 10</b></div>
          <div style="border: 1px solid; border-radius: 30px; width: 231px; height: 35px; background-color: white; padding-top: 5px;margin-top: 5px;" :style="{backgroundColor:rng2}"><b>กลุ่ม 2 ยอดไลค์ 10 - 20</b></div>
          <div style="border: 1px solid; border-radius: 30px; width: 231px; height: 35px; background-color: white; padding-top: 5px;margin-top: 5px;" :style="{backgroundColor:rng3}"><b>กลุ่ม 3 ยอดไลค์ 20 - 40</b></div>
          <div style="border: 1px solid; border-radius: 30px; width: 231px; height: 35px; background-color: white; padding-top: 5px;margin-top: 5px;" :style="{backgroundColor:rng4}"><b>กลุ่ม 4 ยอดไลค์ 40 - 79</b></div>
          <div style="border: 1px solid; border-radius: 30px; width: 231px; height: 35px; background-color: white; padding-top: 5px;margin-top: 5px;" :style="{backgroundColor:rng5}"><b>กลุ่ม 5 ยอดไลค์ 79 - 158</b></div>
          <div style="border: 1px solid; border-radius: 30px; width: 231px; height: 35px; background-color: white; padding-top: 5px;margin-top: 5px;" :style="{backgroundColor:rng6}"><b>กลุ่ม 6 ยอดไลค์ 158 - 316</b></div>
          <div style="border: 1px solid; border-radius: 30px; width: 231px; height: 35px; background-color: white; padding-top: 5px;margin-top: 5px;" :style="{backgroundColor:rng7}"><b>กลุ่ม 7 ยอดไลค์ 316 - 630</b></div>
          <div style="border: 1px solid; border-radius: 30px; width: 231px; height: 35px; background-color: white; padding-top: 5px;margin-top: 5px;" :style="{backgroundColor:rng8}"><b>กลุ่ม 8 ยอดไลค์ 630 - 1257</b></div>
          <div style="border: 1px solid; border-radius: 30px; width: 231px; height: 35px; background-color: white; padding-top: 5px;margin-top: 5px;" :style="{backgroundColor:rng9}"><b>กลุ่ม 9 ยอดไลค์ 1257 - 2507</b></div>
          <div style="border: 1px solid; border-radius: 30px; width: 231px; height: 35px; background-color: white; padding-top: 5px;margin-top: 5px;" :style="{backgroundColor:rng10}"><b>กลุ่ม 10 ยอดไลค์ 2507 - 5000</b></div>
          <div style="border: 1px solid; border-radius: 30px; width: 231px; height: 35px; background-color: white; padding-top: 5px;margin-top: 5px;" :style="{backgroundColor:rng11}"><b>กลุ่ม 11 ยอดไลค์มากกว่า 5000</b></div>
        </div>
        <div class="column">
          <p style="color: #0C3F66;"><b>Adjacent Group (accuracy  70%)</b></p>
          <br>
          <div style="border: 1px solid; border-radius: 30px; width: 300px; height: 65px; background-color: white; padding-top: 20px; text-align: center; background-color: #b5f38b;"><b>ยอดไลค์จะอยู่ในช่วง  {{ resultranking1 }}</b></div>
          <div style="border: 1px solid; border-radius: 30px; width: 300px; height: 65px; background-color: white; padding-top: 20px; margin-top: 5px; text-align: center; background-color: #b5f38b;"><b>ยอดไลค์จะอยู่ในช่วง  {{ resultranking2 }}</b></div>
          <div style="border: 1px solid; border-radius: 30px; width: 300px; height: 65px; background-color: white; padding-top: 20px; margin-top: 5px; text-align: center; background-color: #b5f38b;"><b>ยอดไลค์จะอยู่ในช่วง  {{ resultranking3 }}</b></div>
          <div style="border: 1px solid; border-radius: 30px; width: 231px; height: 35px; background-color: white; padding-top: 5px; margin-top: 5px;" :style="{backgroundColor:rag1}"><b>กลุ่ม 1 ยอดไลค์ 0 - 10</b></div>
          <div style="border: 1px solid; border-radius: 30px; width: 231px; height: 35px; background-color: white; padding-top: 5px;margin-top: 5px;" :style="{backgroundColor:rag2}"><b>กลุ่ม 2 ยอดไลค์ 10 - 20</b></div>
          <div style="border: 1px solid; border-radius: 30px; width: 231px; height: 35px; background-color: white; padding-top: 5px;margin-top: 5px;" :style="{backgroundColor:rag3}"><b>กลุ่ม 3 ยอดไลค์ 20 - 40</b></div>
          <div style="border: 1px solid; border-radius: 30px; width: 231px; height: 35px; background-color: white; padding-top: 5px;margin-top: 5px;" :style="{backgroundColor:rag4}"><b>กลุ่ม 4 ยอดไลค์ 40 - 79</b></div>
          <div style="border: 1px solid; border-radius: 30px; width: 231px; height: 35px; background-color: white; padding-top: 5px;margin-top: 5px;" :style="{backgroundColor:rag5}"><b>กลุ่ม 5 ยอดไลค์ 79 - 158</b></div>
          <div style="border: 1px solid; border-radius: 30px; width: 231px; height: 35px; background-color: white; padding-top: 5px;margin-top: 5px;" :style="{backgroundColor:rag6}"><b>กลุ่ม 6 ยอดไลค์ 158 - 316</b></div>
          <div style="border: 1px solid; border-radius: 30px; width: 231px; height: 35px; background-color: white; padding-top: 5px;margin-top: 5px;" :style="{backgroundColor:rag7}"><b>กลุ่ม 7 ยอดไลค์ 316 - 630</b></div>
          <div style="border: 1px solid; border-radius: 30px; width: 231px; height: 35px; background-color: white; padding-top: 5px;margin-top: 5px;" :style="{backgroundColor:rag8}"><b>กลุ่ม 8 ยอดไลค์ 630 - 1257</b></div>
          <div style="border: 1px solid; border-radius: 30px; width: 231px; height: 35px; background-color: white; padding-top: 5px;margin-top: 5px;" :style="{backgroundColor:rag9}"><b>กลุ่ม 9 ยอดไลค์ 1257 - 2507</b></div>
          <div style="border: 1px solid; border-radius: 30px; width: 231px; height: 35px; background-color: white; padding-top: 5px;margin-top: 5px;" :style="{backgroundColor:rag10}"><b>กลุ่ม 10 ยอดไลค์ 2507 - 5000</b></div>
          <div style="border: 1px solid; border-radius: 30px; width: 231px; height: 35px; background-color: white; padding-top: 5px;margin-top: 5px;" :style="{backgroundColor:rag11}"><b>กลุ่ม 11 ยอดไลค์มากกว่า 5000</b></div>
        </div>
      </div>
      </center>
    </div>
    <br>
    <br>
  </div>
</template>

<script>
import { Bar, Line as LineChartGenerator } from 'vue-chartjs/legacy'
import axios from 'axios'
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
      message_tags: this.$route.params.message_tags,
      type: this.$route.params.type,
      created_time: this.$route.params.created_time,
      msg: this.$route.params.msg,
      pl: this.$route.params.pl,
      pg: this.$route.params.pg,
      resultclassification1: '',
      resultclassification2: '',
      resultclassification3: '',
      resultregression: '',
      resultranking1: '',
      resultranking2: '',
      resultranking3: '',
      showregression: false,
      showranking: false,
      showclassification: false,
      cng1: 'white',
      cng2: 'white',
      cng3: 'white',
      cng4: 'white',
      cng5: 'white',
      cng6: 'white',
      cng7: 'white',
      cng8: 'white',
      cng9: 'white',
      cng10: 'white',
      cng11: 'white',
      cag1: 'white',
      cag2: 'white',
      cag3: 'white',
      cag4: 'white',
      cag5: 'white',
      cag6: 'white',
      cag7: 'white',
      cag8: 'white',
      cag9: 'white',
      cag10: 'white',
      cag11: 'white',
      rng1: 'white',
      rng2: 'white',
      rng3: 'white',
      rng4: 'white',
      rng5: 'white',
      rng6: 'white',
      rng7: 'white',
      rng8: 'white',
      rng9: 'white',
      rng10: 'white',
      rng11: 'white',
      rag1: 'white',
      rag2: 'white',
      rag3: 'white',
      rag4: 'white',
      rag5: 'white',
      rag6: 'white',
      rag7: 'white',
      rag8: 'white',
      rag9: 'white',
      rag10: 'white',
      rag11: 'white',
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
          'Day 14'
        ],
        datasets: [
          {
            label: 'like group',
            backgroundColor: '#005188',
            data: []
          }
        ]
      },
      data1: {
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
          'Day 14'
        ],
        datasets: [
          {
            label: 'like group',
            backgroundColor: '#005188',
            data: []
          }
        ]
      },
      options: {
        responsive: true,
        maintainAspectRatio: false,
        colors: ['#a52714']
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
          'Day 14'
        ],
        datasets: [
          {
            label: 'like',
            backgroundColor: ['#A5D8FF'],
            data: []
          }
        ]
      },
      chartOptions: {
        responsive: true,
        maintainAspectRatio: false
      }
    }
  },
  created () {
    for (let i = 0; i < this.type.length; i++) {
      if (this.type[i] === 'regression') {
        this.showregression = true
      } else if (this.type[i] === 'classification') {
        this.showclassification = true
      } else if (this.type[i] === 'ranking') {
        this.showranking = true
      }
    }
    var array = []
    if (this.message_tags[0] !== '') {
      for (let i = 0; i < this.message_tags.length; i++) {
        array.push("'" + this.message_tags[i] + "'")
      }
    }
    for (let i = 0; i < this.type.length; i++) {
      if (this.type[i] === 'regression') {
        axios.post('http://139.180.213.160:8080/predict', {
          created_time: this.created_time,
          message_tags: '[' + array + ']',
          msg: this.msg,
          pl: parseInt(this.pl),
          pg: parseInt(this.pg),
          type: 'regression'
        }).then((res) => {
          var text = res.data.replaceAll("'", '"')
          text = text.replaceAll('inf', '"inf"')
          this.resultregression = JSON.parse(text).score
          this.chartData.datasets[0].data = JSON.parse(text).dataList
        }).catch((err) => {
          console.log(err)
        })
      } else if (this.type[i] === 'classification') {
        axios.post('http://139.180.213.160:8080/predict', {
          created_time: this.created_time,
          message_tags: '[' + array + ']',
          msg: this.msg,
          pl: parseInt(this.pl),
          pg: parseInt(this.pg),
          type: 'classification'
        }).then((res) => {
          var text = res.data.replaceAll("'", '"')
          this.data.datasets[0].data = JSON.parse(text).dataList
          if (JSON.parse(text).score === 0) {
            this.cng1 = '#4FA2E1'
            this.resultclassification1 = '0 - 10'
            this.resultclassification2 = '10 - 20'
            this.resultclassification3 = ''
            this.cag1 = '#4FA2E1'
            this.cag2 = '#4FA2E1'
          } if (JSON.parse(text).score === 1) {
            this.cng2 = '#4FA2E1'
            this.resultclassification1 = '10 - 20'
            this.resultclassification2 = '0 - 10'
            this.resultclassification3 = '20 - 40'
            this.cag1 = '#4FA2E1'
            this.cag2 = '#4FA2E1'
            this.cag3 = '#4FA2E1'
          } if (JSON.parse(text).score === 2) {
            this.cng3 = '#4FA2E1'
            this.resultclassification1 = '20 - 40'
            this.resultclassification2 = '10 - 20'
            this.resultclassification3 = '40 - 79'
            this.cag2 = '#4FA2E1'
            this.cag3 = '#4FA2E1'
            this.cag4 = '#4FA2E1'
          } if (JSON.parse(text).score === 3) {
            this.cng4 = '#4FA2E1'
            this.resultclassification1 = '40 - 79'
            this.resultclassification2 = '20 - 40'
            this.resultclassification3 = '79 - 158'
            this.cag3 = '#4FA2E1'
            this.cag4 = '#4FA2E1'
            this.cag5 = '#4FA2E1'
          } if (JSON.parse(text).score === 4) {
            this.cng5 = '#4FA2E1'
            this.resultclassification1 = '79 - 158'
            this.resultclassification2 = '40 - 79'
            this.resultclassification3 = '158 - 316'
            this.cag4 = '#4FA2E1'
            this.cag5 = '#4FA2E1'
            this.cag6 = '#4FA2E1'
          } if (JSON.parse(text).score === 5) {
            this.cng6 = '#4FA2E1'
            this.resultclassification1 = '158 - 316'
            this.resultclassification2 = '79 - 158'
            this.resultclassification3 = '316 - 630'
            this.cag5 = '#4FA2E1'
            this.cag6 = '#4FA2E1'
            this.cag7 = '#4FA2E1'
          } if (JSON.parse(text).score === 6) {
            this.cng7 = '#4FA2E1'
            this.resultclassification1 = '316 - 630'
            this.resultclassification2 = '158 - 316'
            this.resultclassification3 = '630 - 1257'
            this.cag6 = '#4FA2E1'
            this.cag7 = '#4FA2E1'
            this.cag8 = '#4FA2E1'
          } if (JSON.parse(text).score === 7) {
            this.cng8 = '#4FA2E1'
            this.resultclassification1 = '630 - 1257'
            this.resultclassification2 = '316 - 630'
            this.resultclassification3 = '1257 - 2507'
            this.cag7 = '#4FA2E1'
            this.cag8 = '#4FA2E1'
            this.cag9 = '#4FA2E1'
          } if (JSON.parse(text).score === 8) {
            this.cng9 = '#4FA2E1'
            this.resultclassification1 = '1257 - 2507'
            this.resultclassification2 = '630 - 1257'
            this.resultclassification3 = '2507 - 5000'
            this.cag8 = '#4FA2E1'
            this.cag9 = '#4FA2E1'
            this.cag10 = '#4FA2E1'
          } if (JSON.parse(text).score === 9) {
            this.cng10 = '#4FA2E1'
            this.resultclassification1 = '2507 - 5000'
            this.resultclassification2 = '1257 - 2507'
            this.resultclassification3 = 'มากกว่า 5000'
            this.cag9 = '#4FA2E1'
            this.cag10 = '#4FA2E1'
            this.cag11 = '#4FA2E1'
          } if (JSON.parse(text).score === 10) {
            this.cng11 = '#4FA2E1'
            this.resultclassification1 = 'มากกว่า 5000'
            this.resultclassification2 = '2507 - 5000'
            this.resultclassification3 = ''
            this.cag10 = '#4FA2E1'
            this.cag11 = '#4FA2E1'
          }
        }).catch((err) => {
          console.log(err)
        })
      } else if (this.type[i] === 'ranking') {
        axios.post('http://139.180.213.160:8080/predict', {
          created_time: this.created_time,
          message_tags: '[' + array + ']',
          msg: this.msg,
          pl: parseInt(this.pl),
          pg: parseInt(this.pg),
          type: 'ranking'
        }).then((res) => {
          var text = res.data.replaceAll("'", '"')
          this.data1.datasets[0].data = JSON.parse(text).dataList
          if (JSON.parse(text).score === 0) {
            this.rng1 = '#4FA2E1'
            this.resultranking1 = '0 - 10'
            this.resultranking2 = '10 - 20'
            this.resultranking3 = ''
            this.rag1 = '#4FA2E1'
            this.rag2 = '#4FA2E1'
          } if (JSON.parse(text).score === 1) {
            this.rng2 = '#4FA2E1'
            this.resultranking1 = '10 - 20'
            this.resultranking2 = '0 - 10'
            this.resultranking3 = '20 - 40'
            this.rag1 = '#4FA2E1'
            this.rag2 = '#4FA2E1'
            this.rag3 = '#4FA2E1'
          } if (JSON.parse(text).score === 2) {
            this.rng3 = '#4FA2E1'
            this.resultranking1 = '20 - 40'
            this.resultranking2 = '10 - 20'
            this.resultranking3 = '40 - 79'
            this.rag2 = '#4FA2E1'
            this.rag3 = '#4FA2E1'
            this.rag4 = '#4FA2E1'
          } if (JSON.parse(text).score === 3) {
            this.rng4 = '#4FA2E1'
            this.resultranking1 = '40 - 79'
            this.resultranking2 = '20 - 40'
            this.resultranking3 = '79 - 158'
            this.rag3 = '#4FA2E1'
            this.rag4 = '#4FA2E1'
            this.rag5 = '#4FA2E1'
          } if (JSON.parse(text).score === 4) {
            this.rng5 = '#4FA2E1'
            this.resultranking1 = '79 - 158'
            this.resultranking2 = '40 - 79'
            this.resultranking3 = '158 - 316'
            this.rag4 = '#4FA2E1'
            this.rag5 = '#4FA2E1'
            this.rag6 = '#4FA2E1'
          } if (JSON.parse(text).score === 5) {
            this.rng6 = '#4FA2E1'
            this.resultranking1 = '158 - 316'
            this.resultranking2 = '79 - 158'
            this.resultranking3 = '316 - 630'
            this.rag5 = '#4FA2E1'
            this.rag6 = '#4FA2E1'
            this.rag7 = '#4FA2E1'
          } if (JSON.parse(text).score === 6) {
            this.rng7 = '#4FA2E1'
            this.resultranking1 = '316 - 630'
            this.resultranking2 = '158 - 316'
            this.resultranking3 = '630 - 1257'
            this.rag6 = '#4FA2E1'
            this.rag7 = '#4FA2E1'
            this.rag8 = '#4FA2E1'
          } if (JSON.parse(text).score === 7) {
            this.rng8 = '#4FA2E1'
            this.resultranking1 = '630 - 1257'
            this.resultranking2 = '316 - 630'
            this.resultranking3 = '1257 - 2507'
            this.rag7 = '#4FA2E1'
            this.rag8 = '#4FA2E1'
            this.rag9 = '#4FA2E1'
          } if (JSON.parse(text).score === 8) {
            this.rng9 = '#4FA2E1'
            this.resultranking1 = '1257 - 2507'
            this.resultranking2 = '630 - 1257'
            this.resultranking3 = '2507 - 5000'
            this.rag8 = '#4FA2E1'
            this.rag9 = '#4FA2E1'
            this.rag10 = '#4FA2E1'
          } if (JSON.parse(text).score === 9) {
            this.rng10 = '#4FA2E1'
            this.resultranking1 = '2507 - 5000'
            this.resultranking2 = '1257 - 2507'
            this.resultranking3 = 'มากกว่า 5000'
            this.rag9 = '#4FA2E1'
            this.rag10 = '#4FA2E1'
            this.rag11 = '#4FA2E1'
          } if (JSON.parse(text).score === 10) {
            this.rng11 = '#4FA2E1'
            this.resultranking1 = 'มากกว่า 5000'
            this.resultranking2 = '2507 - 5000'
            this.resultranking3 = ''
            this.rag10 = '#4FA2E1'
            this.rag11 = '#4FA2E1'
          }
        }).catch((err) => {
          console.log(err)
        })
      }
    }
  }
}
</script>
