<template>
  <div class="container " style="background-color: white; max-width: 97%; height: 100%; border-radius: 10px;">
    <div class="columns" style="height: 100%;">
      <div class="column checkdis" style="height: 100%; background-color: #2d48bd; max-width: 5%; border-top-left-radius: 10px;">
      </div>
      <div class="column">
        <div class="columns">
          <div class="column is-9">
          </div>
          <div class="column">
            <div class="columns">
              <div class="column">
                <img style="width: 200px;" src="../assets/logokmitl.png" alt="">
              </div>
              <div class="column" style="padding-right: 50px;">
                <img style="width: 300px;" src="../assets/itkimitl.png" alt="">
              </div>
            </div>
          </div>
        </div>
        <div class="columns" style="height: 90%;">
          <div class="column is-7">
            <div style="background-color: whitesmoke; padding: 50px;">
              <div class="columns">
                <div class="column">
                  <p style="text-align: left;">กรอกผู้ติดตามเพจ</p>
                  <p style="color: red; text-align: left;">(ถ้าไม่ได้ใช้เพจในการโพสกรอก 0)</p>
                  <input class="input" v-model="pagefollow" type="number"/>
                  <br>
                  <br>
                  <p style="text-align: left;">กรอกยอดไลค์เพจ</p>
                  <p style="color: red; text-align: left;">(ถ้าไม่ได้ใช้เพจในการโพสกรอก 0)</p>
                  <input class="input" v-model="pagelike"  type="number"/>
                </div>
                <div class="column" style="margin-top: 24px;">
                  <p style="text-align: left;">กรอกวันที่ต้องการโพส</p>
                  <input type="datetime-local" class="input" v-model="dateforpost">
                  <br>
                  <br>
                  <p style="text-align: left;">กรอกแท็กของโพส</p>
                  <p style="color: red; text-align: left;">(ตัวอย่าง #GlicoIceTH, #GiantConeCrown)</p>
                  <input  class="input" v-model="tag">
                </div>
              </div>
            </div>
            <br>
            <div style="background-color: whitesmoke; padding: 50px;">
              <div class="columns">
                <div class="column is-2">
                  <img src="../assets/user.png" alt="" style="width:100px ;">
                </div>
                <div class="column">
                  <section style="max-width: 90vh;">
                    <textarea v-if="!distextarae" class="textarea" v-model="text"></textarea>
                    <textarea v-else class="textarea" style="border: 1px solid #e2e2e2;"
                      :disabled="distextarae"></textarea>
                    <br>
                  </section>
                </div>
              </div>
              <div class="columns">
                <div class="column is-2"></div>
                <div class="column" style="margin-left: 12px;">
                  <div class="input columns" :disabled="distextarae" style="border: 1px solid #e2e2e2;"><label for="">
                        Add to your post</label>
                        <div class="column is-4"></div>
                        <div class="column">
                          <div class="image-upload">
                            <label for="file-input">
                              <img
                                src="https://static.xx.fbcdn.net/rsrc.php/v3/yC/r/a6OjkIIE-R0.png?_nc_eui2=AeEROHNgEIeAgmIkEz0Cir2CfK5Z1qDG7FV8rlnWoMbsVRBub7G9sWD6iVVh0J5TdGt_1i-OnVJ_PSthRF33l8_A"
                                style="margin-top: 6px;  height: 24px; cursor: pointer; max-width: 50px;" />
                            </label>
                            <input id="file-input" type="file" style="display: none" v-on:change="upload"
                              :disabled="distextarae" />
                          </div>
                        </div>
                        <div class="column">
                          <img
                            src="https://static.xx.fbcdn.net/rsrc.php/v3/yC/r/MqTJr_DM3Jg.png?_nc_eui2=AeFJI-Af9QMlz4__VIPfsowRt8fz8ZW9Ebm3x_Pxlb0RuY34momAG_iIJru00iVh9P572xJfSkS6MOm0sIxYoBQF"
                            style="margin-top: 6px; height: 24px; max-width: 150%; cursor: pointer;" />
                        </div>
                        <div class="column">
                          <img
                            src="https://static.xx.fbcdn.net/rsrc.php/v3/yk/r/yMDS19UDsWe.png?_nc_eui2=AeEi2s3rGXvlZU57UTWU6R9dv2_PAiqLvPK_b88CKou88twurSMqHa2w99_rqhQsXSMFCRrWJAUhQtK_N-KKcBhB"
                            style=" margin-top: 6px;  height: 24px; max-width: 150%; cursor: pointer;" />
                        </div>
                        <div class="column">
                          <img
                            src="https://static.xx.fbcdn.net/rsrc.php/v3/yy/r/uywzfiZad5N.png?_nc_eui2=AeGl2qErAVlTazE4NIAAtE-SzQ4v13Ks4CbNDi_XcqzgJkhrtx7REu1TQw2_F8CIws13tK5CbD6e4h1tNG2gtGYL"
                            style="margin-top: 6px;  height: 24px; max-width: 150%; cursor: pointer;" />
                        </div>
                        <div class="column">
                          <img
                            src="https://static.xx.fbcdn.net/rsrc.php/v3/yY/r/CenxFlWjtJO.png?_nc_eui2=AeHNEdymbgD-8uBWR6mmjZ8Kz4XXObU63WDPhdc5tTrdYOq3gKzMywwqCKKeW8fTJ_YGuqtay6hQSitG7v1S5BGz"
                            style="margin-top: 6px; height: 24px; max-width: 150%; cursor: pointer;" />
                        </div>
                        <div class="column">
                          <div class="wrapper">
                            <emoji-picker @emoji="append" :search="search">
                              <button class="emoji-invoker" slot="emoji-invoker"
                                slot-scope="{ events: { click: clickEvent } }" @click.stop="clickEvent">
                                <svg viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg"
                                  class="h-6 w-6 fill-current text-grey">
                                  <path d="M0 0h24v24H0z" fill="none" />
                                  <path
                                    d="M11.99 2C6.47 2 2 6.48 2 12s4.47 10 9.99 10C17.52 22 22 17.52 22 12S17.52 2 11.99 2zM12 20c-4.42 0-8-3.58-8-8s3.58-8 8-8 8 3.58 8 8-3.58 8-8 8zm3.5-9c.83 0 1.5-.67 1.5-1.5S16.33 8 15.5 8 14 8.67 14 9.5s.67 1.5 1.5 1.5zm-7 0c.83 0 1.5-.67 1.5-1.5S9.33 8 8.5 8 7 8.67 7 9.5 7.67 11 8.5 11zm3.5 6.5c2.33 0 4.31-1.46 5.11-3.5H6.89c.8 2.04 2.78 3.5 5.11 3.5z" />
                                </svg>
                              </button>
                              <div slot="emoji-picker" slot-scope="{ emojis, insert, display }">
                                <div class="emoji-picker" :style="{ top: display.y + 'px', left: display.x + 'px' }">
                                  <div class="emoji-picker__search">
                                    <input type="text" v-model="search" v-focus>
                                  </div>
                                  <div>
                                    <div v-for="(emojiGroup, category) in emojis" :key="category">
                                      <h5>{{ category }}</h5>
                                      <div class="emojis">
                                        <span v-for="(emoji, emojiName) in emojiGroup" :key="emojiName"
                                          @click="insert(emoji)" :title="emojiName">{{ emoji }}</span>
                                      </div>
                                    </div>
                                  </div>
                                </div>
                              </div>
                            </emoji-picker>
                          </div>
                        </div>
                    </div>
                </div>
              </div>
            </div>
            <div class="columns" style="margin-top: 11px;">
              <div class="column">
              </div>
              <div class="column">
                <div class="columns">
                  <div class="column">
                  </div>
                  <div class="column">
                  </div>
                  <div class="column">
                    <div class="button is-danger" @click="clear">Clear</div>
                  </div>
                  <div class="column">
                    <div class="button is-info" @click="submitpost">Post</div>
                  </div>
                </div>
              </div>
            </div>
            <div style="width: 100%; border: 1px solid  #d8d8d8; padding: 50px; border-radius: 5px;"
              v-if="displaytextarae">
              <div class="columns">
                <div class="columns" style="padding-left: 50px;">
                  <div class="column">
                    <img style="width: 70px;" src="../assets/user.png" alt="">
                  </div>
                  <div class="column" style="margin-top: 20px;">
                    <div style="white-space: pre-wrap; text-align: left;  word-break: break-all; width: 700px;">
                      <div class="cloumns">
                        <div class="cloumn">
                          {{ text }}
                          <a @click="showFullText" v-if=showreadmore> Read {{ textreadmore }}...</a>
                        </div>
                      </div>
                      <div class="cloumns">
                        <div class="cloumn">

                        </div>
                      </div>
                    </div>
                    <div class="cloumns">
                      <img :src='url' alt="" style="width: 100%;">
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
          <div class="column is-1" style="border-left: 1px solid #d8d8d8; height: 105%;"></div>
          <div class="column" style="padding-right: 100px;">
            <div class="columns">
              <b for="" style="padding-bottom: 15px; font-size: 20px; color: #af39d3;">Select model for prediction</b>
            </div>
            <div class="columns check1">
              <label class="checkbox">
                <input type="checkbox" value="regression" v-model="type">
                Regression
              </label>
            </div>
            <div class="columns check1">
              <label class="checkbox">
                <input type="checkbox" value="classification" v-model="type">
                Classification
              </label>
            </div>
            <div class="columns check1">
              <label class="checkbox">
                <input type="checkbox" value="ranking" v-model="type">
                Ranking
              </label>
            </div>
            <!-- <div class="columns check1">
              <label class="checkbox">
                <input type="checkbox">
                classification 1
              </label>
            </div>
            <div class="columns check1">
              <label class="checkbox">
                <input type="checkbox">
                classification 2
              </label>
            </div> -->
            <br>
            <div class="columns">
              <div class="button is-success" @click="tograph">submit</div>
            </div>
          </div>
        </div>
      </div>
      <!-- <img  style="height: 1500px;" src="../assets/logo.png" alt=""> -->
    </div>
  </div>
</template>

<script>
import EmojiPicker from 'vue-emoji-picker'
import { storage } from '../firebase'
import { ref, uploadBytes, getDownloadURL } from 'firebase/storage'
export default {
  components: {
    EmojiPicker
  },
  data () {
    return {
      input: '',
      search: '',
      createImage: '',
      text: '',
      modalstatus: 'none',
      showreadmore: false,
      displaytextarae: false,
      textreadmore: '',
      mocktext: '',
      statusmoretext: false,
      imgname: '',
      distextarae: false,
      url: '',
      pagefollow: 0,
      pagelike: 0,
      dateforpost: '',
      tag: '',
      type: [],
      textforsend: ''
    }
  },
  methods: {
    clear () {
      this.text = ''
      this.displaytextarae = false
      this.distextarae = false
    },
    append (emoji) {
      this.text += emoji
    },
    tograph () {
      if (this.pagefollow === '') {
        alert('กรอกจำนวนผู้ติดตามเพจ')
      } else if (this.pagelike === '') {
        alert('กรอกจำนวนผู้กดถูกใจเพจ')
      } else if (this.text === '') {
        alert('กรอกข้อมูลที่ต้องการโพส')
      } else if (this.dateforpost === '') {
        alert('กรอกวันที่ที่ต้องการโพส')
      } else {
        this.$router.push({ name: 'graph', params: { message_tags: this.tag.split(','), pl: this.pagelike, pg: this.pagefollow, msg: this.textforsend, created_time: this.dateforpost + ':04+0000', type: this.type } })
      }
    },
    upload (e) {
      var files = e.target.files || e.dataTransfer.files
      if (!files.length) {
        console.log('no file')
      } else {
        this.createImage = files[0]
        const storageRef = ref(storage, 'folder/' + this.createImage.name)
        this.imgname = 'folder/' + files[0].name
        console.log(this.imgname)
        uploadBytes(storageRef, this.createImage).then((snapshot) => {
          console.log('uploaded')
        })
      }
    },
    submitpost () {
      this.distextarae = true
      this.textforsend = this.text
      this.mocktext = this.text + this.tag
      this.modalstatus = 'none'
      this.displaytextarae = true
      if (this.text.length >= 20) {
        this.text = this.text.slice(0, 20)
        this.showreadmore = true
        this.textreadmore = 'more'
      }
      if (this.imgname !== '') {
        getDownloadURL(ref(storage, this.imgname)).then(
          (res) => {
            this.url = res
            console.log(this.url)
          }
        )
      }
      console.log(this.type)
    },
    showFullText () {
      this.statusmoretext = !this.statusmoretext
      if (this.statusmoretext) {
        this.text = this.mocktext
      }
      if (this.statusmoretext === false) {
        this.textreadmore = 'less'
        this.text = this.text.slice(0, 20)
      }
    }
  },
  directives: {
    focus: {
      inserted (el) {
        el.focus()
      }
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
}

.check1 {
  border: 1px solid #ccc;
  padding: 10px;
  margin: 0 0 10px;
  display: block;
}

.check1:hover {
  background: #eee;
  cursor: pointer;
}

/* Tailwind CSS-styled demo is available here: https://codepen.io/DCzajkowski/pen/Brxvzj */
.regular-input {
  padding: 0.5rem 1rem;
  border-radius: 3px;
  border: 1px solid #ccc;
  width: 20rem;
  height: 12rem;
  outline: none;
}

.regular-input:focus {
  box-shadow: 0 0 0 3px rgba(66, 153, 225, .5);
}

.emoji-invoker {
  position: absolute;
  top: 0.5rem;
  right: 0.5rem;
  width: 1.5rem;
  height: 1.5rem;
  border-radius: 50%;
  cursor: pointer;
  transition: all 0.2s;
  padding: 0;
  background: transparent;
  border: 0;
}

.emoji-invoker:hover {
  transform: scale(1.1);
}

.emoji-invoker>svg {
  fill: #b1c6d0;
}

.emoji-picker {
  position: fixed;
  z-index: 1;
  font-family: Montserrat;
  border: 1px solid #ccc;
  width: 15rem;
  height: 20rem;
  overflow: scroll;
  padding: 1rem;
  box-sizing: border-box;
  border-radius: 0.5rem;
  background: #fff;
  box-shadow: 1px 1px 8px #c7dbe6;
}

.emoji-picker__search {
  display: flex;
}

.emoji-picker__search>input {
  flex: 1;
  border-radius: 10rem;
  border: 1px solid #ccc;
  padding: 0.5rem 1rem;
  outline: none;
}

.emoji-picker h5 {
  margin-bottom: 0;
  color: #b1b1b1;
  text-transform: uppercase;
  font-size: 0.8rem;
  cursor: default;
}

.emoji-picker .emojis {
  display: flex;
  flex-wrap: wrap;
  justify-content: space-between;
}

.emoji-picker .emojis:after {
  content: "";
  flex: auto;
}

.emoji-picker .emojis span {
  padding: 0.2rem;
  cursor: pointer;
  border-radius: 5px;
}

@media screen and (max-width: 800px) {
  .checkdis {
    display: none;
  }
}

.emoji-picker .emojis span:hover {
  background: #ececec;
  cursor: pointer;
}</style>
