module Pages.AdultCoursesFrench exposing (Model, Msg(..), init, update, view)

import Html exposing (..)
import Html.Attributes exposing (..)
import Session
import Types.Course as Course
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


viewCourses : Model -> Html Msg
viewCourses model =
    div [ class "table-wrapper" ]
        [ table []
            [ viewTableHeader
            , viewTableBody model.session.courses
            ]
        ]


viewTableHeader : Html Msg
viewTableHeader =
    thead [ class "align-left" ]
        [ tr []
            [ th [] [ text "Date" ]
            , th [] [ text "Time" ]
            , th [] [ text "Venue" ]
            , th [] [ text "Details" ]
            ]
        ]


viewTableBody : List Course.Course -> Html Msg
viewTableBody courses =
    tbody [ class "align-left" ]
        (List.map viewCourse courses)


viewCourse : Course.Course -> Html Msg
viewCourse course =
    tr []
        [ td [] [ text course.day ]
        , td [] [ text course.time ]
        , td [] [ text course.location ]
        , td [] [ text course.abilityLevel ]
        ]


view : Model -> Viewer.Details Msg
view model =
    { title = toTitle
    , body =
        [ section [ id "three", class "wrapper special" ]
            [ div [ class "inner" ]
                [ header [ class "align-center" ]
                    [ h2 [] [ text "French Adult Courses" ]

                    --, p [] [ text "Aliquam erat volutpat nam dui " ]
                    ]
                , h3 [ style "color" "red" ] [ text "Due to Coronavirus all lessons take place on Zoom. Please email jane@jlhlanguages.org for details." ]
                , div [ class "flex flex-1" ]
                    [ article []
                        [ header []
                            [ h3 []
                                [ text "French lessons on Zoom"
                                ]
                            ]
                        ]
                    ]
                , viewCourses model
                , div [ class "flex flex-1" ]
                    [ article []
                        [ p [] [ text "* Advanced Conversation: For fluent or near-fluent speakers of French. Come along and chat or discuss the issues of the day." ]
                        , p [] [ text "** Intermediate: For learners with good gramatical knowledge who want to improve their fluency." ]
                        , p [] [ text "First session free." ]
                        , p [] [ text "More classes starting Autumn 2020, contact Jane for details." ]
                        ]
                    ]
                , div [ class "image fit smaller-still" ]
                    [ img [ src model.session.images.adult_courses_01, class "with-border" ] []
                    ]
                , div [ class "flex flex-1" ]
                    [ article []
                        [ header []
                            [ h3 []
                                [ text "JLH Languages will provide"
                                ]
                            ]
                        , p [] [ text "A weekly lesson of 60 minutes." ]
                        , p [] [ text "All materials used during the lesson (material from the lesson is e-mailed out after the lesson each week so you can go over anything you want to at your leisure.)" ]
                        , p [] [ text "Regular tips of how to learn and links to useful websites/TV or radio programmes that may be of interest to learners of French." ]
                        ]
                    ]
                , div [ class "flex flex-1" ]
                    [ article []
                        [ header []
                            [ h3 []
                                [ text "Terms and Conditions"
                                ]
                            ]
                        , p [] [ text "Lesson are purchased in blocks: 3 lessons for £45 or 5 lessons for £65." ]
                        , p [] [ text "The client needs to give at least 1 week’s notice if the client cannot attend a lesson due to a foreseeable event (e.g. hospital appointment.) Full payment will not be taken for that lesson as long as the client gives at least 1 week’s notice." ]
                        , p [] [ text "However, the client will be charged £4 for the resources related to the missed lesson that are e-mailed out." ]
                        , p [] [ text "Payment can be made by card, bank transfer or in cash." ]
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
    "French Adult Courses Page"
