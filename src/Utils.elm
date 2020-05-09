module Utils exposing (genericTitle, viewLink)

import Html exposing (..)
import Html.Attributes exposing (..)



{-
   Miscellaneous functions and helpers
-}
-- Title that is appended to every page.


genericTitle =
    " - JLH Languages"


viewLink : String -> Html msg
viewLink path =
    li [] [ a [ href path ] [ text path ] ]
