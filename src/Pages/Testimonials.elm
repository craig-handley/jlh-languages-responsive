module Pages.Testimonials exposing (Model, Msg(..), init, update, view)

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
                    [ h2 [] [ text "Testimonials" ]

                    --, p [] [ text "Aliquam erat volutpat nam dui " ]
                    ]
                , div [ class "flex flex-1" ]
                    [ article []
                        [ blockquote []
                            [ text "\"It’s lively and I like the way we learn in complete sentences. The variety keeps your attention. It was fun. You learn quickly and the time passes very quickly.\""
                            , br [] []
                            , br [] []
                            , text "- Sarah, Aldridge"
                            ]
                        , div
                            [ class "image fit smaller" ]
                            [ img [ src model.session.images.testimonials_01, class "with-border" ] []
                            ]
                        , blockquote []
                            [ text "Jane is very approachable and goes out of her way to make our sessions lively and enjoyable."
                            , br [] []
                            , br [] []
                            , text "- Dorothy, Brownhills"
                            ]
                        , div [ class "image fit smaller" ]
                            [ img [ src model.session.images.testimonials_02, class "with-border" ] []
                            ]
                        , blockquote []
                            [ text "\"I have wanted to learn French for years but never managed to find the right class. Jane's method of teaching is one of mixing the learning with fun and empathy. I really look forward to our lessons.\""
                            , br [] []
                            , br [] []
                            , text "- George, Cannock"
                            ]
                        , blockquote []
                            [ text "\"Never any good with foreign languages at school or since but have found a new desire to learn French and Jane's lessons are encouraging me to be confident in giving it a go!\""
                            , br [] []
                            , br [] []
                            , text "- Linzi, Cannock"
                            ]
                        , blockquote []
                            [ text "\"I do love the variety of activities on offer.\""
                            , br [] []
                            , br [] []
                            , text "- Brendan, Great Wyrley"
                            ]
                        , blockquote []
                            [ text "\"It is relaxed and at times there are funny moments when we got it wrong. All participants gelled and helped each other.\""
                            , br [] []
                            , br [] []
                            , text "- Christine, Great Wyrley"
                            ]
                        , div [ class "image fit smaller" ]
                            [ img [ src model.session.images.testimonials_03, class "with-border" ] []
                            ]
                        , blockquote []
                            [ text "\"What I like about the lessons is that we are given information about how to learn and we are encouraged to look at things outside the lesson (a website or a radio programme) if they are of interest to us.\""
                            , br [] []
                            , br [] []
                            , text "- Neil, Chelsyn Hay"
                            ]
                        , div [ class "image fit smaller" ]
                            [ img [ src model.session.images.testimonials_04, class "with-border" ] []
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
    "Testimonials Page"
