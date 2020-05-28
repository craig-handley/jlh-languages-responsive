module Pages.Gallery exposing (Model, Msg(..), init, update, view)

import Html exposing (..)
import Html.Attributes exposing (..)
import Html.Events exposing (..)
import Session
import Viewer



-- MODEL


type alias Model =
    { session : Session.Session
    , isModalOpen : Bool
    , modalImg : String
    }



-- INIT


init : Session.Session -> ( Model, Cmd Msg )
init session =
    ( Model session False "", Cmd.none )



-- UPDATE


type Msg
    = NoOp
    | ShowModal String
    | HideModal


update : Msg -> Model -> ( Model, Cmd Msg )
update msg model =
    case msg of
        NoOp ->
            ( model, Cmd.none )

        ShowModal img ->
            ( { model | isModalOpen = True, modalImg = img }, Cmd.none )

        HideModal ->
            ( { model | isModalOpen = False, modalImg = "" }, Cmd.none )



-- VIEW


modalView : Model -> Html Msg
modalView model =
    if model.isModalOpen then
        div [ class "modal-background" ]
            [ i [ class "fas fa-times modal-close", onClick HideModal ] []
            , img [ class "modal-content", src model.modalImg ] []
            ]

    else
        div [] []


setupImg : String -> String -> Html Msg
setupImg class_ src_ =
    div [ class class_ ]
        [ span [ class "image fit cursor-pointer" ]
            [ img [ src src_, class "with-border", onClick (ShowModal src_) ] []
            ]
        ]


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
                        [ setupImg "4u" model.session.images.gallery_2020_03_01
                        , setupImg "4u$" model.session.images.gallery_2020_03_02
                        ]

                    {--break--}
                    , br [] []
                    , h3 [ class "align-left" ]
                        [ text "January 2020 : Galette des Rois"
                        ]
                    , div [ class "row 50% uniform" ]
                        [ setupImg "4u" model.session.images.gallery_2020_01_01
                        , setupImg "4u" model.session.images.gallery_2020_01_02
                        , setupImg "4u$" model.session.images.gallery_2020_01_03
                        , setupImg "4u" model.session.images.gallery_2020_01_04
                        , setupImg "4u" model.session.images.gallery_2020_01_05
                        , setupImg "4u$" model.session.images.gallery_2020_01_06
                        ]

                    {--break--}
                    , br [] []
                    , h3 [ class "align-left" ]
                        [ text "December 2019 : Pour fêter Noël"
                        ]
                    , div [ class "row 50% uniform" ]
                        [ setupImg "4u" model.session.images.gallery_2019_12_01
                        , setupImg "4u" model.session.images.gallery_2019_12_02
                        , setupImg "4u$" model.session.images.gallery_2019_12_03
                        , setupImg "4u" model.session.images.gallery_2019_12_04
                        , setupImg "4u" model.session.images.gallery_2019_12_05
                        , setupImg "4u$" model.session.images.gallery_2019_12_06
                        ]

                    {--break--}
                    , br [] []
                    , h3 [ class "align-left" ]
                        [ text "November 2019"
                        ]
                    , div [ class "row 50% uniform" ]
                        [ setupImg "4u$" model.session.images.gallery_2019_11_01
                        ]

                    {--break--}
                    , br [] []
                    , h3 [ class "align-left" ]
                        [ text "September 2019"
                        ]
                    , div [ class "row 50% uniform" ]
                        [ setupImg "4u$" model.session.images.gallery_01
                        ]

                    {--break--}
                    , br [] []
                    , h3 [ class "align-left" ]
                        [ text "July 2019 : Boules tournament"
                        ]
                    , div [ class "row 50% uniform" ]
                        [ setupImg "4u" model.session.images.gallery_02
                        , setupImg "4u" model.session.images.gallery_03
                        , setupImg "4u$" model.session.images.gallery_04
                        , setupImg "4u" model.session.images.gallery_05
                        , setupImg "4u$" model.session.images.gallery_06
                        ]

                    {--break--}
                    , br [] []
                    , h3 [ class "align-left" ]
                        [ text "June 2019 : French evening"
                        ]
                    , div [ class "row 50% uniform" ]
                        [ setupImg "4u" model.session.images.gallery_07
                        , setupImg "4u" model.session.images.gallery_08
                        , setupImg "4u$" model.session.images.gallery_09
                        , setupImg "4u" model.session.images.gallery_10
                        , setupImg "4u" model.session.images.gallery_11
                        , setupImg "4u$" model.session.images.gallery_12
                        ]

                    {--break--}
                    , br [] []
                    , h3 [ class "align-left" ]
                        [ text "April 2019 : Barcroft Primary School fashion show"
                        ]
                    , div [ class "row 50% uniform" ]
                        [ setupImg "4u" model.session.images.gallery_13
                        , setupImg "4u$" model.session.images.gallery_14
                        ]

                    {--break--}
                    , br [] []
                    , h3 [ class "align-left" ]
                        [ text "March 2019 : Class visit to Nice"
                        ]
                    , div [ class "row 50% uniform" ]
                        [ setupImg "4u" model.session.images.gallery_15
                        , setupImg "4u" model.session.images.gallery_16
                        , setupImg "4u$" model.session.images.gallery_17
                        , setupImg "4u$" model.session.images.gallery_18
                        ]

                    {--break--}
                    , br [] []
                    , h3 [ class "align-left" ]
                        [ text "January 2019"
                        ]
                    , div [ class "row 50% uniform" ]
                        [ setupImg "4u" model.session.images.gallery_19
                        , setupImg "4u$" model.session.images.gallery_20
                        ]

                    {--break--}
                    , br [] []
                    , h3 [ class "align-left" ]
                        [ text "October 2018"
                        ]
                    , div [ class "row 50% uniform" ]
                        [ setupImg "4u$" model.session.images.gallery_21
                        ]

                    {--break--}
                    , br [] []
                    , h3 [ class "align-left" ]
                        [ text "July 2018"
                        ]
                    , div [ class "row 50% uniform" ]
                        [ setupImg "4u" model.session.images.gallery_22
                        , setupImg "4u" model.session.images.gallery_23
                        , setupImg "4u$" model.session.images.gallery_24
                        , setupImg "4u" model.session.images.gallery_25
                        , setupImg "4u" model.session.images.gallery_26
                        , setupImg "4u$" model.session.images.gallery_27
                        ]

                    {--break--}
                    , br [] []
                    , h3 [ class "align-left" ]
                        [ text "June 2018"
                        ]
                    , div [ class "row 50% uniform" ]
                        [ setupImg "4u$" model.session.images.gallery_28
                        ]

                    {--break--}
                    , br [] []
                    , h3 [ class "align-left" ]
                        [ text "February 2018"
                        ]
                    , div [ class "row 50% uniform" ]
                        [ setupImg "4u$" model.session.images.gallery_29
                        ]

                    {--break--}
                    , br [] []
                    , h3 [ class "align-left" ]
                        [ text "November 2017"
                        ]
                    , div [ class "row 50% uniform" ]
                        [ setupImg "4u$" model.session.images.gallery_30
                        ]
                    ]
                ]
            , modalView model
            ]
        ]
    , baseClass = "subpage"
    }



-- HELPERS


toTitle : String
toTitle =
    "Gallery Page"
