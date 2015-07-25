display.setStatusBar( display.HiddenStatusBar )
 require 'class'
 
 WhiteC = class(function(whiteC,x,y)



whiteC_options = 
	{
		-- Required params
		width = 41.5,
		height = 44,
		numFrames = 2,
		-- content scaling
		sheetContentWidth = 83,
		sheetContentHeight =44,
	}

	whiteCSheet = graphics.newImageSheet( "WhiteCyclops.png", whiteC_options )
	whiteC = display.newSprite( whiteCSheet, { name="whiteC", start=1, count=2, time=1200 } )
	whiteC.anchorX = 0.5
	whiteC.anchorY = 0.5
	whiteC.x = x
	whiteC.y = y
	whiteC:play()



-- local function completeListener ( obj )
   
--    transition.to( whiteC, { time=10000, x=600, y=500, transition=easing.continuousLoop, onComplete=completeListener  } )
-- end

-- 	transition.to( whiteC, { time=10000, x=600, y=500, transition=easing.continuousLoop, onComplete=completeListener  } )

end)


