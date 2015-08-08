 require 'class'

 Onion = class(function(onion)


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
	onion.x = math.random(0,800)
	onion.y = math.random(900,1200)
	onion:play()

	physics.addBody(onion)	
	onion.bodyType = "static"

	onion.exp = 1

	


local trans2
local t1
local function trans1 ( )
   
   		t1 =transition.to( onion, { time=1000, delay = math.random(0,1000),x=onion.x+50,  onComplete=trans2 } )
	
end

trans2 = function ()
	
	--print(onion.x)
	if(onion.x == nil) then return end
		t1 = transition.to( onion, { time=1000, x=onion.x - 50,  onComplete=trans1} )
	
end


trans1()

function destroy(obj)
	obj.alpha = 0
end



end)



