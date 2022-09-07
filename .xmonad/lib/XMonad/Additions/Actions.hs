module XMonad.Additions.Actions (myManageHook) where

import XMonad
import XMonad.Hooks.ManageHelpers

myManageHook :: ManageHook
myManageHook = composeAll [
      className =? "Firefox"                     --> doShift "9:web"
    , className =? "Chromium-browser"            --> doShift "9:web"
    , className =? "pinentry-qt5"                --> doCenterFloat
    ] 
