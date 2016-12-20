module Types exposing (..)


type alias Model =
    { currentPage : Page
    , view : Bool
    , name : String
    }

type Page
    = Home
    | Other


initModel : Model
initModel =
    { currentPage = Home
    , view = False
    , name = "Jimmy"
    }
