module Main exposing (main)
{-| The main module to use for the entire project.
-}

import Html exposing (Html, div, a, text, li, ul)
import Html.Attributes exposing (id, href)

type alias Url = String

type alias Location =
  { url: Url
  , text: String
  }

getLocation : Location -> Html msg
getLocation location =
  li []
    [ a
      [ href location.url ]
      [ text location.text ]
    ]


main =
  div [id "locations"]
    [
      ul []
        [ getLocation
          { url = "https://twitter.com/a_baez"
          , text = "Alejandro Baez"
          }
        , getLocation
          { url = "http://brunch.io"
          , text = "Brunch"
          }
        ]

    ]
