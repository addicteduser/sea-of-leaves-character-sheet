module Model exposing (Model, Msg(Tapped), model)


type Msg
    = Tapped


type alias Model =
    { count : Int
    }


model : Model
model =
    { count = 0 }
