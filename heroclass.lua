 require 'class'

 Hero = class(function(hero,x)



hero_options = 
	{
		-- Required params
		width = 46,
		height = 50,
		numFrames = 2,
		-- content scaling
		sheetContentWidth = 92,
		sheetContentHeight =50,
	}

	heroSheet = graphics.newImageSheet( "hero.png", hero_options )
	hero = display.newSprite( heroSheet, { name="hero", start=1, count=2, time=1200 } )
	hero.anchorX = 0.5
	hero.anchorY = 0.5
	hero.x = x
	hero.y = 1400
	hero:play()


local trans2
local t1
local function trans1 ( )
   
   t1 =transition.to( hero, { time=10000, y=100} )
end



trans1()



end)



