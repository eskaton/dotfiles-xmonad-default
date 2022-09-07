module XMonad.Additions.Keys (
   programsMap, browser, xmobar, extraKeys, extraMouseBindings
) where

import qualified Data.Map as M
import qualified XMonad.StackSet as W
import XMonad
import XMonad.Additions.Layout

lbin = "/usr/local/bin"

xmobar home = lbin ++ "/xmobar -i " ++ home ++ "/.xmobar.d/icons ~/.xmobarrc"
firefox = lbin ++ "/firefox"
chrome = lbin ++ "/chrome"
gvim = lbin ++ "/gvim"

browser = chrome

extraKeys = []

extraMouseBindings = []

programsMap home = M.fromList $ [
        ((0, xK_c), spawn chrome)
      , ((0, xK_f), spawn firefox)
      , ((0, xK_g), spawn gvim)
      ]
