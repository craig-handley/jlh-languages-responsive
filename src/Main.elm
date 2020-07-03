module Main exposing (..)

import Browser
import Browser.Events
import Browser.Navigation
import Html exposing (..)
import Html.Attributes exposing (..)
import Pages.About as About
import Pages.AdultCourses as AdultCourses
import Pages.AdultCoursesFrench as AdultCoursesFrench
import Pages.AdultCoursesSpanish as AdultCoursesSpanish
import Pages.Events as Events
import Pages.Gallery as Gallery
import Pages.GiftVouchers as GiftVouchers
import Pages.Home as Home
import Pages.Privacy as Privacy
import Pages.Schools as Schools
import Pages.SchoolsFrench as SchoolsFrench
import Pages.SchoolsSpanish as SchoolsSpanish
import Pages.Testimonials as Testimonials
import Pages.Tutoring as Tutoring
import Session
import SmoothScroll exposing (scrollTo)
import Task exposing (Task)
import Types.Flags
import Url
import Url.Parser as Parser exposing ((</>))
import Viewer



-- TYPES
-- Page: each time you need to add/remove a page, this needs to be updated appropriately
-- Each page holds the respective pages model, with the exception of the 404 NotFound page type


type Page
    = NotFound Session.Session
    | Home Home.Model
      -- | NewPage NewPage.Model
    | AdultCourses AdultCourses.Model
    | AdultCoursesFrench AdultCoursesFrench.Model
    | AdultCoursesSpanish AdultCoursesSpanish.Model
    | About About.Model
    | Tutoring Tutoring.Model
    | Schools Schools.Model
    | Events Events.Model
    | SchoolsFrench SchoolsFrench.Model
    | SchoolsSpanish SchoolsSpanish.Model
    | Testimonials Testimonials.Model
    | GiftVouchers GiftVouchers.Model
    | Privacy Privacy.Model
    | Gallery Gallery.Model



---- MODEL ----


type alias Model =
    { key : Browser.Navigation.Key -- Required in a Browser.application
    , page : Page
    }


init : Types.Flags.Flags -> Url.Url -> Browser.Navigation.Key -> ( Model, Cmd Msg )
init flags url key =
    let
        ( model, cmds ) =
            routeUrl url <| Model key (NotFound <| Session.init flags)
    in
    ( model, cmds )



---- UPDATE ----


type Msg
    = LinkClicked Browser.UrlRequest
    | UrlChanged Url.Url
    | HomeMsg Home.Msg
      -- | NewPageMsg NewPage.Msg
    | AdultCoursesMsg AdultCourses.Msg
    | AdultCoursesFrenchMsg AdultCoursesFrench.Msg
    | AdultCoursesSpanishMsg AdultCoursesSpanish.Msg
    | AboutMsg About.Msg
    | TutoringMsg Tutoring.Msg
    | SchoolsMsg Schools.Msg
    | EventsMsg Events.Msg
    | SchoolsFrenchMsg SchoolsFrench.Msg
    | SchoolsSpanishMsg SchoolsSpanish.Msg
    | TestimonialsMsg Testimonials.Msg
    | GiftVouchersMsg GiftVouchers.Msg
    | PrivacyMsg Privacy.Msg
    | GalleryMsg Gallery.Msg
    | NoOp


