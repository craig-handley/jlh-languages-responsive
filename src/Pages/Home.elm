module Pages.Home exposing (Model, Msg(..), init, update, view)

import Browser
import Browser.Events
import Html exposing (..)
import Html.Attributes exposing (..)
import Html.Events
import Json.Encode
import Session
import Utils exposing (..)
import Viewer



{-
   This is the top page - the page that is displayed when the url path is "/"
-}
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
    let
        backgroundImageStyle =
            "url(" ++ model.session.images.banner ++ ")"
    in
    { title = toTitle
    , body =
        [ section [ id "banner", style "background-image" backgroundImageStyle ]
            [ --     h1 [] [ text "JLH Languages" ]
              -- , p [] [ text "Participate   -   Stimulate   -   Communicate" ]
              img [ src model.session.images.logo, style "max-width" "50%" ] []
            ]

        {--One--}
        , section [ id "one", class "wrapper" ]
            [ div [ class "inner" ]
                [ div [ class "flex flex-2" ]
                    [ article []
                        [ header []
                            [ h3 []
                                [ text "French Lessons on Zoom"
                                ]
                            ]
                        , video
                            [ width 560, height 315, src model.session.images.jh_tv, type_ "video/mp4", controls True ]
                            []
                        , p [] []
                        , footer []
                            [ a [ href "/adult-courses-french", class "button special" ]
                                [ text "More"
                                ]
                            ]
                        , p [] []
                        , header []
                            [ h3 []
                                [ text "Adult Courses in French and Spanish"
                                ]
                            ]
                        , p []
                            [ text "JLH Languages teaches French and Spanish to adults as a type of \"brain gym.\""
                            ]
                        , p []
                            [ text "Everyone wants to live a healthy life for longer: there is increasing scientific evidence that suggests that we need to exercise our brain as well as our body. Factors that help to keep our brain in good shape are:"
                            ]
                        , ul []
                            [ li [] [ text "Education – learning a new skill" ]
                            , li [] [ text "Social engagement – joining a club, meeting with other people" ]
                            , li [] [ text "Cognitive stimulation – reading, puzzles, crosswords" ]
                            ]
                        , p []
                            [ text "Learning a foreign language includes all 3 of these elements. In addition, doing something different and fun is also an excellent way of reducing stress."
                            ]
                        , p []
                            [ text "According to a Public Health England report in 2016, \"Keeping your brain active and challenged throughout life may help reduce your dementia risk.\""
                            ]
                        , p []
                            [ text "We teach languages in an innovative way. Each unit of teaching is based around a conversation (e.g. on food, sport, camping, music) and by the end of each module learners will have mastered the conversation so that they are able to communicate in the target language on that topic."
                            ]
                        , p []
                            [ text "If you would like to learn a language from scratch or refresh your knowledge in a fun and friendly environment then get in touch to find the nearest class to you!"
                            ]
                        , p []
                            [ text "Other services:"
                            ]
                        , ul []
                            [ li [] [ text "Private tuition for GCSE and A-level examinations" ]
                            , li [] [ text "Intensive one-to-one tuition" ]
                            , li [] [ text "Business French lessons" ]
                            ]
                        , footer []
                            [ a [ href "/adult-courses", class "button special" ]
                                [ text "More"
                                ]
                            ]
                        ]
                    , article []
                        [ header []
                            [ h3 []
                                [ text "Immersive Restaurant Experience For Schools"
                                ]
                            ]
                        , p []
                            [ text "Having worked for several years as a Head of Department of Modern Languages, I was always looking for a way to bring the languages I taught to life. This is very challenging in a classroom but the alternative, a trip abroad, can be a very time-consuming endeavour and is, sadly, out of the question for many students."
                            ]
                        , p []
                            [ text "This is the reason why I have teamed up with restaurants in my local area to offer a fun, effective and hassle-free alternative to a foreign trip."
                            ]
                        , p []
                            [ text "Our aim is to give students a taste of being in a restaurant abroad whilst remaining in the UK. The restaurants I am currently working with are based in Cannock (South Staffordshire) although I do have plans to expand to other regions."
                            ]
                        , p []
                            [ text "We can cater for groups up to a maximum of 30 students. We cater for all dietary requirements (e.g. vegetarians, vegans, food allergies, Halal meals) so that all students can participate fully and benefit from this experience."
                            ]
                        , footer []
                            [ a [ href "/schools", class "button special" ]
                                [ text "More"
                                ]
                            ]
                        ]

                    -- , article []
                    --     [ header []
                    --         [ h3 []
                    --             [ text "Libero purus magna sapien"
                    --             ]
                    --         ]
                    --     , p []
                    --         [ text "Morbi interdum mollis sapien. Sed ac risus. Phasellus lacinia, magna a ullamcorper laoreet, lectus arcu."
                    --         ]
                    --     , footer []
                    --         [ a [ href "/", class "button special" ]
                    --             [ text "More"
                    --             ]
                    --         ]
                    --     ]
                    ]
                ]
            ]

        {--Two--}
        -- , section [ id "two", class "wrapper style1 special" ]
        --     [ div [ class "inner" ]
        --         [ header []
        --             [ h2 []
        --                 [ text "Ipsum Feugiat"
        --                 ]
        --             , p []
        --                 [ text "Semper suscipit posuere apede"
        --                 ]
        --             ]
        --         , div [ class "flex flex-4" ]
        --             [ div [ class "box person" ]
        --                 [ div [ class "image round" ]
        --                     [ img [ src model.session.images.pic03 ] []
        --                     ]
        --                 , h3 []
        --                     [ text "Magna"
        --                     ]
        --                 , p []
        --                     [ text "Cipdum dolor"
        --                     ]
        --                 ]
        --             , div [ class "box person" ]
        --                 [ div [ class "image round" ]
        --                     [ img [ src model.session.images.pic04 ] []
        --                     ]
        --                 , h3 []
        --                     [ text "Ipsum"
        --                     ]
        --                 , p []
        --                     [ text "Vestibulum comm"
        --                     ]
        --                 ]
        --             , div [ class "box person" ]
        --                 [ div [ class "image round" ]
        --                     [ img [ src model.session.images.pic05 ] []
        --                     ]
        --                 , h3 []
        --                     [ text "Tempus"
        --                     ]
        --                 , p []
        --                     [ text "Fusce pellentes"
        --                     ]
        --                 ]
        --             , div [ class "box person" ]
        --                 [ div [ class "image round" ]
        --                     [ img [ src model.session.images.pic06 ] []
        --                     ]
        --                 , h3 []
        --                     [ text "Dolore"
        --                     ]
        --                 , p []
        --                     [ text "Praesent placer"
        --                     ]
        --                 ]
        --             ]
        --         ]
        --     ]
        {--Three--}
        -- , section [ id "three", class "wrapper special" ]
        --     [ div [ class "inner" ]
        --         [ header [ class "align-center" ]
        --             [ h2 [] [ text "Nunc Dignissim" ]
        --             , p [] [ text "Aliquam erat volutpat nam dui " ]
        --             ]
        --         , div [ class "flex flex-2" ]
        --             [ article []
        --                 [ div [ class "image fit" ]
        --                     [ img [ src model.session.images.pic01 ] []
        --                     ]
        --                 , header []
        --                     [ h3 []
        --                         [ text "Praesent placerat magna"
        --                         ]
        --                     ]
        --                 , p []
        --                     [ text "Praesent dapibus, neque id cursus faucibus, tortor neque egestas augue, eu vulputate magna eros eu erat. Aliquam erat volutpat. Nam dui mi, tincidunt quis, accumsan porttitor lorem ipsum."
        --                     ]
        --                 , footer []
        --                     [ a [ href "/", class "button special" ]
        --                         [ text "More" ]
        --                     ]
        --                 ]
        --             , article []
        --                 [ div [ class "image fit" ]
        --                     [ img [ src model.session.images.pic02 ] []
        --                     ]
        --                 , header []
        --                     [ h3 []
        --                         [ text "Fusce pellentesque tempus"
        --                         ]
        --                     ]
        --                 , p []
        --                     [ text "Sed adipiscing ornare risus. Morbi est est, blandit sit amet, sagittis vel, euismod vel, velit. Pellentesque egestas sem. Suspendisse commodo ullamcorper magna non comodo sodales tempus."
        --                     ]
        --                 , footer []
        --                     [ a [ href "/schools", class "button special" ]
        --                         [ text "More" ]
        --                     ]
        --                 ]
        --             ]
        --         ]
        --     ]
        ]
    , baseClass = ""
    }



-- HELPERS


toTitle : String
toTitle =
    "Home Page"
