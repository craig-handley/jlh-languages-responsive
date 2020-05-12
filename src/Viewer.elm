module Viewer exposing (Details, notFound, view)

import Browser
import Html exposing (..)
import Html.Attributes exposing (..)
import Session
import Url.Builder
import Utils



{-
   This module builds the view. Every individual page's view function returns a Viewer.Details,
   which is used to generate a Browser.Document msg in this module
-}


type alias Details msg =
    { title : String
    , body : List (Html msg)
    , baseClass : String
    }



-- VIEW


view : Session.Session -> (a -> msg) -> Details a -> Browser.Document msg
view session msg details =
    { title = details.title ++ Utils.genericTitle
    , body =
        [ div [ id "top", class details.baseClass ]
            [ viewHeader session
            , Html.map msg <| div [] details.body
            , viewFooter session
            ]
        ]
    }


viewHeader : Session.Session -> Html msg
viewHeader session =
    header [ id "header" ]
        [ div [ class "inner" ]
            [ nav [ id "nav" ]
                [ a [ href "/" ] [ text "Home" ]
                , a [ href "/adult-courses" ] [ text "Adult Courses" ]
                , a [ href "/tutoring" ] [ text "Tutoring" ]
                , a [ href "/schools" ] [ text "Schools" ]
                , a [ href "/events" ] [ text "Events" ]
                , a [ href "/about" ] [ text "About" ]
                , a [ href "/testimonials" ] [ text "Testimonials" ]
                , a [ href "/gift-vouchers" ] [ text "Gift Vouchers" ]
                , a [ href "/privacy" ] [ text "Privacy" ]
                , a [ href "/gallery" ] [ text "Gallery" ]
                ]
            , a [ href "#navPanel", class "navPanelToggle" ]
                [ span [ class "fas fa-bars" ] []
                ]
            ]
        ]


viewFooter : Session.Session -> Html msg
viewFooter session =
    footer [ id "footer" ]
        [ div [ class "inner" ]
            [ div [ class "flex" ]
                [ div [ class "copyright" ]
                    [ a [ rel "license", href "http://creativecommons.org/licenses/by/3.0/" ]
                        [ img [ alt "Creative Commons License", style "border-width" "0", src "https://i.creativecommons.org/l/by/3.0/80x15.png" ] []
                        ]
                    , br [] []
                    , div []
                        [ text "This work is licensed under a "
                        , a [ rel "license", href "http://creativecommons.org/licenses/by/3.0/" ]
                            [ text "Creative Commons Attribution 3.0 Unported License"
                            ]
                        ]
                    ]
                , ul [ class "icons" ]
                    [ li [] [ a [ href "https://www.facebook.com/JLHLanguages/", class "icon fab fa-facebook-square", target "_blank" ] [ span [ class "footer-text" ] [ text "Find us on Facebook" ] ] ]
                    , li [] [ a [ href "mailto:jane@jlhlanguages.org", class "icon fas fa-envelope", target "_blank" ] [ span [ class "footer-text" ] [ text "jane@jlhlanguages.org" ] ] ]
                    , li [ class "icon fas fa-phone-square", style "color" "#5385c1" ] [ span [ class "footer-text" ] [ text "07793 556020" ] ]
                    ]
                ]
            ]
        ]



-- 404 PAGE (NotFound)


notFound : Details msg
notFound =
    { title = "Page Not Found"
    , body =
        [ section [ class "wrapper special" ]
            [ div [ class "inner" ]
                [ div [ class "not-found" ]
                    [ div [ style "font-size" "12em" ] [ text "404" ]
                    , h1 [ style "font-size" "3.5em" ] [ text "Page Not Found" ]
                    , h3 [ style "font-size" "1.5em" ]
                        [ text "Oops - Looks like you got lost or clicked a bad link! "
                        , a [ href "/", style "text-decoration" "underline" ] [ text "Click here " ]
                        , text "to go back to the home page."
                        ]
                    ]
                ]
            ]
        ]
    , baseClass = "subpage"
    }



-- STYLING HELPERS (lazy, hard-coded styling)


headerHeight =
    60


footerHeight =
    60
