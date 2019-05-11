module View exposing (view)

import Html exposing (Html, div, text)
import Model exposing (..)



-- import Touch


view : Model -> Html Msg
view model =
    div []
        [ viewHeader model.character.name model.character.level
        , viewStatBlock model.character.statBlock model.character.corruption model.character.wealth
        , viewEquipment model.character.headgear model.character.armor model.character.handItems model.character.beltItems
        ]


viewHeader : String -> Int -> Html Msg
viewHeader charName charLevel =
    div [] [ text (charName ++ toString charLevel) ]


viewStatBlock : StatBlock -> Int -> Float -> Html Msg
viewStatBlock { strength, dexterity, intelligence, grit } corruption wealth =
    div []
        [ div []
            [ text (toString strength)
            , text (toString dexterity)
            , text (toString intelligence)
            ]
        , div []
            [ text (toString grit)
            , text (toString corruption)
            , text (toString wealth)
            ]
        ]


viewEquipment : Item -> Item -> List Item -> List Item -> Html Msg
viewEquipment headgear armor handItems beltItems =
    div [] []
