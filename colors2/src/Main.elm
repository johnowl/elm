module Main exposing(..)

import Html exposing (table, tr, td)
import Html.Attributes exposing (style)
import Html.Events exposing (onClick)
import Browser exposing (sandbox)

main : Program () Colors Msg
main =
    sandbox {
        init = init
        , update = update
        , view = view
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

init : Colors
init = {
    color1 = "blue",
    color2 = "green",
    color3 = "red",
    color4 = "orange",

    color5 = "orange",
    color6 = "red",
    color7 = "blue",
    color8 = "green"
    }

type Msg = UpdateColor1
    | UpdateColor2
    | UpdateColor3
    | UpdateColor4
    | UpdateColor5
    | UpdateColor6
    | UpdateColor7
    | UpdateColor8

update : Msg -> Colors -> Colors
update msg model =
    case msg of
        UpdateColor1 ->
            { model | color1 = nextColor model.color1}
        UpdateColor2 ->
            { model | color2 = nextColor model.color2}
        UpdateColor3 ->
            { model | color3 = nextColor model.color3}
        UpdateColor4 ->
            { model | color4 = nextColor model.color4}
        UpdateColor5 ->
            { model | color5 = nextColor model.color5}
        UpdateColor6 ->
            { model | color6 = nextColor model.color6}
        UpdateColor7 ->
            { model | color7 = nextColor model.color7}
        UpdateColor8 ->
            { model | color8 = nextColor model.color8}

nextColor : String -> String
nextColor current =
    if current == "green" then
        "blue"
    else if current == "blue" then
        "orange"
    else if current == "orange" then
        "red"
    else
        "green"

view : Colors -> Html.Html Msg
view model = 
    table [style "width" "100%", style "height" "600px"] [
        tr [] [
            td[style "background-color" model.color1, onClick UpdateColor1][]
            , td[style "background-color" model.color2, onClick UpdateColor2][]
            , td[style "background-color" model.color3, onClick UpdateColor3][]
            , td[style "background-color" model.color4, onClick UpdateColor4][]
        ],
        tr [] [
            td[style "background-color" model.color5, onClick UpdateColor5][]
            , td[style "background-color" model.color6, onClick UpdateColor6][]
            , td[style "background-color" model.color7, onClick UpdateColor7][]
            , td[style "background-color" model.color8, onClick UpdateColor8][]
        ]
    ]