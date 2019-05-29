module OnsenUI exposing (icon, onsButton, onsIcon, onsPage, onsToolbar, onsToolbarButton)

{-| Provides the Elm functions for the Onsen UI components. See <https://onsen.io/v2/api/js/>.
-}

import Html exposing (Attribute, Html, node)
import Html.Attributes exposing (attribute)


{-| This component defines the root of each page. If the content is large it will become scrollable. A navigation bar can be added to the top of the page using the <ons-toolbar> element.
-}
onsPage : List (Attribute msg) -> List (Html msg) -> Html msg
onsPage msgAttributeList msgHtmlList =
    node "ons-page" msgAttributeList msgHtmlList


{-| Toolbar component that can be used with navigation. Left, center and right containers can be specified by class names. This component will automatically display as a Material Design toolbar when running on Android devices.
-}
onsToolbar : List (Attribute msg) -> List (Html msg) -> Html msg
onsToolbar msgAttributeList msgHtmlList =
    node "ons-toolbar" msgAttributeList msgHtmlList


{-| Button component for ons-toolbar and ons-bottom-toolbar.
-}
onsToolbarButton : List (Attribute msg) -> List (Html msg) -> Html msg
onsToolbarButton msgAttributeList msgHtmlList =
    node "ons-toolbar-button" msgAttributeList msgHtmlList


onsIcon : List (Attribute msg) -> List (Html msg) -> Html msg
onsIcon msgAttributeList msgHtmlList =
    node "ons-icon" msgAttributeList msgHtmlList


icon : String -> Attribute msg
icon iconString =
    attribute "icon" iconString


onsButton : List (Attribute msg) -> List (Html msg) -> Html msg
onsButton msgAttributeList msgHtmlList =
    node "ons-button" msgAttributeList msgHtmlList
