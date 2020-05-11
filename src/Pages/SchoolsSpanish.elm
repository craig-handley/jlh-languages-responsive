module Pages.SchoolsSpanish exposing (Model, Msg(..), init, update, view)

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
                    [ h2 [] [ text "Spanish Restaurant Experience" ]

                    --, p [] [ text "Aliquam erat volutpat nam dui " ]
                    ]
                , div [ class "flex flex-1" ]
                    [ article []
                        [ div [ class "image fit smaller" ]
                            [ img [ src model.session.images.schools_spanish_01, class "with-border" ] []
                            ]
                        , div [ class "image fit smaller" ]
                            [ img [ src model.session.images.schools_spanish_02, class "with-border" ] []
                            ]
                        , p [] [ text "Having worked for several years as a Head of Department of Modern Languages, I was always looking for ways to bring the languages I taught to life. This is very challenging in a classroom but the alternative, a trip abroad, can be a very time-consuming endeavour and is, sadly, out of the question for many students." ]
                        , p [] [ text "This is the reason why I have teamed up with restaurants in my local area to offer a fun, effective and hassle-free alternative to a foreign trip." ]
                        , p [] [ text "Our aim is to give students a taste of being in a Spanish restaurant whilst remaining in the UK. The restaurant I am currently working with is based in Cannock (South Staffordshire) although I have plans to expand into other regions at a later date." ]
                        , p [] [ text "We can accommodate groups up to a maximum of 30 students. We cater for all dietary requirements (vegetarians, vegans, food allergies, Halal meals) so that all students can participate fully and benefit from this experience." ]
                        , div [ class "image fit smaller" ]
                            [ img [ src model.session.images.schools_spanish_03, class "with-border" ] []
                            ]
                        , p [] [ text "There are several food options:" ]
                        , header []
                            [ h3 []
                                [ text "Spanish Breakfast From approx. £15.00 per student"
                                ]
                            ]
                        , p [] [ text "Spanish breakfast consisting of bollo, bread, plain biscuits, a hot drink and a selection of fruit (to promote healthy eating and expand students’ vocabulary.) Spanish omelette is also available. Students order everything in Spanish and are served by Spanish speaking waiting staff. This experience includes a range of language activities. For example, students use their knowledge of Spanish to sort out problems during the meal, give detailed opinions about their meal or discuss healthy eating issues relating to their food. A full list of vocabulary can be given to the school prior to the event so that it can be covered in advance. This will allow students to use their language spontaneously, increasing their confidence and motivation." ]
                        , p [] [ text "Optional extras: Additional language activities can be organised on topics of the school’s choice e.g.a GCSE preparation activity based on role plays for the speaking exam." ]
                        , p [] [ text "Arrival 9.30 a.m. Depart 11.30 a.m." ]
                        , header []
                            [ h3 []
                                [ text "Spanish 3-course meal From approx. £26.00 per student"
                                ]
                            ]
                        , p [] [ text "Students order a 3 course meal and a drink in Spanish. The level of language and the language activities delivered can be tailored to the ability and objectives of the group. A typical meal may include the following (please note this is a sample menu to give an idea of the range of dishes offered): Starters: paella, arroz a la cubana, macorrones, ensalada mixta, tortilla paisana Mains: pollo asado, albóndigas en salsa, pisto, stuffed peppers Desserts: rice pudding, fresh fruit, flan: creme caramel, mousse de chocolate" ]
                        , p [] [ text "Arrival midday Departure 2.00 p.m." ]
                        , p [] [ text "Prices: The prices quoted do NOT include transport to and from the venue." ]
                        , div [ class "image fit smaller" ]
                            [ img [ src model.session.images.schools_spanish_04, class "with-border" ] []
                            ]
                        , header []
                            [ h3 []
                                [ text "What are the benefits of the Spanish experience?"
                                ]
                            ]
                        , p [] [ text "Students gain a taste of Spain without the commitment to, or the financial burden of, a foreign trip. It could be used as an alternative to a foreign trip or a springboard to encourage reluctant students to participate in a foreign trip in the future." ]
                        , p [] [ text "This experience enhances students’ cultural awareness. Students can be encouraged to be curious about how life in Spain is different from life in Britain through experiencing Spanish cuisine and the ambiance of Spain." ]
                        , p [] [ text "The teaching in school prior to the event is given a sharper focus as the students know that they will use the language for a concrete purpose. Students are more likely to be motivated to learn the language required and practise it so they can use it effectively when called upon to do so during their visit." ]
                        , p [] [ text "The experience brings the subject to life as students have to use their Spanish actively for a real purpose. Once students realise that languages can be useful this may motivate them to continue with their studies with increased enthusiasm. For example, this event could be used as a motivational tool for students prior to their options in Year 8 or Year 9." ]
                        , p [] [ text "Students will be required to speak Spanish to order a meal. The successful completion of this task provides concrete proof to the students themselves that they can actually \"do\" Spanish and this can build confidence and enhance motivation." ]
                        , p [] [ text "Using Spanish in an unscripted way develops students’ coping mechanisms which are relevant in exam situations. It can help students understand that their spoken language does not have to be perfect as long as their message is conveyed." ]
                        , p [] [ text "Cross-curricular issues such as healthy eating issues are addressed. Every menu includes a healthy option and students can discuss the pros and cons of their meal choices." ]
                        , p [] [ text "Visits are tailored to meet the specific objectives of each individual group e.g. to motivate reluctant learners, to stretch the most able, to increase confidence of students when speaking, to increase spontaneity etc. Specific cross-curricular themes can be included upon request: numeracy, healthy eating, food technology, music, authentic texts......" ]
                        , p [] [ text "When students return to their classroom after the visit, they appreciate that the language they are learning is real i.e. that Spanish is not simply an academic subject but is one with real value and purpose." ]
                        , header []
                            [ h3 []
                                [ text "Here are some of the things the teachers have said about the Spanish restaurant experience:"
                                ]
                            ]
                        , blockquote [] [ text "\"They have enjoyed the experience of eating Spanish food and interacting with staff who only speak in Spanish as well as the environment and the activities. The students gained confidence to speak in Spanish as well as learning new vocabulary that they will remember for a long time.\"" ]
                        , blockquote [] [ text "\"They gained cultural capital and used Spanish for a real purpose.\"" ]
                        , header []
                            [ h3 []
                                [ text "The feedback from the students has been positive too:"
                                ]
                            ]
                        , blockquote [] [ text "\"I’ve enjoyed the food and interacting with the waiters in Spanish. Actually talking to someone in Spanish helped my confidence and my fluency.\"" ]
                        , blockquote [] [ text "\"I had to speak Spanish to order my food which made me more confident.\"" ]
                        , blockquote [] [ text "\"I have enjoyed stepping out of my comfort zone by speaking Spanish in public.\"" ]
                        , header []
                            [ h3 []
                                [ text "When asked if they felt their Spanish or their confidence using the language had improved, they said:"
                                ]
                            ]
                        , blockquote [] [ text "\"Yes, because when I was ordering food I was understandable.\"" ]
                        , blockquote [] [ text "\"Yes, because I have been speaking it all day.\"" ]
                        , blockquote [] [ text "\"Yes, I have started to worry less about what I’m saying.\"" ]
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
    "Schools Spanish Page"
