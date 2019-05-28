module View exposing (view)

import Html exposing (..)
import Html.Attributes exposing (..)
import Model exposing (..)



-- import Touch


view : Model -> Html Msg
view model =
    node "ons-button" [] [ text "click me" ]



-- div [ class "container" ]
--     [ viewHeader model.character.name model.character.level
--     , viewSummaryPage model
--     ]


viewHeader : String -> Int -> Html Msg
viewHeader charName charLevel =
    nav [ class "navbar navbar-light bg-light" ]
        [ span [] [ text "<<" ]
        , span [] [ text (charName ++ " (Level " ++ toString charLevel ++ ")") ]
        ]


viewSummaryPage : Model -> Html Msg
viewSummaryPage model =
    div []
        [ viewStatBlock model.character.statBlock model.character.corruption model.character.wealth
        , viewEquipment model.character.headgear model.character.armor model.character.handItems model.character.beltItems
        ]


viewStatBlock : StatBlock -> Int -> Float -> Html Msg
viewStatBlock { strength, dexterity, intelligence, grit } corruption wealth =
    div [ class "card", style [ ( "margin-bottom", "10px" ) ] ]
        [ div [ class "card-header", style [ ( "padding", "0" ) ] ] [ text "STATS" ]
        , div [ class "card-body", style [ ( "padding", "10px 10px 0px 10px" ) ] ]
            [ div [ class "row", style [ ( "padding-bottom", "10px" ) ] ]
                [ div [ class "col" ]
                    [ div [ class "card text-center" ]
                        [ div [ class "card-header", style [ ( "padding", "0" ) ] ] [ small [] [ text "STR" ] ]
                        , div [ class "card-body", style [ ( "padding", "0" ) ] ] [ text (toString strength) ]
                        ]
                    ]
                , div [ class "col" ]
                    [ div [ class "card text-center" ]
                        [ div [ class "card-header", style [ ( "padding", "0" ) ] ] [ small [] [ text "DEX" ] ]
                        , div [ class "card-body", style [ ( "padding", "0" ) ] ] [ text (toString dexterity) ]
                        ]
                    ]
                , div [ class "col" ]
                    [ div [ class "card text-center" ]
                        [ div [ class "card-header", style [ ( "padding", "0" ) ] ] [ small [] [ text "INT" ] ]
                        , div [ class "card-body", style [ ( "padding", "0" ) ] ] [ text (toString intelligence) ]
                        ]
                    ]
                ]
            , div [ class "row", style [ ( "padding-bottom", "10px" ) ] ]
                [ div [ class "col" ]
                    [ div [ class "card text-center" ]
                        [ div [ class "card-header", style [ ( "padding", "0" ) ] ] [ small [] [ text "GRIT" ] ]
                        , div [ class "card-body", style [ ( "padding", "0" ) ] ] [ text (toString grit) ]
                        ]
                    ]
                , div [ class "col" ]
                    [ div [ class "card text-center" ]
                        [ div [ class "card-header", style [ ( "padding", "0" ) ] ] [ small [] [ text "CORR" ] ]
                        , div [ class "card-body", style [ ( "padding", "0" ) ] ] [ text (toString corruption) ]
                        ]
                    ]
                , div [ class "col" ]
                    [ div [ class "card text-center" ]
                        [ div [ class "card-header", style [ ( "padding", "0" ) ] ] [ small [] [ text "WEALTH" ] ]
                        , div [ class "card-body", style [ ( "padding", "0" ) ] ] [ text (toString wealth) ]
                        ]
                    ]
                ]
            ]
        ]


viewEquipment : Item -> Item -> List Item -> List Item -> Html Msg
viewEquipment headgear armor handItems beltItems =
    div [ class "card" ]
        [ div [ class "card-header", style [ ( "padding", "0" ) ] ] [ text "EQUIPMENT" ]
        , div [ class "card-body", style [ ( "padding", "10px 10px 0px 10px" ) ] ]
            [ div [ class "card", style [ ( "margin-bottom", "10px" ) ] ]
                [ div [ class "card-header", style [ ( "padding", "0" ) ] ] [ small [] [ text "Headgear" ] ]
                , div [ class "card-body", style [ ( "padding", "0" ) ] ] [ text headgear.itemName ]
                ]
            , div [ class "card", style [ ( "margin-bottom", "10px" ) ] ]
                [ div [ class "card-header", style [ ( "padding", "0" ) ] ] [ small [] [ text "Armor" ] ]
                , div [ class "card-body", style [ ( "padding", "0" ) ] ] [ text armor.itemName ]
                ]
            , div [ class "card", style [ ( "margin-bottom", "10px" ) ] ]
                [ div [ class "card-header", style [ ( "padding", "0" ) ] ] [ small [] [ text "Hand Items" ] ]
                , div [ class "card-body", style [ ( "padding", "0" ) ] ] [ text headgear.itemName ]
                ]
            , div [ class "card", style [ ( "margin-bottom", "10px" ) ] ]
                [ div [ class "card-header", style [ ( "padding", "0" ) ] ] [ small [] [ text "Belt Items" ] ]
                , div [ class "card-body", style [ ( "padding", "0" ) ] ] [ text headgear.itemName ]
                ]
            ]
        ]
