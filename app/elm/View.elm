module View exposing (..)

import Html as Html exposing (..)
import Html.Attributes exposing (..)
import Html.Events exposing (..)

import Types exposing (..)
import Messages exposing (..)

view : Model -> Html Msg
view model =
    case model.currentPage of
      Home -> homeView model
      Other -> otherView model



homeView : Model -> Html Msg
homeView model =
    div []
        [ button [ class "thebutton", onClick ShowThisThing ] [ text "Toggle Message" ]
        , div [ hidden model.view ]
          [ h2 [ class "message" ] [ text ("Hello, " ++ model.name ++ ". This was made in Elm with Brunch.io") ]
          , button [ onClick (LinkTo "/#/other") ] [ text "Somewhere Else" ]
          ]
        ]


otherView : Model -> Html Msg
otherView model =
    div []
        [ text "Well, you got here. Now What?"
        , button [ onClick (LinkTo "/#/home") ] [ text "Go Home" ]
        ]
