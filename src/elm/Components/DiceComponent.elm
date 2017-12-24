module Components.DiceComponent exposing (..)

import Html exposing (..)
import Html.Events exposing (onClick)
import Models exposing (Model, Msg)


diceComponent : Model -> Html Msg
diceComponent model =
    div []
        [ text <|
            if model.value > 0 then
                "You rolled: " ++ (toString model.value)
            else
                model.message
        , br [] []
        , button [ onClick Models.Roll ] [ text "Roll the dice!" ]
        ]
