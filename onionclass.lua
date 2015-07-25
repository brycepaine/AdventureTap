display.setStatusBar( display.HiddenStatusBar )
 require 'class'

 Onion = class(function(onion,x,y)



onion_options = 
	{
		-- Required params
		width = 36.5,
		height = 48,
		numFrames = 2,
		-- content scaling
		sheetContentWidth = 73,
		sheetContentHeight =48,
	}

	onionSheet = graphics.newImageSheet( "Onion.png", onion_options )
	onion = display.newSprite( onionSheet, { name="onion", start=1, count=2, time=1200 } )
	onion.anchorX = 0.5
	onion.anchorY = 0.5
	onion.x = x
	onion.y = y
	onion:play()



-- local function completeListener ( obj )
   
--    transition.to( onion, { time=10000, x=600, y=500, transition=easing.continuousLoop, onComplete=completeListener  } )
-- end

-- 	transition.to( onion, { time=10000, x=600, y=500, transition=easing.continuousLoop, onComplete=completeListener  } )

end)



