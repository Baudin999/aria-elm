module Reducer exposing (update)

import Random
import Models exposing (Model, Msg)
import Debug exposing (log)


update : Msg -> Model -> ( Model, Cmd Msg )
update msg model =
    case msg of
        Models.Roll ->
            ( model, Random.generate Models.DiceRolled (Random.int 1 20) )

        Models.DiceRolled i ->
            ( { model | value = i }, Cmd.none )

        Models.FetchConfiguration (Ok config) ->
            ( { model | config = config }, Cmd.none )

        Models.FetchConfiguration (Err err) ->
            ( model, Cmd.none )

        _ ->
            ( model, Cmd.none )
