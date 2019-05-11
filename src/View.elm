module View exposing (view)

import Html exposing (Html, div, text)
import Model exposing (..)
import Touch


view : Model -> Html Msg
view model =
    div []
        [ div [ Touch.onEnd (\event -> Tapped) ]
            [ text "Hello from Elm!" ]
        , text <| "Tap count: " ++ toString model.count
        ]
