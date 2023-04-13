<template>
  <div class="container">
    <div class="columns">
      <div class="column is-two-thirds">
        <div style="white-space: pre-wrap; text-align: left; border: 1px solid; word-break: break-all; width: 680px;">
          <div class="cloumns">
            <div class="cloumn">
              {{ text }}
              <button class="button" @click="showFullText = !showFullText"> Read {{ readMoreText }}...</button>
            </div>
          </div>
          <div class="cloumns">
            <div class="cloumn">

            </div>
          </div>
        </div>
      </div>
      <div class="column">
        <div class="columns" >
          <label for="" style="padding-bottom: 15px;">Select model for prediction</label>
        </div>
        <div class="columns">
          <div class="select" style="margin-left: 25px;">
          <select>
            <option option>Classification</option>
            <option>Regression</option>
          </select>
          <br>
          <br>
          <div class="button is-success" @click="tograph">submit</div>
        </div>
        </div>
      </div>
    </div>

    <div class="modal" :style="{ 'display': modalstatus }">
      <div class="modal-background"></div>
      <div class="modal-card">
        <header class="modal-card-head">
          <p class="modal-card-title">Create post</p>
          <button class="delete" aria-label="close" @click="modalstatus = 'none'"></button>
        </header>
        <section class="modal-card-body">
          <textarea class="textarea" placeholder="e.g. Hello world" v-model="text"></textarea>
          <br>
          <div class="input">Add to your post
            <div class="image-upload" style="margin-left: 250px;">
              <label for="file-input">
                <img
                  src="https://static.xx.fbcdn.net/rsrc.php/v3/yC/r/a6OjkIIE-R0.png?_nc_eui2=AeEROHNgEIeAgmIkEz0Cir2CfK5Z1qDG7FV8rlnWoMbsVRBub7G9sWD6iVVh0J5TdGt_1i-OnVJ_PSthRF33l8_A"
                  style=" height: 24px; cursor: pointer;" />
              </label>
              <input id="file-input" type="file" style="display: none" v-on:change="onFileChange" />
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
export default {
  data () {
    return {
      createImage: '',
      showFullText: false,
      text: '',
      modalstatus: 'inline'
    }
  },
  methods: {
    tograph () {
      this.$router.push({ name: 'graph' })
    },
    onFileChange (e) {
      var files = e.target.files || e.dataTransfer.files
      console.log(files)
      if (!files.length) {
        console.log('no file')
      } else {
        this.createImage(files[0])
      }
    },
    submitpost () {
      this.modalstatus = 'none'
      console.log(this.text)
    }
  },
  computed: {
    displayedText () {
      if (!this.showFullText) {
        return this.text.slice(0, 10)
      } else {
        return this.text
      }
    },
    readMoreText () {
      return this.showFullText ? 'less' : 'more'
    }
  }
}
</script>

<style>
#truncate {
  overflow: hidden;
  text-overflow: "see more";
  display: -webkit-box;
  -webkit-line-clamp: 2;
  /* number of lines to show */
  line-clamp: 2;
  -webkit-box-orient: vertical;
}</style>
