module Pages.Schools exposing (Model, Msg(..), init, update, view)

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
                    [ h2 [] [ text "Restaurant Experiences For Schools" ]

                    --, p [] [ text "Aliquam erat volutpat nam dui " ]
                    ]
                , div [ class "flex flex-2" ]
                    [ article []
                        [ header []
                            [ h3 []
                                [ text "French Experience"
                                ]
                            ]
                        , div [ class "image fit with-border" ]
                            [ img [ src model.session.images.schools_french ] []
                            ]
                        , footer []
                            [ a [ href "/schools-french", class "button special" ]
                                [ text "More" ]
                            ]
                        ]
                    , article []
                        [ header []
                            [ h3 []
                                [ text "Spanish Experience"
                                ]
                            ]
                        , div [ class "image fit with-border" ]
                            [ img [ src model.session.images.schools_spanish ] []
                            ]
                        , footer []
                            [ a [ href "/schools-spanish", class "button special" ]
                                [ text "More" ]
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
    "Schools Page"
