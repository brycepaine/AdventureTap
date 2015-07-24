display.setStatusBar( display.HiddenStatusBar )
 require 'class'

 Bear = class(function(bear,x,y)



bear_options = 
	{
		-- Required params
		width = 42.5,
		height = 43,
		numFrames = 2,
		-- content scaling
		sheetContentWidth = 85,
		sheetContentHeight =43,
	}

	bearSheet = graphics.newImageSheet( "BrownBear.png", bear_options )
	bear = display.newSprite( bearSheet, { name="bear", start=1, count=2, time=1200 } )
	bear.anchorX = 0.5
	bear.anchorY = 0.5
	bear.x = x
	bear.y = y
	bear:play()



-- local function completeListener ( obj )
   
--    transition.to( bear, { time=10000, x=600, y=500, transition=easing.continuousLoop, onComplete=completeListener  } )
-- end

-- 	transition.to( bear, { time=10000, x=600, y=500, transition=easing.continuousLoop, onComplete=completeListener  } )

end)

bb1 = Bear(600,500)
bb2 = Bear(200,300)
bb2 = Bear(400,400)
bb2 = Bear(100,500)
bb2 = Bear(300,500)

