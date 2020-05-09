module Types.Flags exposing (Flags)

import Types.Course as Course


type alias Flags =
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
    , courses : List Course.Course
    }