update : Msg -> Model -> ( Model, Cmd Msg )
update message model =
    case message of
        -- When a link is clicked anywhere on our page. There are two types of links, external and internal
        LinkClicked urlRequest ->
            case urlRequest of
                Browser.Internal url ->
                    -- If you'd like to use hash-based routing:
                    -- ( model, Nav.pushUrl model.key (Url.toString (toHashUrl url)) )
                    -- ( model, Browser.Navigation.pushUrl model.key (Url.toString url) )
                    ( model, Cmd.batch [ Browser.Navigation.pushUrl model.key (Url.toString url), Task.attempt (always NoOp) (scrollTo "top") ] )

                Browser.External href ->
                    ( model, Browser.Navigation.load href )

        -- When the URL changes. This could from something like clicking a link or the browser back/forward buttons
        UrlChanged url ->
            routeUrl url model

        -- The messages below will send a message received in Main.elm to the respective page.
        HomeMsg msg ->
            case model.page of
                Home m ->
                    mapHomeMsg model (Home.update msg m)

                _ ->
                    ( model, Cmd.none )

        --    NewPageMsg msg ->
        --        case model.page of
        --            NewPage m ->
        --                mapNewPageMsg model (NewPage.update msg m)
        --            _ ->
        --                ( model, Cmd.none )
        AboutMsg msg ->
            case model.page of
                About m ->
                    mapAboutMsg model (About.update msg m)

                _ ->
                    ( model, Cmd.none )

        AdultCoursesMsg msg ->
            case model.page of
                AdultCourses m ->
                    mapAdultCoursesMsg model (AdultCourses.update msg m)

                _ ->
                    ( model, Cmd.none )

        AdultCoursesFrenchMsg msg ->
            case model.page of
                AdultCoursesFrench m ->
                    mapAdultCoursesFrenchMsg model (AdultCoursesFrench.update msg m)

                _ ->
                    ( model, Cmd.none )

        AdultCoursesSpanishMsg msg ->
            case model.page of
                AdultCoursesSpanish m ->
                    mapAdultCoursesSpanishMsg model (AdultCoursesSpanish.update msg m)

                _ ->
                    ( model, Cmd.none )

        TutoringMsg msg ->
            case model.page of
                Tutoring m ->
                    mapTutoringMsg model (Tutoring.update msg m)

                _ ->
                    ( model, Cmd.none )

        SchoolsMsg msg ->
            case model.page of
                Schools m ->
                    mapSchoolsMsg model (Schools.update msg m)

                _ ->
                    ( model, Cmd.none )

        EventsMsg msg ->
            case model.page of
                Events m ->
                    mapEventsMsg model (Events.update msg m)

                _ ->
                    ( model, Cmd.none )

        SchoolsFrenchMsg msg ->
            case model.page of
                SchoolsFrench m ->
                    mapSchoolsFrenchMsg model (SchoolsFrench.update msg m)

                _ ->
                    ( model, Cmd.none )

        SchoolsSpanishMsg msg ->
            case model.page of
                SchoolsSpanish m ->
                    mapSchoolsSpanishMsg model (SchoolsSpanish.update msg m)

                _ ->
                    ( model, Cmd.none )

        TestimonialsMsg msg ->
            case model.page of
                Testimonials m ->
                    mapTestimonialsMsg model (Testimonials.update msg m)

                _ ->
                    ( model, Cmd.none )

        GiftVouchersMsg msg ->
            case model.page of
                GiftVouchers m ->
                    mapGiftVouchersMsg model (GiftVouchers.update msg m)

                _ ->
                    ( model, Cmd.none )

        PrivacyMsg msg ->
            case model.page of
                Privacy m ->
                    mapPrivacyMsg model (Privacy.update msg m)

                _ ->
                    ( model, Cmd.none )

        GalleryMsg msg ->
            case model.page of
                Gallery m ->
                    mapGalleryMsg model (Gallery.update msg m)

                _ ->
                    ( model, Cmd.none )

        NoOp ->
            ( model, Cmd.none )



---- VIEW ----


