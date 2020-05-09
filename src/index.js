import './css/main.css';

import { Elm } from './Main.elm';
import * as serviceWorker from './serviceWorker';
import logo from './img/jlh-languages.png';
import banner from './img/banner.jpg';
import about_01 from './img/about_01.jpg';
import courses from './json/courses.json'

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
