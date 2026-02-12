module Helper exposing (..)

import Html exposing (Html, div, li, text, ul)


add2 : Int -> Int -> Int
add2 int1 int2 =
    int1 + int2


add3 : Float -> Float -> Float -> Float
add3 val1 val2 val3 =
    val1 + val2 + val3


calc : Int -> Int -> (Int -> Int -> Int) -> Int
calc int1 int2 operator =
    operator int1 int2


type alias Language =
    { name : String, releaseYear : Int, currentVersion : String }


language : List Language
language =
    [ { name = "Elm", releaseYear = 2012, currentVersion = "0.19.1" }
    , { name = "javascript", releaseYear = 1995, currentVersion = "ECMAScript 2025" }
    ]


languageNames : List Language -> List String
languageNames lista =
    List.map .name lista


type alias Students =
    { name : String, uType : String }


students : List Students
students =
    [ { name = "Roberto", uType = "Student" }
    , { name = "Mitsiu", uType = "Professor" }
    ]


onlyStudents : List Students -> List String
onlyStudents lista2 =
    List.map
        (\u ->
            if u.uType == "Student" then
                u.name

            else
                ""
        )
        lista2


type alias Videogame =
    { title : String, releaseYear : Int, available : Bool, downloads : Int, genres : List String }


videogame : List Videogame
videogame =
    [ { title = "Control", releaseYear = 2019, available = True, downloads = 1234567, genres = [ "Action", "Shooter" ] }
    , { title = "Ocarina of time", releaseYear = 1998, available = False, downloads = 12345, genres = [ "Action", "Adventure" ] }
    ]


getVideogameGenres : List Videogame -> List (List String)
getVideogameGenres lista3 =
    List.map .genres lista3


type alias Laptop =
    { brand : String, model : String, ram : String, screenSize : String }


myLaptop : Laptop
myLaptop =
    { brand = "Apple", model = "MacBook Pro", ram = "16GB", screenSize = "14 pulgadas" }


main : Html msg
main =
    div []
        [ div []
            [ ul []
                [ li [] [ text ("Ram: " ++ .ram myLaptop) ]
                , li [] [ text ("Modelo: " ++ .model myLaptop) ]
                , li [] [ text ("Marca: " ++ .brand myLaptop) ]
                , li [] [ text ("Pulgadas: " ++ .screenSize myLaptop) ]
                ]
            ]
        ]
