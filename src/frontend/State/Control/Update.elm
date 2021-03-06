module State.Control.Update exposing (..)

import State.Control.Types exposing (..)


-- INIT

initialModel : Model
initialModel =
    { filter = All
    }


init : ( Model, Cmd Msg )
init =
    ( initialModel, Cmd.none )


-- UPDATE

updateModel : Msg -> Model -> Model
updateModel msg model =
    case msg of
        ApplyFilter filter ->
            { model | filter = filter }
