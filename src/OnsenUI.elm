module OnsenUI exposing (onsButton)

import Html exposing (Attribute, Html, node)


onsButton : List (Attribute msg) -> List (Html msg) -> Html msg
onsButton msgAttributeList msgHtmlList =
    node "ons-button" msgAttributeList msgHtmlList
