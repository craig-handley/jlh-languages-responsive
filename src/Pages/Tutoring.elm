module Pages.Tutoring exposing (Model, Msg(..), init, update, view)

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
                    [ h2 [] [ text "Tutoring" ]

                    --, p [] [ text "Aliquam erat volutpat nam dui " ]
                    ]
                , div [ class "inner" ]
                    [ article []
                        [ div [ class "image fit smaller" ]
                            [ img [ src model.session.images.home_schooling ] []
                            ]
                        , p [] [ text "Group tuition price on request." ]
                        , div [ class "image fit smaller" ]
                            [ img [ src model.session.images.tutoring_01 ] []
                            ]
                        , div [ class "image fit smaller" ]
                            [ img [ src model.session.images.tutoring_02 ] []
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
    "Tutoring Page"
