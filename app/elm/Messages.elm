module Messages exposing (..)

import Types exposing (..)

type Msg
    = GoTo (Maybe Page)
    | LinkTo String

    | ShowThisThing
