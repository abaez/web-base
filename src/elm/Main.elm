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
          { url = "https://pugjs.org/api/getting-started.html"
          , text = "Pug"
          }
        , getLocation
          { url = "http://brunch.io"
          , text = "Brunch"
          }
        , getLocation
          { url = "http://elm-lang.org"
          , text = "Elm"
          }
        , getLocation
          { url = "http://lesscss.org"
          , text = "Less"
          }
        ]

    ]
