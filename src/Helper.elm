module Helper exposing (..)

import Html.Attributes exposing (name)



-- add2


add2 : Int -> Int -> Int
add2 int1 int2 =
    int1 + int2



-- add3


add3 : Float -> Float -> Float -> Float
add3 val1 val2 val3 =
    val1 + val2 + val3



-- calc


calc : Int -> Int -> (Int -> Int -> Int) -> Int
calc int1 int2 operator =
    operator int1 int2


type alias Language =
    { name : String, releaseYear : Int, currentVersion : String }


language : List Language
language =
    [ { name = "Elm"
      , releaseYear = 2012
      , currentVersion = "0.19.1"
      }
    , { name = "javascript"
      , releaseYear = 1995
      , currentVersion = "ECMAScript 2025"
      }
    ]


languageNames : List Language -> List String
languageNames lista =
    List.map .name lista


type alias Students =
    { name : String, utype : String }


students : List Students
students =
    [ { name = "Roberto"
      , utype = "Student"
      }
    , { name = "Mitsiu"
      , utype = "Professor"
      }
    ]


onlyStudents : List Students -> List String
onlyStudents lista2 =
    List.map
        (\u ->
            case .utype u of
                "Student" ->
                    .name u

                _ ->
                    ""
        )
        lista2


type alias Videogame =
    { title : String, releaseYear : Int, available : Bool, downloads : Int, genres : List String }


videogame : List Videogame
videogame =
    [ { title = "Control"
      , releaseYear = 2019
      , available = True
      , downloads = 1234567
      , genres = [ "Action", "Shooter" ]
      }
    , { title = "Ocarina of time"
      , releaseYear = 1998
      , available = False
      , downloads = 12345
      , genres = [ "Action", "Adventure" ]
      }
    ]


getVideogameGenres : List Videogame -> List String
getVideogameGenres lista3 =
    List.concatMap .genres lista3
