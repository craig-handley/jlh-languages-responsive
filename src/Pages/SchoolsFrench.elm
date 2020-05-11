module Pages.SchoolsFrench exposing (Model, Msg(..), init, update, view)

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
                    [ h2 [] [ text "French Restaurant Experience" ]

                    --, p [] [ text "Aliquam erat volutpat nam dui " ]
                    ]
                , div [ class "flex flex-1" ]
                    [ article []
                        [ div [ class "image fit smaller" ]
                            [ img [ src model.session.images.schools_french_01, class "with-border" ] []
                            ]
                        , div [ class "image fit smaller" ]
                            [ img [ src model.session.images.schools_french_02, class "with-border" ] []
                            ]
                        , div [ class "image fit smaller" ]
                            [ img [ src model.session.images.schools_french_03, class "with-border" ] []
                            ]
                        , p [] [ text "Having worked for several years as a Head of Department of Modern Languages, I was always looking for a way to bring the languages I taught to life. This is very challenging in a classroom but the alternative, a trip abroad, can be a very time-consuming endeavour and is, sadly, out of the question for many students." ]
                        , p [] [ text "This is the reason why I have teamed up with restaurants in my local area to offer a fun, effective and hassle-free alternative to a foreign trip." ]
                        , p [] [ text "Our aim is to give students a taste of being in a French restaurant whilst remaining in the UK. The restaurants I am currently working with are based in Cannock (South Staffordshire) although I have plans to expand into other regions later this year." ]
                        , p [] [ text "We can cater for groups up to a maximum of 30 students. We cater for all dietary requirements (e.g. vegetarians, vegans, food allergies, Halal meals) so that all students can participate fully and benefit from this experience." ]
                        , div [ class "image fit smaller" ]
                            [ img [ src model.session.images.schools_french_04, class "with-border" ] []
                            ]
                        , p [] [ text "There are several food options:" ]
                        , header []
                            [ h3 []
                                [ text "Formule A: Niveau débutant From £15.00 per student"
                                ]
                            ]
                        , p [] [ text "French breakfast consisting of a selection of pastries (croissant, pain au chocolat, tartines avec de la confiture / du miel / du nutella), a hot drink and a selection of fruit (to promote healthy eating and expand students’ vocabulary.) Students order everything in French." ]
                        , p [] [ text "Arrival 9.30 a.m. Depart 11.00 a.m." ]
                        , header []
                            [ h3 []
                                [ text "Formule B: Niveau intermédiare From £15.00 per student"
                                ]
                            ]
                        , p [] [ text "This includes Formule A above but it also includes more challenging language activities. For example, students may have to use their knowledge of French to sort out problems during the meal, give detailed opinions about their meal or discuss healthy eating issues relating to their food. A full list of vocabulary can be given to the school prior to the event so that it can be covered in advance. This will allow students to use their language spontaneously, increasing their confidence and motivation. Students order everything in French." ]
                        , p [] [ text "Arrival 9.30 a.m. Depart 11.00 a.m." ]
                        , header []
                            [ h3 []
                                [ text "Formule C: Pour les gourmands From £26.00 per student"
                                ]
                            ]
                        , p [] [ text "Students order a 3 course meal and a drink in French. The level of language and the language activities delivered can be tailored to the ability and objectives of the group. A typical meal may include the following (please note this is a sample menu to give an idea of the range of dishes offered): Starters: Salade de chèvre chaud, soupe à l’oignon, terrine de campagne maison, melon Mains: Boeuf bourgignon, omelette, coq au vin, poulet rôti Sides: légumes, riz, pâtes Desserts: glace aux choix, crème caramel, mousse au chocolat, salade de fruits" ]
                        , p [] [ text "Arrival midday Depart 2.00 p.m." ]
                        , p [] [ text "Prices: The prices quoted do NOT include transport to and from the venue. Normally schools prefer to use their own school transport or work with transport companies they are familiar with. If transport is required, please state this when asking for a quote and it can be included in the total price." ]
                        , div [ class "image fit smaller" ]
                            [ img [ src model.session.images.schools_french_05, class "with-border" ] []
                            ]
                        , header []
                            [ h3 []
                                [ text "What are the benefits of the French experience?"
                                ]
                            ]
                        , p [] [ text "Students gain a taste of France without the commitment to, or the financial burden of, a foreign trip. It could be used as an alternative to a foreign trip or a springboard to encourage reluctant students to participate in a foreign trip in the future." ]
                        , p [] [ text "This experience enhances students’ cultural awareness. Students can be encouraged to be curious about how life in France is different from life in Britain through experiencing French cuisine and the ambiance of France." ]
                        , p [] [ text "The teaching in school prior to the event is given a sharper focus as the students know that they will use the language for a concrete purpose. Students are more likely to be motivated to learn the language required and practise it so they can use it effectively when called upon to do so during their visit." ]
                        , p [] [ text "The experience brings the subject to life as students have to use their French actively for a real purpose. Once students realise that languages can be useful this may motivate them to continue with their studies with increased enthusiasm. For example, this event could be used as a motivational tool for students prior to their options in Year 8 or Year 9." ]
                        , p [] [ text "Students will be required to speak French to order a meal. The successful completion of this task provides concrete proof to the students themselves that they can actually \"do\" French and this can build confidence and enhance motivation." ]
                        , p [] [ text "Using French in an unscripted way develops students’ coping mechanisms which are relevant in exam situations. It can help students understand that their spoken language does not have to be perfect as long as their message is conveyed." ]
                        , p [] [ text "Cross-curricular issues such as healthy eating issues are addressed. Every menu includes a healthy option and students can discuss the pros and cons of their meal choices (Please note that none of our meals are accompanied by chips which requires students to choose a healthier option.)" ]
                        , p [] [ text "Visit are tailored to meet the specific objectives of each individual group e.g. to motivate reluctant learners, to stretch the most able, the increase confidence of students when speaking, to increase spontaneity etc. Revision sessions on specific topics (which take place after the meal) are available. Specific cross-curricular themes can be included: numeracy, healthy eating, food technology, music, authentic texts......" ]
                        , p [] [ text "When students return to their classroom after the visit, they appreciate that the language they are learning is real i.e. that French is not simply an academic subject but is one with real value and purpose." ]
                        , header []
                            [ h3 []
                                [ text "The feedback from the groups who have taken part has been overwhelmingly positive:"
                                ]
                            ]
                        , blockquote []
                            [ text "\"Brilliant! Exactly what I have always wanted to arrange for my students but I’ve never had the time to do it. Simply brilliant!\""
                            , br [] []
                            , br [] []
                            , text "- French teacher, Willenhall"
                            ]
                        , blockquote []
                            [ text "\"We felt the experience was excellent from start to finish. Extremely memorable as it was practical and useful. It showed pupils that the language is used in real life and opened up a door to French culture even though we were only 30 minutes from home.\""
                            , br [] []
                            , br [] []
                            , text "- Headteacher and French specialist, Wolverhampton"
                            ]
                        , blockquote []
                            [ text "\"I will be looking at organising it again next year as I was very pleased with them using so much French in such a short time.\""
                            , br [] []
                            , br [] []
                            , text "- KS4 French Teacher, Sandwell"
                            ]
                        , p [] [ text "If you would like to receive a quote for a visit, please contact jane@jlhlanguages.org" ]
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
    "Schools French Page"
