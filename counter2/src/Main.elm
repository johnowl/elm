module Main exposing (..)

import Browser exposing(sandbox)
import Html exposing(..)
import Html.Events exposing(onClick)


main : Program () Model Msg
main =
    sandbox {
        init = init
        , update = update
        , view = view
    }

type alias Model = 
    { total: Int }


init : Model
init = 
    { total = 0 }

type Msg = Decrement | Increment

update : Msg -> Model -> Model
update msg model =
    case msg of
        Decrement  ->
            { model | total = model.total - 1 }

        Increment ->
            { model | total = model.total + 1 }


view : Model -> Html Msg
view model =
  div []
    [ button [ onClick Decrement ] [ text "-" ]
    , div [] [ text (String.fromInt model.total) ]
    , button [ onClick Increment ] [ text "+" ]
    ]