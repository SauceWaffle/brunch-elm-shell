module Main exposing (..)

import Html
import Navigation as Nav
import AppNavigation exposing (locationFor, route)
import UrlParser

import Types exposing (..)
import Messages exposing (..)
import View exposing (..)




init : Nav.Location -> (Model, Cmd Msg)
init location =
    let
        page =
            case UrlParser.parseHash route location of
                Nothing ->
                    Home

                Just page ->
                    page
    in
    ( { initModel | currentPage = page}
    , Cmd.none
    )



subscriptions : Model -> Sub Msg
subscriptions model =
  Sub.none




-- Update


update : Msg -> Model -> (Model, Cmd Msg)
update msg model =
    case msg of
        GoTo page ->
            case page of
                Nothing ->
                    ( { model | currentPage = Home }, Cmd.none )

                Just page ->
                    ( { model | currentPage = page }, Cmd.none )

        LinkTo path ->
            ( model, Nav.newUrl path )



        ShowThisThing ->
          let
            yesorno = case model.view of
                        True -> False
                        False -> True
          in
            ({ model | view = yesorno }, Cmd.none)




main : Program Never Model Msg
main =
    Nav.program locationFor { init = init, update = update, view = view, subscriptions = subscriptions }
