module Main exposing (..)

import Browser exposing(sandbox)
import Html exposing(..)
import Html.Events exposing(..)


main : Program () Int Msg
main =
    sandbox {
        init = init
        , update = update
        , view = view
    }

type alias Model = Int

init : Int
init = 0

type Msg = Decrement | Increment

update : Msg -> Model -> Model
update msg model =
    case msg of
        Decrement  ->
            model - 1

        Increment ->
            model + 1


view : Int -> Html Msg
view model =
  div []
    [ button [ onClick Decrement ] [ text "-" ]
    , div [] [ text (String.fromInt model) ]
    , button [ onClick Increment ] [ text "+" ]
    ]