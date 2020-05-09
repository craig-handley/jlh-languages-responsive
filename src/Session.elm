module Session exposing (Session, init)

import Types.Course
import Types.Flags


type alias Session =
    { images :
        { logo : String
        , banner : String
        , about_01 : String
        , pic01 : String
        , pic02 : String
        , pic03 : String
        , pic04 : String
        , pic05 : String
        , pic06 : String
        }
    , courses : List Types.Course.Course
    }


init : Types.Flags.Flags -> Session
init flags =
    Session flags.images flags.courses