view : Model -> Browser.Document Msg
view model =
    let
        session =
            extractSession model
    in
    case model.page of
        NotFound _ ->
            Viewer.view session never Viewer.notFound

        Home m ->
            Viewer.view session HomeMsg (Home.view m)

        -- NewPage _ ->
        -- Viewer.view session             NewPageMsg (NewPage.view m) model.route
        About m ->
            Viewer.view session AboutMsg (About.view m)

        AdultCourses m ->
            Viewer.view session AdultCoursesMsg (AdultCourses.view m)

        AdultCoursesFrench m ->
            Viewer.view session AdultCoursesFrenchMsg (AdultCoursesFrench.view m)

        AdultCoursesSpanish m ->
            Viewer.view session AdultCoursesSpanishMsg (AdultCoursesSpanish.view m)

        Tutoring m ->
            Viewer.view session TutoringMsg (Tutoring.view m)

        Schools m ->
            Viewer.view session SchoolsMsg (Schools.view m)

        Events m ->
            Viewer.view session EventsMsg (Events.view m)

        SchoolsFrench m ->
            Viewer.view session SchoolsFrenchMsg (SchoolsFrench.view m)

        SchoolsSpanish m ->
            Viewer.view session SchoolsSpanishMsg (SchoolsSpanish.view m)

        Testimonials m ->
            Viewer.view session TestimonialsMsg (Testimonials.view m)

        GiftVouchers m ->
            Viewer.view session GiftVouchersMsg (GiftVouchers.view m)

        Privacy m ->
            Viewer.view session PrivacyMsg (Privacy.view m)

        Gallery m ->
            Viewer.view session GalleryMsg (Gallery.view m)



---- PROGRAM ----


main : Program Types.Flags.Flags Model Msg
main =
    Browser.application
        { init = init
        , view = view
        , update = update
        , subscriptions = \_ -> Sub.none
        , onUrlChange = UrlChanged
        , onUrlRequest = LinkClicked
        }



-- FUNCTIONS
-- Helper functions to send a command from Main to a page


mapHomeMsg : Model -> ( Home.Model, Cmd Home.Msg ) -> ( Model, Cmd Msg )
mapHomeMsg model ( m, cmds ) =
    ( { model | page = Home m }, Cmd.map HomeMsg cmds )



-- mapNewPageMsg : Model -> ( NewPage.Model, Cmd NewPage.Msg ) -> ( Model, Cmd Msg )
-- mapNewPageMsg model ( m, cmds ) =
--     ( { model | page = NewPage m }, Cmd.map NewPageMsg cmds )


mapAboutMsg : Model -> ( About.Model, Cmd About.Msg ) -> ( Model, Cmd Msg )
mapAboutMsg model ( m, cmds ) =
    ( { model | page = About m }, Cmd.map AboutMsg cmds )


mapAdultCoursesMsg : Model -> ( AdultCourses.Model, Cmd AdultCourses.Msg ) -> ( Model, Cmd Msg )
mapAdultCoursesMsg model ( m, cmds ) =
    ( { model | page = AdultCourses m }, Cmd.map AdultCoursesMsg cmds )


mapAdultCoursesFrenchMsg : Model -> ( AdultCoursesFrench.Model, Cmd AdultCoursesFrench.Msg ) -> ( Model, Cmd Msg )
mapAdultCoursesFrenchMsg model ( m, cmds ) =
    ( { model | page = AdultCoursesFrench m }, Cmd.map AdultCoursesFrenchMsg cmds )


mapAdultCoursesSpanishMsg : Model -> ( AdultCoursesSpanish.Model, Cmd AdultCoursesSpanish.Msg ) -> ( Model, Cmd Msg )
mapAdultCoursesSpanishMsg model ( m, cmds ) =
    ( { model | page = AdultCoursesSpanish m }, Cmd.map AdultCoursesSpanishMsg cmds )


mapTutoringMsg : Model -> ( Tutoring.Model, Cmd Tutoring.Msg ) -> ( Model, Cmd Msg )
mapTutoringMsg model ( m, cmds ) =
    ( { model | page = Tutoring m }, Cmd.map TutoringMsg cmds )


mapSchoolsMsg : Model -> ( Schools.Model, Cmd Schools.Msg ) -> ( Model, Cmd Msg )
mapSchoolsMsg model ( m, cmds ) =
    ( { model | page = Schools m }, Cmd.map SchoolsMsg cmds )


