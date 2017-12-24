module App exposing (..)

import Html exposing (Html, div, text)
import Html.Attributes exposing (..)
import Html.Events exposing (onClick)
import Components.Page exposing (createPage)
import Models exposing (Model, Msg, initState)


view : Model -> Html Msg
view model =
    div []
        [ createPage model
        , div [ class "footer" ]
            [ text model.config.version
            ]
        ]
