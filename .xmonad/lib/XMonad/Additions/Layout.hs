module XMonad.Additions.Layout (myExtraWorkspaces, myWorkspaces, myLayout) where

import XMonad
import XMonad.Hooks.ManageDocks
import XMonad.Layout.Fullscreen
import XMonad.Layout.Grid
import XMonad.Layout.NoBorders
import XMonad.Layout.PerWorkspace
import XMonad.Layout.Tabbed
import XMonad.Layout.ThreeColumns

myExtraWorkspaces = []

myWorkspaces = ["1", "2", "3", "4", "5", "6", "7:dev", "8:ide", "9:web"] ++ (map snd myExtraWorkspaces)

myLayout = onWorkspace "8:ide" ideLayout $
    onWorkspace "9:web" fullscreenLayout $
    avoidStruts (
      Tall 1 (3/100) (1/2) |||
      Mirror (Tall 1 (3/100) (1/2)) |||
      Grid |||
      ThreeColMid 1 (3/100) (1/3) |||
      tabbed shrinkText tabConfig |||
      noBorders (fullscreenFull Full))
   where
      ideLayout = fullscreenLayout ||| (avoidStruts $ Tall 1 (3/100) (1/2))
      fullscreenLayout = (noBorders (fullscreenFull Full)) ||| (avoidStruts $ Full)
      tabConfig = def {
         activeBorderColor = "#193375",
         activeTextColor = "#a0a0a0",
         activeColor = "#282828",
         inactiveBorderColor = "#343434",
         inactiveTextColor = "#757575",
         inactiveColor = "#141414",
         fontName = "-*-Fixed-Bold-R-Normal-*-15-*-*-*-*-*-*-*222"
      }
