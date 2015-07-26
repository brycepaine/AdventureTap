
 require 'class'
 

 Treem = class(function(treem)



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
	treem.x = math.random(0,800)
	treem.y = math.random(250,700)
	treem:scale(1.6,1.6)
		treem:play()

	physics.addBody( treem)
	treem.bodyType = "static"

	treem.exp = 10


local trans2
local trans3
local trans4
local trans5
local t1
-- local function trans1 ( )
   
--    t1 =transition.to( treem, { time=1000, delay = treem.x, x=treem.x+50,  onComplete=trans2 } )
-- end

local function trans5()
	t1 = transition.to(treem, {time = 1000, x = treem.x + 50, y = treem.y + 50, onComplete = trans2})
end
trans4 = function()
	t1 = transition.to(treem, {time = 1000, x = treem.x + 50, y = treem.y - 50, onComplete = trans5})
end
trans3 = function()
	t1 = transition.to(treem,{time = 1000, delay = treem.x, x = treem.x - 50, onComplete = trans4})
end
trans2 = function ()
	t1 = transition.to( treem, { time=1000, x=treem.x - 50,  onComplete=trans3} )
end



trans2()



end)
