import "./css/main.css";

import { Elm } from "./Main.elm";
import * as serviceWorker from "./serviceWorker";
import logo from "./img/jlh-languages.png";
import banner from "./img/banner.jpg";
import about_01 from "./img/about_01.jpg";
import fliss from "./img/fliss.jpg";
import courses from "./json/courses.json";
import tutoring_01 from "./img/tutoring_01.png";
import tutoring_02 from "./img/tutoring_02.png";
import schools_french from "./img/schools_french.png";
import schools_spanish from "./img/schools_spanish.jpg";
import events_01 from "./img/events_01.png";
import schools_french_01 from "./img/schools_french_01.jpg";
import schools_french_02 from "./img/schools_french_02.png";
import schools_french_03 from "./img/schools_french_03.png";
import schools_french_04 from "./img/schools_french_04.jpg";
import schools_french_05 from "./img/schools_french_05.jpg";
import schools_spanish_01 from "./img/schools_spanish_01.jpg";
import schools_spanish_02 from "./img/schools_spanish_02.png";
import schools_spanish_03 from "./img/schools_spanish_03.jpg";
import schools_spanish_04 from "./img/schools_spanish_04.jpg";
import testimonials_01 from "./img/testimonials_01.png";
import testimonials_02 from "./img/testimonials_02.jpg";
import testimonials_03 from "./img/testimonials_03.png";
import testimonials_04 from "./img/testimonials_04.png";
import gift_voucher_01 from "./img/gift_voucher_01.png";
import gallery_poems_01 from "./img/gallery_poems_01.png";
import gallery_poems_02 from "./img/gallery_poems_02.png";
import gallery_poems_03 from "./img/gallery_poems_03.png";
import gallery_poems_04 from "./img/gallery_poems_04.png";
import gallery_poems_04_01 from "./img/gallery_poems_04_01.png";
import gallery_poems_04_02 from "./img/gallery_poems_04_02.png";
import gallery_poems_05 from "./img/gallery_poems_05.png";
import gallery_poems_06 from "./img/gallery_poems_06.png";
import gallery_poems_07 from "./img/gallery_poems_07.png";
import gallery_poems_08 from "./img/gallery_poems_08.png";
import gallery_poems_09 from "./img/gallery_poems_09.png";
import gallery_poems_10 from "./img/gallery_poems_10.jpg";
import gallery_poems_11 from "./img/gallery_poems_11.jpg";
import gallery_poems_12 from "./img/gallery_poems_12.jpg";
import gallery_poems_13 from "./img/gallery_poems_13.png";
import gallery_01 from "./img/gallery_01.jpg";
import gallery_02 from "./img/gallery_02.jpg";
import gallery_03 from "./img/gallery_03.jpg";
import gallery_04 from "./img/gallery_04.jpg";
import gallery_05 from "./img/gallery_05.jpg";
import gallery_06 from "./img/gallery_06.png";
import gallery_07 from "./img/gallery_07.jpg";
import gallery_08 from "./img/gallery_08.jpg";
import gallery_09 from "./img/gallery_09.jpg";
import gallery_10 from "./img/gallery_10.jpg";
import gallery_11 from "./img/gallery_11.jpg";
import gallery_12 from "./img/gallery_12.png";
import gallery_13 from "./img/gallery_13.png";
import gallery_14 from "./img/gallery_14.png";
import gallery_15 from "./img/gallery_15.png";
import gallery_16 from "./img/gallery_16.jpg";
import gallery_17 from "./img/gallery_17.jpg";
import gallery_18 from "./img/gallery_18.jpg";
import gallery_19 from "./img/gallery_19.jpg";
import gallery_20 from "./img/gallery_20.png";
import gallery_21 from "./img/gallery_21.png";
import gallery_22 from "./img/gallery_22.png";
import gallery_23 from "./img/gallery_23.png";
import gallery_24 from "./img/gallery_24.jpg";
import gallery_25 from "./img/gallery_25.png";
import gallery_26 from "./img/gallery_26.jpg";
import gallery_27 from "./img/gallery_27.jpg";
import gallery_28 from "./img/gallery_28.jpg";
import gallery_29 from "./img/gallery_29.jpg";
import gallery_30 from "./img/gallery_30.jpg";
import gallery_2019_11_01 from "./img/gallery_2019_11_01.jpg";
import gallery_2019_12_01 from "./img/gallery_2019_12_01.jpg";
import gallery_2019_12_02 from "./img/gallery_2019_12_02.jpg";
import gallery_2019_12_03 from "./img/gallery_2019_12_03.jpg";
import gallery_2019_12_04 from "./img/gallery_2019_12_04.jpg";
import gallery_2019_12_05 from "./img/gallery_2019_12_05.jpg";
import gallery_2019_12_06 from "./img/gallery_2019_12_06.jpg";
import gallery_2020_01_01 from "./img/gallery_2020_01_01.jpg";
import gallery_2020_01_02 from "./img/gallery_2020_01_02.jpg";
import gallery_2020_01_03 from "./img/gallery_2020_01_03.jpg";
import gallery_2020_01_04 from "./img/gallery_2020_01_04.jpg";
import gallery_2020_01_05 from "./img/gallery_2020_01_05.jpg";
import gallery_2020_01_06 from "./img/gallery_2020_01_06.jpg";
import gallery_2020_01_07 from "./img/gallery_2020_01_07.jpg";
import gallery_2020_03_01 from "./img/gallery_2020_03_01.png";
import gallery_2020_03_02 from "./img/gallery_2020_03_02.jpg";
import adult_courses_01 from "./img/adult_courses_01.jpg";

