module AppNavigation exposing (..)

import Navigation exposing (Location)
import UrlParser exposing (..)
import Messages exposing (Msg(..))
import Types exposing (Page(..))


locationFor : Location -> Msg
locationFor location =
    UrlParser.parseHash route location
        |> GoTo


route : UrlParser.Parser (Page -> a) a
route =
    UrlParser.oneOf
        [ UrlParser.map Home (UrlParser.s "home")
        , UrlParser.map Other (UrlParser.s "other")
        ]
