
 require 'class'
 
 UglyO = class(function(uglyO)



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
	uglyO.x = math.random(0,800)
	uglyO.y = math.random(600,1100)
	uglyO:scale(1.3,1.3)
	uglyO:play()

	physics.addBody(uglyO)
	uglyO.bodyType = "static"

	uglyO.exp = 2


local trans2
local t1
local function trans1 ( )
   
   t1 =transition.to( uglyO, { time=1000, delay = math.random(0,1000),x=uglyO.x+50,  onComplete=trans2 } )
end

trans2 = function ()
	t1 = transition.to( uglyO, { time=1000, x=uglyO.x - 50,  onComplete=trans1} )
end

trans1()



end)