mapEventsMsg : Model -> ( Events.Model, Cmd Events.Msg ) -> ( Model, Cmd Msg )
mapEventsMsg model ( m, cmds ) =
    ( { model | page = Events m }, Cmd.map EventsMsg cmds )


mapSchoolsFrenchMsg : Model -> ( SchoolsFrench.Model, Cmd SchoolsFrench.Msg ) -> ( Model, Cmd Msg )
mapSchoolsFrenchMsg model ( m, cmds ) =
    ( { model | page = SchoolsFrench m }, Cmd.map SchoolsFrenchMsg cmds )


mapSchoolsSpanishMsg : Model -> ( SchoolsSpanish.Model, Cmd SchoolsSpanish.Msg ) -> ( Model, Cmd Msg )
mapSchoolsSpanishMsg model ( m, cmds ) =
    ( { model | page = SchoolsSpanish m }, Cmd.map SchoolsSpanishMsg cmds )


mapTestimonialsMsg : Model -> ( Testimonials.Model, Cmd Testimonials.Msg ) -> ( Model, Cmd Msg )
mapTestimonialsMsg model ( m, cmds ) =
    ( { model | page = Testimonials m }, Cmd.map TestimonialsMsg cmds )


mapGiftVouchersMsg : Model -> ( GiftVouchers.Model, Cmd GiftVouchers.Msg ) -> ( Model, Cmd Msg )
mapGiftVouchersMsg model ( m, cmds ) =
    ( { model | page = GiftVouchers m }, Cmd.map GiftVouchersMsg cmds )


mapPrivacyMsg : Model -> ( Privacy.Model, Cmd Privacy.Msg ) -> ( Model, Cmd Msg )
mapPrivacyMsg model ( m, cmds ) =
    ( { model | page = Privacy m }, Cmd.map PrivacyMsg cmds )


mapGalleryMsg : Model -> ( Gallery.Model, Cmd Gallery.Msg ) -> ( Model, Cmd Msg )
mapGalleryMsg model ( m, cmds ) =
    ( { model | page = Gallery m }, Cmd.map GalleryMsg cmds )



-- Extracts the session from the model


extractSession : Model -> Session.Session
extractSession model =
    case model.page of
        NotFound session ->
            session

        Home m ->
            m.session

        -- NewPage m ->
        -- m.session
        About m ->
            m.session

        AdultCourses m ->
            m.session

        AdultCoursesFrench m ->
            m.session

        AdultCoursesSpanish m ->
            m.session

        Tutoring m ->
            m.session

        Schools m ->
            m.session

        Events m ->
            m.session

        SchoolsFrench m ->
            m.session

        SchoolsSpanish m ->
            m.session

        Testimonials m ->
            m.session

        GiftVouchers m ->
            m.session

        Privacy m ->
            m.session

        Gallery m ->
            m.session



-- Update the session of the active page (This could be changed to send a OnSessionChange Msg rather than using init)
-- However, I think it's better you design your pages such that initializing the page is equivalent to updating the session!


updateSession : Model -> Session.Session -> ( Model, Cmd Msg )
updateSession model session =
    case model.page of
        NotFound _ ->
            ( { model | page = NotFound session }, Cmd.none )

        Home m ->
            mapHomeMsg model (Home.init session)

        -- NewPage m ->
        -- mapNewPageMsg model (NewPage.init session)
        About m ->
            mapAboutMsg model (About.init session)

        AdultCourses m ->
            mapAdultCoursesMsg model (AdultCourses.init session)

        AdultCoursesFrench m ->
            mapAdultCoursesFrenchMsg model (AdultCoursesFrench.init session)

        AdultCoursesSpanish m ->
            mapAdultCoursesSpanishMsg model (AdultCoursesSpanish.init session)

        Tutoring m ->
            mapTutoringMsg model (Tutoring.init session)

        Schools m ->
            mapSchoolsMsg model (Schools.init session)

        Events m ->
            mapEventsMsg model (Events.init session)

        SchoolsFrench m ->
            mapSchoolsFrenchMsg model (SchoolsFrench.init session)

        SchoolsSpanish m ->
            mapSchoolsSpanishMsg model (SchoolsSpanish.init session)

        Testimonials m ->
            mapTestimonialsMsg model (Testimonials.init session)

        GiftVouchers m ->
            mapGiftVouchersMsg model (GiftVouchers.init session)

        Privacy m ->
            mapPrivacyMsg model (Privacy.init session)

        Gallery m ->
            mapGalleryMsg model (Gallery.init session)



