import './css/main.css';

import { Elm } from './Main.elm';
import * as serviceWorker from './serviceWorker';
import logo from './img/jlh-languages.png';
import banner from './img/banner.jpg';
import about_01 from './img/about_01.jpg';
import courses from './json/courses.json'
import tutoring_01 from './img/tutoring_01.png';
import tutoring_02 from './img/tutoring_02.png';
import schools_french from './img/schools_french.jpg';
import schools_spanish from './img/schools_spanish.jpg';
import events_01 from './img/events_01.png';
import schools_french_01 from './img/schools_french_01.jpg';
import schools_french_02 from './img/schools_french_02.png';
import schools_french_03 from './img/schools_french_03.png';
import schools_french_04 from './img/schools_french_04.jpg';
import schools_french_05 from './img/schools_french_05.jpg';
import schools_spanish_01 from './img/schools_spanish_01.jpg';
import schools_spanish_02 from './img/schools_spanish_02.png';
import schools_spanish_03 from './img/schools_spanish_03.jpg';
import schools_spanish_04 from './img/schools_spanish_04.jpg';
import testimonials_01 from './img/testimonials_01.png';
import testimonials_02 from './img/testimonials_02.jpg';
import testimonials_03 from './img/testimonials_03.png';
import testimonials_04 from './img/testimonials_04.png';
import gift_voucher_01 from './img/gift_voucher_01.png';

import pic01 from './img/pic01.jpg';
import pic02 from './img/pic02.jpg';
import pic03 from './img/pic03.jpg';
import pic04 from './img/pic04.jpg';
import pic05 from './img/pic05.jpg';
import pic06 from './img/pic06.jpg';

Elm.Main.init({
  flags: generateFlags(),
  node: document.getElementById('root')
});

function generateFlags() {
  return {
    images: {
      logo,
      banner,
      about_01,
      tutoring_01,
      tutoring_02,
      schools_french,
      schools_spanish,
      events_01,
      schools_french_01,
      schools_french_02,
      schools_french_03,
      schools_french_04,
      schools_french_05,
      schools_spanish_01,
      schools_spanish_02,
      schools_spanish_03,
      schools_spanish_04,
      testimonials_01,
      testimonials_02,
      testimonials_03,
      testimonials_04,
      gift_voucher_01,

      pic01,
      pic02,
      pic03,
      pic04,
      pic05,
      pic06,
    },
    courses
  };
}
// If you want your app to work offline and load faster, you can change
// unregister() to register() below. Note this comes with some pitfalls.
// Learn more about service workers: https://bit.ly/CRA-PWA
serviceWorker.unregister();

