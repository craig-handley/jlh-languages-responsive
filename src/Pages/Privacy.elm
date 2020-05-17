module Pages.Privacy exposing (Model, Msg(..), init, update, view)

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
                    [ h2 [] [ text "Privacy Statement" ]

                    --, p [] [ text "Aliquam erat volutpat nam dui " ]
                    ]
                , div [ class "inner" ]
                    [ article []
                        [ p [] [ text "JLH Languages is committed to protecting and respecting any personal information you share with us. This statement describes what types of information we collect from you, how it is used by us, how you can manage the information we hold and how you can contact us. The contents of this statement may change from time to time so you may wish to check this page occasionally to ensure you are still happy to share your information with us. Where possible, we will also contact you directly to notify you of these changes. This version of our Privacy Statement is live from 7th May 2018." ]
                        , header []
                            [ h3 []
                                [ text "What information do we collect?"
                                ]
                            ]
                        , p [] [ text "Some of this information does not identify you personally, but is used for accounting purposes, booking confirmations and to enable us to post out to you. Business name Contact name(s) Address for Phone number(s) – landline and mobile Email address Any information within correspondence you send to us." ]
                        , header []
                            [ h3 []
                                [ text "How do we use this information?"
                                ]
                            ]
                        , p [] [ text "JLH Languages will only process information that is necessary for the purpose for which it has been collected. You will always have the option not to receive marketing communications from us (and you can withdraw your consent or object at any time). There are various ways in which we may use or process your personal information. We list these below:" ]
                        , header []
                            [ h3 []
                                [ text "Consent"
                                ]
                            ]
                        , p [] [ text "Where you have provided your consent, we may use and process your information to: Contact you from time to time about services or information which we think may be of interest to you. You can withdraw your consent at any time by contacting us on the details provided within the 'How can I manage the information we hold about you' section below." ]
                        , header []
                            [ h3 []
                                [ text "Legitimate interests"
                                ]
                            ]
                        , p [] [ text "We may use and process your personal information as set out below where it is necessary for us to carry out activities for which it is in our legitimate interests as a business to do so." ]
                        , p [] [ text "Processing necessary for us to support customers with service delivery and other enquiries" ]
                        , p [] [ text "We may use and process your personal information where this is necessary to perform a contract with you and to fulfil and complete your orders for our services." ]
                        , p [] [ text "To respond to correspondence you send to us and fulfil the requests you make to us (for example: send you details of resources used in lessons, give details of times and locations of lessons)." ]
                        , p [] [ text "To provide support and services (for advice and price enquiries)." ]
                        , p [] [ text "Processing necessary for us to promote our business, brand and product" ]
                        , p [] [ text "To send you marketing information from time to time after you have enquired about our services enquiry through our website or other social media. We do not use cookies. We will only contact you with information about our own and services. You have the right to object to us sending you this information at any time." ]
                        , p [] [ text "To contact you from time to time with marketing information (unless you object). In relation to any such information we send by email or SMS you can withdraw your consent." ]
                        , p [] [ text "To administer competitions that you enter with us from time to time and to distribute prizes" ]
                        , p [] [ text "Processing necessary for us to operate the administrative and technical aspects of our business efficiently and effectively" ]
                        , p [] [ text "To verify the accuracy of information that we hold about you as a customer" ]
                        , p [] [ text "To comply with a request from you in connection with the exercise of your rights (for example where you have asked us not to contact you for marketing purposes, we will keep a record of this on our suppression lists in order to be able to comply with your request);" ]
                        , p [] [ text "To inform you of updates to our terms and conditions and policies." ]
                        , header []
                            [ h3 []
                                [ text "How do we share this information?"
                                ]
                            ]
                        , p [] [ text "We do not sell or share your information to third parties." ]
                        , header []
                            [ h3 []
                                [ text "How can you manage the information we hold about you?"
                                ]
                            ]
                        , p [] [ text "You have the right as an individual to access your personal information we hold about you and make corrections if necessary. You also have the right to withdraw any consent you have previously given us and ask us to erase information we hold about you. You can also object to us using your personal information (where we rely on our business interests to process and use your personal information). You have the right to: Ask for a copy of the information that we hold about you; Correct and update your information; Withdraw your consent (where we rely on it). Object to our use of your information (where we rely on our legitimate interests to use your personal information) provided we do not have any continuing lawful reason to continue to use and process the information.  When we do rely on our legitimate interests to use your personal information for direct marketing, we will always comply with your right to object; Erase your information (or restrict the use of it), provided we do not have any continuing lawful reason to continue to use and process that information; Transfer your information in a structured data file (in a commonly used and machine readable format), where we rely on your consent to use and process your personal information or need to process it in connection with your contract." ]
                        , p [] [ text "You can exercise the above rights and/or manage your information by contacting us using the details below:" ]

                        -- , p [] [ text "Post: JLH Languages, 11 The Croft, Cheslyn Hay, Walsall WS6 7QB" ]
                        , p [] [ text "Email: jane@jlhlanguages.org" ]
                        , p [] [ text "Phone: 07793 556020" ]
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
