module Models exposing (..)

import Http exposing (..)
import Json.Decode exposing (..)


type alias Model =
    { message : String
    , value : Int
    , config : Configuration
    }


type alias Configuration =
    { version : String
    }


type Msg
    = NoOp
    | Roll
    | DiceRolled Int
    | FetchConfiguration (Result Http.Error Configuration)


model : Model
model =
    { message = "Started the game"
    , value = 0
    , config = { version = "" }
    }


initState : ( Model, Cmd Msg )
initState =
    ( model, Http.send FetchConfiguration <| (Http.get "/static/data/info.json" decodeConfiguration) )


decodeConfiguration : Decoder Configuration
decodeConfiguration =
    map Configuration (field "version" string)
