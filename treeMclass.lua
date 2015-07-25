display.setStatusBar( display.HiddenStatusBar )
 require 'class'
 

 Treem = class(function(treem,x,y)



treem_options = 
	{
		-- Required params
		width = 45,
		height = 46,
		numFrames = 2,
		-- content scaling
		sheetContentWidth = 90,
		sheetContentHeight =46,
	}

	treemSheet = graphics.newImageSheet( "TreeMonster.png", treem_options )
	treem = display.newSprite( treemSheet, { name="treem", start=1, count=2, time=1200 } )
	treem.anchorX = 0.5
	treem.anchorY = 0.5
	treem.x = x
	treem.y = y
	treem:play()



-- local function completeListener ( obj )
   
--    transition.to( treem, { time=10000, x=600, y=500, transition=easing.continuousLoop, onComplete=completeListener  } )
-- end

-- 	transition.to( treem, { time=10000, x=600, y=500, transition=easing.continuousLoop, onComplete=completeListener  } )

end)

bb1 = Treem(600,500)
bb2 = Treem(200,300)
bb3 = Treem(400,400)
bb4 = Treem(100,500)
bb5 = Treem(300,500)
o6 = Onion(100,400)

