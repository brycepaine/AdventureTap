
 require 'class'
 
 WhiteC = class(function(whiteC)



whiteC_options = 
	{
		-- Required params
		width = 41,
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
	whiteC.x = math.random(0,800)
	whiteC.y = math.random(70,200)
	whiteC:scale(3,3)
	whiteC:play()

	physics.addBody( whiteC )
	whiteC.bodyType = "static"

	whiteC.exp = 30


local trans2
local t1
local function trans1 ( )
   
   t1 =transition.to( whiteC, { time=1000, delay = math.random(0,1000),x=whiteC.x+50,  onComplete=trans2 } )
end

trans2 = function ()
	t1 = transition.to( whiteC, { time=1000, x=whiteC.x - 50,  onComplete=trans1} )
end

trans1()



end)


