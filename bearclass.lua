
require 'class'
 Bear = class(function(bear)



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
	bear.x = math.random(0,800)
	bear.y = math.random(350,800)
	bear:scale(1.5,1.5)
	bear:play()

	physics.addBody(bear)
	bear.bodyType = "static"

	bear.exp = 5

local trans2
local t1
local function trans1 ( )
   
   t1 =transition.to( bear, { time=1000, delay = math.random(0,1000),x=bear.x+50,  onComplete=trans2 } )
end

trans2 = function ()
	t1 = transition.to( bear, { time=1000, x=bear.x - 50,  onComplete=trans1} )
end

trans1()



end)