-- ROUTING
-- The following functions create the client-side router. Update "parser" and "paths" for each page you add/remove


routeUrl : Url.Url -> Model -> ( Model, Cmd Msg )
routeUrl url model =
    let
        session =
            extractSession model

        -- If you'd like to use hash-based routing:
        -- hashUrl =
        --     { url | path = Maybe.withDefault "" url.fragment, fragment = Nothing }
    in
    -- If you'd like to use hash-based routing:
    -- case Parser.parse (parser model session) hashUrl of
    case Parser.parse (parser model session) url of
        Just success ->
            success

        Nothing ->
            ( { model | page = NotFound session }, Cmd.none )


route : Parser.Parser a b -> a -> Parser.Parser (b -> c) c
route parser_ handler =
    Parser.map handler parser_



-- URL Parser tha maps a URL to a Page, and initializes that page.


parser : Model -> Session.Session -> Parser.Parser (( Model, Cmd Msg ) -> a) a
parser model session =
    Parser.oneOf
        [ route Parser.top (mapHomeMsg model (Home.init session))

        -- , route (Parser.s paths.newPage)
        --     (mapNewPageMsg model (NewPage.init session))
        , route (Parser.s paths.about)
            (mapAboutMsg model (About.init session))
        , route (Parser.s paths.adultCourses)
            (mapAdultCoursesMsg model (AdultCourses.init session))
        , route (Parser.s paths.adultCoursesFrench)
            (mapAdultCoursesFrenchMsg model (AdultCoursesFrench.init session))
        , route (Parser.s paths.adultCoursesSpanish)
            (mapAdultCoursesSpanishMsg model (AdultCoursesSpanish.init session))
        , route (Parser.s paths.tutoring)
            (mapTutoringMsg model (Tutoring.init session))
        , route (Parser.s paths.schools)
            (mapSchoolsMsg model (Schools.init session))
        , route (Parser.s paths.events)
            (mapEventsMsg model (Events.init session))
        , route (Parser.s paths.schoolsFrench)
            (mapSchoolsFrenchMsg model (SchoolsFrench.init session))
        , route (Parser.s paths.schoolsSpanish)
            (mapSchoolsSpanishMsg model (SchoolsSpanish.init session))
        , route (Parser.s paths.testimonials)
            (mapTestimonialsMsg model (Testimonials.init session))
        , route (Parser.s paths.giftVouchers)
            (mapGiftVouchersMsg model (GiftVouchers.init session))
        , route (Parser.s paths.privacy)
            (mapPrivacyMsg model (Privacy.init session))
        , route (Parser.s paths.gallery)
            (mapGalleryMsg model (Gallery.init session))
        ]



--  This holds the paths for each page. Update as needed for each page you add/remove


paths =
    { home = ""
    , about = "about"
    , adultCourses = "adult-courses"
    , adultCoursesFrench = "adult-courses-french"
    , adultCoursesSpanish = "adult-courses-spanish"
    , tutoring = "tutoring"
    , schools = "schools"
    , events = "events"
    , schoolsFrench = "schools-french"
    , schoolsSpanish = "schools-spanish"
    , testimonials = "testimonials"
    , giftVouchers = "gift-vouchers"
    , privacy = "privacy"
    , gallery = "gallery"

    --, newPage = "newpage"
    }
