module Writer exposing (Writer)

import Array exposing (Array)


type alias Writer a v =
    { string : String -> v
    , bool : Bool -> v
    , int : Int -> v
    , float : Float -> v
    , null : v
    , list : (a -> v) -> List a -> v
    , array : (a -> v) -> Array a -> v
    , object : List ( String, v ) -> v
    }
