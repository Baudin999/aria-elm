module Main exposing (..)

import Html exposing (Html, program)
import Models exposing (Model, Msg, initState)
import Reducer exposing (update)
import App exposing (view)


-- APP


main : Program Never Model Msg
main =
    Html.program
        { init = initState
        , view = view
        , update = update
        , subscriptions = subscriptions
        }



-- SUBSCRIPTIONS


subscriptions : Model -> Sub Msg
subscriptions model =
    Sub.none