import pic01 from "./img/pic01.jpg";
import pic02 from "./img/pic02.jpg";
import pic03 from "./img/pic03.jpg";
import pic04 from "./img/pic04.jpg";
import pic05 from "./img/pic05.jpg";
import pic06 from "./img/pic06.jpg";

import french_flyer from "./img/french_flyer.png";
import spanish_flyer from "./img/spanish_flyer.png";
import general_blurb from "./img/general_blurb.png";

import jh_tv from "./img/jlh_tv.mp4";

Elm.Main.init({
  flags: generateFlags(),
  node: document.getElementById("root"),
});

function generateFlags() {
  return {
    images: {
      logo,
      banner,
      about_01,
      fliss,
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
      gallery_poems_01,
      gallery_poems_02,
      gallery_poems_03,
      gallery_poems_04,
      gallery_poems_04_01,
      gallery_poems_04_02,
      gallery_poems_05,
      gallery_poems_06,
      gallery_poems_07,
      gallery_poems_08,
      gallery_poems_09,
      gallery_poems_10,
      gallery_poems_11,
      gallery_poems_12,
      gallery_poems_13,
      gallery_01,
      gallery_02,
      gallery_03,
      gallery_04,
      gallery_05,
      gallery_06,
      gallery_07,
      gallery_08,
      gallery_09,
      gallery_10,
      gallery_11,
      gallery_12,
      gallery_13,
      gallery_14,
      gallery_15,
      gallery_16,
      gallery_17,
      gallery_18,
      gallery_19,
      gallery_20,
      gallery_21,
      gallery_22,
      gallery_23,
      gallery_24,
      gallery_25,
      gallery_26,
      gallery_27,
      gallery_28,
      gallery_29,
      gallery_30,
      gallery_2019_11_01,
      gallery_2019_12_01,
      gallery_2019_12_02,
      gallery_2019_12_03,
      gallery_2019_12_04,
      gallery_2019_12_05,
      gallery_2019_12_06,
      gallery_2020_01_01,
      gallery_2020_01_02,
      gallery_2020_01_03,
      gallery_2020_01_04,
      gallery_2020_01_05,
      gallery_2020_01_06,
      gallery_2020_01_07,
      gallery_2020_03_01,
      gallery_2020_03_02,
      adult_courses_01,

      pic01,
      pic02,
      pic03,
      pic04,
      pic05,
      pic06,

      french_flyer,
      spanish_flyer,
      general_blurb,

      jh_tv,
    },
    courses,
  };
}
// If you want your app to work offline and load faster, you can change
// unregister() to register() below. Note this comes with some pitfalls.
// Learn more about service workers: https://bit.ly/CRA-PWA
serviceWorker.unregister();
