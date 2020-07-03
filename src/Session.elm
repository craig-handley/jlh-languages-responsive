module Session exposing (Session, init)

import Types.Course
import Types.Flags


type alias Session =
    { images :
        { logo : String
        , banner : String
        , about_01 : String
        , fliss : String
        , tutoring_01 : String
        , tutoring_02 : String
        , schools_french : String
        , schools_spanish : String
        , events_01 : String
        , schools_french_01 : String
        , schools_french_02 : String
        , schools_french_03 : String
        , schools_french_04 : String
        , schools_french_05 : String
        , schools_spanish_01 : String
        , schools_spanish_02 : String
        , schools_spanish_03 : String
        , schools_spanish_04 : String
        , testimonials_01 : String
        , testimonials_02 : String
        , testimonials_03 : String
        , testimonials_04 : String
        , gift_voucher_01 : String
        , gallery_01 : String
        , gallery_02 : String
        , gallery_03 : String
        , gallery_04 : String
        , gallery_05 : String
        , gallery_06 : String
        , gallery_07 : String
        , gallery_08 : String
        , gallery_09 : String
        , gallery_10 : String
        , gallery_11 : String
        , gallery_12 : String
        , gallery_13 : String
        , gallery_14 : String
        , gallery_15 : String
        , gallery_16 : String
        , gallery_17 : String
        , gallery_18 : String
        , gallery_19 : String
        , gallery_20 : String
        , gallery_21 : String
        , gallery_22 : String
        , gallery_23 : String
        , gallery_24 : String
        , gallery_25 : String
        , gallery_26 : String
        , gallery_27 : String
        , gallery_28 : String
        , gallery_29 : String
        , gallery_30 : String
        , gallery_2019_11_01 : String
        , gallery_2019_12_01 : String
        , gallery_2019_12_02 : String
        , gallery_2019_12_03 : String
        , gallery_2019_12_04 : String
        , gallery_2019_12_05 : String
        , gallery_2019_12_06 : String
        , gallery_2020_01_01 : String
        , gallery_2020_01_02 : String
        , gallery_2020_01_03 : String
        , gallery_2020_01_04 : String
        , gallery_2020_01_05 : String
        , gallery_2020_01_06 : String
        , gallery_2020_01_07 : String
        , gallery_2020_03_01 : String
        , gallery_2020_03_02 : String
        , adult_courses_01 : String
        , pic01 : String
        , pic02 : String
        , pic03 : String
        , pic04 : String
        , pic05 : String
        , pic06 : String
        , french_flyer : String
        , spanish_flyer : String
        , general_blurb : String
        }
    , courses : List Types.Course.Course
    }


init : Types.Flags.Flags -> Session
init flags =
    Session flags.images flags.courses
