import { initializeApp } from 'firebase/app'
import { getAnalytics } from 'firebase/analytics'
import { getStorage } from 'firebase/storage'
const firebaseConfig = {
  apiKey: 'AIzaSyB9Ptf1byBalNWIat6vhDDvlm-4kfkyzws',
  authDomain: 'prediction-of-social.firebaseapp.com',
  projectId: 'prediction-of-social',
  storageBucket: 'prediction-of-social.appspot.com',
  messagingSenderId: '121172271794',
  appId: '1:121172271794:web:a949c2f987cec3cbdb1fab',
  measurementId: 'G-DB7G5L2FST'
}
const app = initializeApp(firebaseConfig)
getAnalytics(app)
const storage = getStorage(app)
export { storage }
