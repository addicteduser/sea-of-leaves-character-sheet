module Model exposing (Animal, Character, Henchmen, Item, ItemType(..), Model, Msg(..), StatBlock, defaultCharacter, defaultStatBlock, model)


type Msg
    = Tapped


type alias Model =
    { character : Character
    }


model : Model
model =
    { character = defaultCharacter }


type alias StatBlock =
    { strength : Int
    , dexterity : Int
    , intelligence : Int
    , grit : Int
    }


defaultStatBlock : StatBlock
defaultStatBlock =
    { strength = 0
    , dexterity = 0
    , intelligence = 0
    , grit = 0
    }


type ItemType
    = Weapon
    | Armor
    | Common
    | Specialist


type alias Item =
    { itemName : String
    , itemType : ItemType
    , description : String
    , value : String
    , slotSize : Int
    }


type alias Animal =
    { name : String
    , species : String
    , description : String
    , statBlock : StatBlock
    }


type alias Henchmen =
    { name : String
    , species : String
    , description : String
    , statBlock : StatBlock
    }


type alias Character =
    { name : String
    , level : Int
    , statBlock : StatBlock
    , corruption : Int
    , wealth : Float
    , headgear : Item
    , armor : Item
    , handItems : List Item
    , beltItems : List Item
    , inventory : List Item
    , animals : List Animal
    , henchmen : List Henchmen
    }


defaultCharacter : Character
defaultCharacter =
    { name = "Sneaky Guy"
    , level = 1
    , statBlock = { strength = 10, dexterity = 11, intelligence = 12, grit = 3 }
    , corruption = 0
    , wealth = 3.0
    , headgear = { itemName = "Helmet", itemType = Armor, description = "helmet", value = "", slotSize = 1 }
    , armor = { itemName = "Light Armor", itemType = Armor, description = "", value = "", slotSize = 0 }
    , handItems = []
    , beltItems = []
    , inventory = []
    , animals = []
    , henchmen = []
    }
