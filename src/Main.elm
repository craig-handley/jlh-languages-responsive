module Main exposing (..)

import Browser
import Browser.Events
import Browser.Navigation
import Html exposing (..)
import Html.Attributes exposing (..)
import Pages.About as About
import Pages.AdultCourses as AdultCourses
import Pages.Home as Home
import Session
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
    | About About.Model



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
    | AboutMsg About.Msg


update : Msg -> Model -> ( Model, Cmd Msg )
update message model =
    case message of
        -- When a link is clicked anywhere on our page. There are two types of links, external and internal
        LinkClicked urlRequest ->
            case urlRequest of
                Browser.Internal url ->
                    -- If you'd like to use hash-based routing:
                    -- ( model, Nav.pushUrl model.key (Url.toString (toHashUrl url)) )
                    ( model, Browser.Navigation.pushUrl model.key (Url.toString url) )

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
        , route (Parser.s paths.adultcourses)
            (mapAdultCoursesMsg model (AdultCourses.init session))
        ]



--  This holds the paths for each page. Update as needed for each page you add/remove


paths =
    { home = ""
    , about = "about"
    , adultcourses = "adultcourses"

    --, newPage = "newpage"
    }
