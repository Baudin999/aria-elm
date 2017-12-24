module Components.Page exposing (..)

import Html exposing (..)
import Components.DiceComponent exposing (diceComponent)


-- import the models

import Models exposing (Model, Msg)


createPage : Model -> Html Msg
createPage model =
    div []
        [ text "This is a page"
        , diceComponent model
        ]
