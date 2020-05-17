module Pages.Gallery exposing (Model, Msg(..), init, update, view)

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
                    [ h2 [] [ text "Gallery" ]

                    --, p [] [ text "Aliquam erat volutpat nam dui " ]
                    ]
                , div [ class "box alt" ]
                    [ h3 [ class "align-left" ]
                        [ text "March 2020"
                        ]
                    , div [ class "row 50% uniform" ]
                        [ div [ class "4u" ]
                            [ span [ class "image fit" ]
                                [ img [ src model.session.images.gallery_2020_03_01, class "with-border" ] []
                                ]
                            ]
                        , div [ class "4u$" ]
                            [ span [ class "image fit" ]
                                [ img [ src model.session.images.gallery_2020_03_02, class "with-border" ] []
                                ]
                            ]
                        ]

                    {--break--}
                    , br [] []
                    , h3 [ class "align-left" ]
                        [ text "January 2020 : Galette des Rois"
                        ]
                    , div [ class "row 50% uniform" ]
                        [ div [ class "4u" ]
                            [ span [ class "image fit" ]
                                [ img [ src model.session.images.gallery_2020_01_01, class "with-border" ] []
                                ]
                            ]
                        , div [ class "4u" ]
                            [ span [ class "image fit" ]
                                [ img [ src model.session.images.gallery_2020_01_02, class "with-border" ] []
                                ]
                            ]
                        , div [ class "4u$" ]
                            [ span [ class "image fit" ]
                                [ img [ src model.session.images.gallery_2020_01_03, class "with-border" ] []
                                ]
                            ]
                        , div [ class "4u" ]
                            [ span [ class "image fit" ]
                                [ img [ src model.session.images.gallery_2020_01_04, class "with-border" ] []
                                ]
                            ]
                        , div [ class "4u" ]
                            [ span [ class "image fit" ]
                                [ img [ src model.session.images.gallery_2020_01_05, class "with-border" ] []
                                ]
                            ]
                        , div [ class "4u$" ]
                            [ span [ class "image fit" ]
                                [ img [ src model.session.images.gallery_2020_01_06, class "with-border" ] []
                                ]
                            ]
                        ]

                    {--break--}
                    , br [] []
                    , h3 [ class "align-left" ]
                        [ text "December 2019 : Pour fêter Noël"
                        ]
                    , div [ class "row 50% uniform" ]
                        [ div [ class "4u" ]
                            [ span [ class "image fit" ]
                                [ img [ src model.session.images.gallery_2019_12_01, class "with-border" ] []
                                ]
                            ]
                        , div [ class "4u" ]
                            [ span [ class "image fit" ]
                                [ img [ src model.session.images.gallery_2019_12_02, class "with-border" ] []
                                ]
                            ]
                        , div [ class "4u$" ]
                            [ span [ class "image fit" ]
                                [ img [ src model.session.images.gallery_2019_12_03, class "with-border" ] []
                                ]
                            ]
                        , div [ class "4u" ]
                            [ span [ class "image fit" ]
                                [ img [ src model.session.images.gallery_2019_12_04, class "with-border" ] []
                                ]
                            ]
                        , div [ class "4u" ]
                            [ span [ class "image fit" ]
                                [ img [ src model.session.images.gallery_2019_12_05, class "with-border" ] []
                                ]
                            ]
                        , div [ class "4u$" ]
                            [ span [ class "image fit" ]
                                [ img [ src model.session.images.gallery_2019_12_06, class "with-border" ] []
                                ]
                            ]
                        ]

                    {--break--}
                    , br [] []
                    , h3 [ class "align-left" ]
                        [ text "November 2019"
                        ]
                    , div [ class "row 50% uniform" ]
                        [ div [ class "4u$" ]
                            [ span [ class "image fit" ]
                                [ img [ src model.session.images.gallery_2019_11_01, class "with-border" ] []
                                ]
                            ]
                        ]

                    {--break--}
                    , br [] []
                    , h3 [ class "align-left" ]
                        [ text "September 2019"
                        ]
                    , div [ class "row 50% uniform" ]
                        [ div [ class "4u$" ]
                            [ span [ class "image fit" ]
                                [ img [ src model.session.images.gallery_01, class "with-border" ] []
                                ]
                            ]
                        ]

                    {--break--}
                    , br [] []
                    , h3 [ class "align-left" ]
                        [ text "July 2019 : Boules tournament"
                        ]
                    , div [ class "row 50% uniform" ]
                        [ div [ class "4u" ]
                            [ span [ class "image fit" ]
                                [ img [ src model.session.images.gallery_02, class "with-border" ] []
                                ]
                            ]
                        , div [ class "4u" ]
                            [ span [ class "image fit" ]
                                [ img [ src model.session.images.gallery_03, class "with-border" ] []
                                ]
                            ]
                        , div [ class "4u$" ]
                            [ span [ class "image fit" ]
                                [ img [ src model.session.images.gallery_04, class "with-border" ] []
                                ]
                            ]
                        , div [ class "4u" ]
                            [ span [ class "image fit" ]
                                [ img [ src model.session.images.gallery_05, class "with-border" ] []
                                ]
                            ]
                        , div [ class "4u$" ]
                            [ span [ class "image fit" ]
                                [ img [ src model.session.images.gallery_06, class "with-border" ] []
                                ]
                            ]
                        ]

                    {--break--}
                    , br [] []
                    , h3 [ class "align-left" ]
                        [ text "June 2019 : French evening"
                        ]
                    , div [ class "row 50% uniform" ]
                        [ div [ class "4u" ]
                            [ span [ class "image fit" ]
                                [ img [ src model.session.images.gallery_07, class "with-border" ] []
                                ]
                            ]
                        , div [ class "4u" ]
                            [ span [ class "image fit" ]
                                [ img [ src model.session.images.gallery_08, class "with-border" ] []
                                ]
                            ]
                        , div [ class "4u$" ]
                            [ span [ class "image fit" ]
                                [ img [ src model.session.images.gallery_09, class "with-border" ] []
                                ]
                            ]
                        , div [ class "4u" ]
                            [ span [ class "image fit" ]
                                [ img [ src model.session.images.gallery_10, class "with-border" ] []
                                ]
                            ]
                        , div [ class "4u" ]
                            [ span [ class "image fit" ]
                                [ img [ src model.session.images.gallery_11, class "with-border" ] []
                                ]
                            ]
                        , div [ class "4u$" ]
                            [ span [ class "image fit" ]
                                [ img [ src model.session.images.gallery_12, class "with-border" ] []
                                ]
                            ]
                        ]

                    {--break--}
                    , br [] []
                    , h3 [ class "align-left" ]
                        [ text "April 2019 : Barcroft Primary School fashion show"
                        ]
                    , div [ class "row 50% uniform" ]
                        [ div [ class "4u" ]
                            [ span [ class "image fit" ]
                                [ img [ src model.session.images.gallery_13, class "with-border" ] []
                                ]
                            ]
                        , div [ class "4u$" ]
                            [ span [ class "image fit" ]
                                [ img [ src model.session.images.gallery_14, class "with-border" ] []
                                ]
                            ]
                        ]

                    {--break--}
                    , br [] []
                    , h3 [ class "align-left" ]
                        [ text "March 2019 : Class visit to Nice"
                        ]
                    , div [ class "row 50% uniform" ]
                        [ div [ class "4u" ]
                            [ span [ class "image fit" ]
                                [ img [ src model.session.images.gallery_15, class "with-border" ] []
                                ]
                            ]
                        , div [ class "4u" ]
                            [ span [ class "image fit" ]
                                [ img [ src model.session.images.gallery_16, class "with-border" ] []
                                ]
                            ]
                        , div [ class "4u$" ]
                            [ span [ class "image fit" ]
                                [ img [ src model.session.images.gallery_17, class "with-border" ] []
                                ]
                            ]
                        , div [ class "4u$" ]
                            [ span [ class "image fit" ]
                                [ img [ src model.session.images.gallery_18, class "with-border" ] []
                                ]
                            ]
                        ]

                    {--break--}
                    , br [] []
                    , h3 [ class "align-left" ]
                        [ text "January 2019"
                        ]
                    , div [ class "row 50% uniform" ]
                        [ div [ class "4u" ]
                            [ span [ class "image fit" ]
                                [ img [ src model.session.images.gallery_19, class "with-border" ] []
                                ]
                            ]
                        , div [ class "4u$" ]
                            [ span [ class "image fit" ]
                                [ img [ src model.session.images.gallery_20, class "with-border" ] []
                                ]
                            ]
                        ]

                    {--break--}
                    , br [] []
                    , h3 [ class "align-left" ]
                        [ text "October 2018"
                        ]
                    , div [ class "row 50% uniform" ]
                        [ div [ class "4u$" ]
                            [ span [ class "image fit" ]
                                [ img [ src model.session.images.gallery_21, class "with-border" ] []
                                ]
                            ]
                        ]

                    {--break--}
                    , br [] []
                    , h3 [ class "align-left" ]
                        [ text "July 2018"
                        ]
                    , div [ class "row 50% uniform" ]
                        [ div [ class "4u" ]
                            [ span [ class "image fit" ]
                                [ img [ src model.session.images.gallery_22, class "with-border" ] []
                                ]
                            ]
                        , div [ class "4u" ]
                            [ span [ class "image fit" ]
                                [ img [ src model.session.images.gallery_23, class "with-border" ] []
                                ]
                            ]
                        , div [ class "4u$" ]
                            [ span [ class "image fit" ]
                                [ img [ src model.session.images.gallery_24, class "with-border" ] []
                                ]
                            ]
                        , div [ class "4u" ]
                            [ span [ class "image fit" ]
                                [ img [ src model.session.images.gallery_25, class "with-border" ] []
                                ]
                            ]
                        , div [ class "4u" ]
                            [ span [ class "image fit" ]
                                [ img [ src model.session.images.gallery_26, class "with-border" ] []
                                ]
                            ]
                        , div [ class "4u$" ]
                            [ span [ class "image fit" ]
                                [ img [ src model.session.images.gallery_27, class "with-border" ] []
                                ]
                            ]
                        ]

                    {--break--}
                    , br [] []
                    , h3 [ class "align-left" ]
                        [ text "June 2018"
                        ]
                    , div [ class "row 50% uniform" ]
                        [ div [ class "4u$" ]
                            [ span [ class "image fit" ]
                                [ img [ src model.session.images.gallery_28, class "with-border" ] []
                                ]
                            ]
                        ]

                    {--break--}
                    , br [] []
                    , h3 [ class "align-left" ]
                        [ text "February 2018"
                        ]
                    , div [ class "row 50% uniform" ]
                        [ div [ class "4u$" ]
                            [ span [ class "image fit" ]
                                [ img [ src model.session.images.gallery_29, class "with-border" ] []
                                ]
                            ]
                        ]

                    {--break--}
                    , br [] []
                    , h3 [ class "align-left" ]
                        [ text "November 2017"
                        ]
                    , div [ class "row 50% uniform" ]
                        [ div [ class "4u$" ]
                            [ span [ class "image fit" ]
                                [ img [ src model.session.images.gallery_30, class "with-border" ] []
                                ]
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
    "Gallery Page"
