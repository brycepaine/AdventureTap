display.setStatusBar( display.HiddenStatusBar )
 require 'class'
 
 UglyO = class(function(uglyO,x,y)



uglyO_options = 
	{
		-- Required params
		width = 42.5,
		height = 43,
		numFrames = 2,
		-- content scaling
		sheetContentWidth = 85,
		sheetContentHeight =43,
	}

	uglyOSheet = graphics.newImageSheet( "UglyOnion.png", uglyO_options )
	uglyO = display.newSprite( uglyOSheet, { name="uglyO", start=1, count=2, time=1200 } )
	uglyO.anchorX = 0.5
	uglyO.anchorY = 0.5
	uglyO.x = x
	uglyO.y = y
	uglyO:play()



-- local function completeListener ( obj )
   
--    transition.to( uglyO, { time=10000, x=600, y=500, transition=easing.continuousLoop, onComplete=completeListener  } )
-- end

-- 	transition.to( uglyO, { time=10000, x=600, y=500, transition=easing.continuousLoop, onComplete=completeListener  } )

end)



