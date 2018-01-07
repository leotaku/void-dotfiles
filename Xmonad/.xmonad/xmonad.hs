import XMonad
import XMonad.Util.EZConfig
import XMonad.Layout.Spacing
import XMonad.Layout.WindowNavigation
import XMonad.Hooks.ManageDocks

main = xmonad $ def
	{ terminal = "urxvt"
	, modMask = mod4Mask
	, borderWidth = 2
	, layoutHook = myLayoutHook
    , manageHook = manageHook defaultConfig <+> manageDocks
    , handleEventHook = handleEventHook defaultConfig <+> docksEventHook
	}

	`additionalKeysP` 
	[ ( "<XF86Launch1>"		, spawn "xautolock -locknow")
	, ( "<XF86AudioMute>"		, spawn "pactl set-sink-mute 0 toggle")
	, ( "<XF86AudioLowerVolume>"	, spawn "pactl set-sink-volume 0 -5%")
	, ( "<XF86AudioRaiseVolume>"	, spawn "pactl set-sink-volume 0 +5%")
	, ( "M-d"			, spawn "~/Scripts/dmenu-terminal5")
	, ( "M-i"			, spawn "~/Scripts/xprop")
	, ( "M-l"			, sendMessage $ Go R)
	, ( "M-h"			, sendMessage $ Go L)
	, ( "M-k"			, sendMessage $ Go U)
	, ( "M-j"			, sendMessage $ Go D)
	, ( "M-S-l"			, sendMessage $ Swap R)
	, ( "M-S-h"			, sendMessage $ Swap L)
	, ( "M-S-k"			, sendMessage $ Swap U)
	, ( "M-S-j"			, sendMessage $ Swap D)
	]

-- myLayoutHook = spacing 5 $ Tall 1 (3/100) (1/2)
myLayoutHook = avoidStruts $ windowNavigation $ spacing 3 $ Tall 1 (3/100) (1/2)
