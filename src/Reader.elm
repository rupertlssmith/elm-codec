module Reader exposing (Reader)


type alias Reader a b v da db dv dstring dbool dint dfloat dlist darray ddict dmaybe =
    { string : dstring
    , bool : dbool
    , int : dint
    , float : dfloat
    , list : da -> dlist
    , array : da -> darray
    , dict : da -> ddict
    , field : String -> da -> da
    , index : Int -> da -> da
    , maybe : da -> dmaybe
    , oneOf : List da -> da
    , map : (a -> v) -> da -> dv
    , map2 : (a -> b -> v) -> da -> db -> dv
    , lazy : (() -> da) -> da
    , succeed : a -> da
    , fail : String -> da
    , andThen : (a -> db) -> da -> db
    }
