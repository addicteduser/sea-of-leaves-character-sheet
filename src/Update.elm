module Update exposing (update)

import Model exposing (..)


update : Msg -> Model -> ( Model, Cmd Msg )
update msg model =
    case msg of
        Tapped ->
            let
                updatedModel =
                    { model | count = model.count + 1 }
            in
            ( updatedModel, Cmd.none )
