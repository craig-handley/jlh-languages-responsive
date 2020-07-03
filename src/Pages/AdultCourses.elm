module Pages.AdultCourses exposing (Model, Msg(..), init, update, view)

import Html exposing (..)
import Html.Attributes exposing (..)
import Session
import Viewer



-- MODEL


type alias Model =
    { session : Session.Session
    }



-- INIT


init : Session.Session -> ( Model, Cmd Msg )
init session =
    ( Model session, Cmd.none )



-- UPDATE


type Msg
    = NoOp


update : Msg -> Model -> ( Model, Cmd Msg )
update msg model =
    case msg of
        NoOp ->
            ( model, Cmd.none )



-- VIEW


view : Model -> Viewer.Details Msg
view model =
    { title = toTitle
    , body =
        [ section [ id "three", class "wrapper special" ]
            [ div [ class "inner" ]
                [ header [ class "align-center" ]
                    [ h2 [] [ text "Adult Courses" ]

                    --, p [] [ text "Aliquam erat volutpat nam dui " ]
                    ]
                , div [ class "flex flex-2" ]
                    [ article []
                        [ header []
                            [ h3 []
                                [ text "French Adult Courses"
                                ]
                            ]
                        , footer []
                            [ a [ href "/adult-courses-french", class "button special" ]
                                [ text "More" ]
                            ]
                        , br [] []
                        , div [ class "image fit with-border" ]
                            [ img [ src model.session.images.french_flyer ] []
                            ]
                        ]
                    , article []
                        [ header []
                            [ h3 []
                                [ text "Spanish Adult Courses"
                                ]
                            ]
                        , footer []
                            [ a [ href "/adult-courses-spanish", class "button special" ]
                                [ text "More" ]
                            ]
                        , br [] []
                        , div [ class "image fit with-border" ]
                            [ img [ src model.session.images.spanish_flyer ] []
                            ]
                        ]
                    ]
                , div [ class "inner" ]
                    [ article []
                        [ div [ class "image fit smaller with-border" ]
                            [ img [ src model.session.images.general_blurb ] []
                            ]
                        ]
                    ]
                ]
            ]
        ]
    , baseClass = "subpage"
    }



-- HELPERS


toTitle : String
toTitle =
    "Adult Courses Page"
