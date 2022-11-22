module Main exposing(..)
import Html exposing (table, tr, td)
import Html.Attributes exposing (style)

main : Html.Html msg
main = 
    view {
    color1 = "blue",
    color2 = "green",
    color3 = "red",
    color4 = "orange",

    color5 = "orange",
    color6 = "red",
    color7 = "blue",
    color8 = "green"
    }

type alias Colors = 
    { color1: String
    , color2: String
    , color3: String
    , color4: String
    , color5: String
    , color6: String
    , color7: String
    , color8: String
    }

view : Colors -> Html.Html msg
view model = 
    table [style "width" "100%", style "height" "600px"] [
        tr [] [
            td[style "background-color" model.color1][]
            , td[style "background-color" model.color2][]
            , td[style "background-color" model.color3][]
            , td[style "background-color" model.color4][]
        ],
        tr [] [
            td[style "background-color" model.color5][]
            , td[style "background-color" model.color6][]
            , td[style "background-color" model.color7][]
            , td[style "background-color" model.color8][]
        ]
    ]