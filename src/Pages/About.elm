module Pages.About exposing (Model, Msg(..), init, update, view)

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
                    [ h2 [] [ text "About" ]

                    --, p [] [ text "Aliquam erat volutpat nam dui " ]
                    ]
                , div [ class "flex flex-2" ]
                    [ article []
                        [ header []
                            [ h3 []
                                [ text "A bit about me"
                                ]
                            ]
                        , p [] [ text "My name is Jane Handley and I am passionate about languages." ]
                        , p [] [ text "I have 20 years' experience of teaching French and German in secondary schools and primary schools as well as teaching adults in commercial settings." ]
                        , p [] [ text "I have spent extended periods living and working abroad. I have worked in Tübingen (Germany), Paris, Strasbourg, Monaco, Singapore and Nigeria." ]
                        , div [ class "image fit", style "width" "10em" ]
                            [ img [ src model.session.images.about_01 ] []
                            ]
                        , p [] [ text "Email: jane@jlhlanguages.org" ]
                        , p [] [ text "Phone: 07793 556020" ]
                        ]
                    , article []
                        [ header []
                            [ h3 []
                                [ text "My qualifications"
                                ]
                            ]
                        , p [] [ text "Valid DBS." ]
                        , p [] [ text "Certificate of English Language Teaching to Adults (CELTA), International Teaching and Training Centre, Bournemouth, 2001." ]
                        , p [] [ text "Post Graduate Certificate of Education (PGCE), University of Sheffield, 1997." ]
                        , p [] [ text "BA Honours Degree in Modern Languages (French/German) and European Studies, University of Bath, Result obtained 2.i., 1995." ]
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
    "About Page"
