module Main where

import Prelude(show, id, bind, (<>), (>>=))
import Control.Monad.Eff (Eff)
import Graphics.D3.Base
import Graphics.D3.Scale (domain, range, toFunction, linearScale)
import Graphics.D3.Util as Util
import Graphics.D3.Selection (selectAll, bindData, enter, style', text', append, rootSelect, Selection)

array :: Array Number
array = [4.0, 8.0, 15.0, 16.0, 23.0, 42.0, 11.2]

-- Alias .. as bind
-- https://github.com/purescript/purescript-prelude/blob/master/src/Control/Bind.purs#L49
infixr 1 bind as ..

main :: forall e. Eff (d3 :: D3 | e) (Selection Number)
main = do
  x <- linearScale
    >>= domain [0.0, Util.max' id array]
    >>= range [0, 820]
    >>= toFunction

  rootSelect ".chart"
    >>= selectAll "div"
      >>= bindData array
    >>= enter >>= append "div"
      >>= style' "width" (\d -> show (x d) <> "px")
      >>= style' "background" (\d -> "red")
      >>= text' show
