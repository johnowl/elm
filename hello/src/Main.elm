module Main exposing(..)

import Html exposing (div, h1, text)

main : Html.Html msg
main =
    helloView "Hello world!"

helloView : String -> Html.Html msg
helloView message =
    div [] [
        h1 [] [text message]
    ]