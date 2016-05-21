{-
I will use Html and mouse changes in position
to make my sparkles happen
-}
import Html exposing (..)
import Html.Attributes exposing (..)
import Mouse exposing (..)

{-
toString is a function that takes a number
and returns a string

pixelify takes a number and
returns string with px at the end
-}
pixelify : Int -> String
pixelify number =
  toString number ++ "px"

{-
inline style example
-}
mainStyle : Attribute msg
mainStyle = 
  style
    [ ("width", "100%")
    , ("height", "100%")
    , ("position", "relative")
    ]

bryanStyle : Attribute msg
bryanStyle =
  style
    [ ("backgroundColor", "#C001AF")
    , ("color", "#BADA55")
    , ("height", pixelify 90)
    , ("width", "100%")
    ]
  
sparkleStyle : Int -> Int -> Int -> Attribute msg
sparkleStyle positionX positionY fontSize = 
  style
    [ ("position", "absolute")
    , ("left", pixelify positionX)
    , ("top", pixelify positionY)
    , ("fontSize", pixelify fontSize)
    , ("color", "orange")
    ]

{-
sparkle is a span of absolute positioning...
-}
sparkle positionX positionY fontSize =
  span [sparkleStyle positionX positionY fontSize] [text "*"]


{-
main is what exposes my work to the webpage
-}
main = div [ mainStyle ] 
  [ h1 [] [ text "Elm Sparkles" ]
  , div [ bryanStyle ] [ text "by Bryan" ]
  , div [] 
    [ span [] [ text "inspired by a " ]
    , a [ href "http://codepen.io/tholman/pen/jWmZxZ" ] [ text "codepen" ]
    ]
  , p [] 
    [ text 
        """
        I might as well try out the multiline string
        <b>bold</b>
        huh... that is neat.
        """
    , b [ class "bold" ] [ text "bold by elm" ]
    ]
  --,sparkles
  ]