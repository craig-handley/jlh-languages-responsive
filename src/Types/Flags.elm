module Types.Flags exposing (Flags)

import Types.Course as Course


type alias Flags =
    { images :
        { logo : String
        , banner : String
        , about_01 : String
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
        , pic01 : String
        , pic02 : String
        , pic03 : String
        , pic04 : String
        , pic05 : String
        , pic06 : String
        }
    , courses : List Course.Course
    }
