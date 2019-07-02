module Json.Writer exposing (jsonWriter)

import Json.Encode as Encode exposing (Value)
import Writer exposing (Writer)


jsonWriter : Writer a Value
jsonWriter =
    { string = Encode.string
    , bool = Encode.bool
    , int = Encode.int
    , float = Encode.float
    , null = Encode.null
    , list = Encode.list
    , array = Encode.array
    , object = Encode.object
    }
