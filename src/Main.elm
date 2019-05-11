module Main exposing (main)

import Html exposing (Html, div, text)
import Touch


type Msg
    = Tapped


update : Msg -> Int -> Int
update Tapped count =
    count + 1


view : Int -> Html Msg
view count =
    div []
        [ div [ Touch.onEnd (\event -> Tapped) ]
            [ text "Hello from Elm!" ]
        , text <| "Tap count: " ++ toString count
        ]


main : Program Never Int Msg
main =
    Html.beginnerProgram
        { model = 0
        , update = update
        , view = view
        }
