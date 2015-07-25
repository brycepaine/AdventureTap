display.setStatusBar( display.HiddenStatusBar )
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
	bear.y = math.random(900,1200)
	bear:play()


local trans2
local t1
local function trans1 ( )
   
   t1 =transition.to( bear, { time=1000, delay = bear.x,x=bear.x+50,  onComplete=trans2 } )
end

trans2 = function ()
	t1 = transition.to( bear, { time=1000, x=bear.x - 50,  onComplete=trans1} )
end

trans1()



end)
math.randomseed(os.time()) 

for i = 0, 17 do
 Bear()
end

-- bb11 = Bear(math.random(300,700),math.random(900,1200))
-- bb12 = Bear(math.random(600,800),math.random(900,1200))
-- bb13 = Bear(math.random(0,400),math.random(900,1200))
-- bb11 = Bear(math.random(300,700),math.random(900,1200))
-- bb12 = Bear(math.random(600,800),math.random(900,1200))
-- bb13 = Bear(math.random(0,400),math.random(900,1200))
-- bb11 = Bear(math.random(300,700),math.random(900,1200))
-- bb12 = Bear(math.random(600,800),math.random(900,1200))
-- bb13 = Bear(math.random(0,400),math.random(900,1200))
-- bb11 = Bear(math.random(300,700),math.random(900,1200))
-- bb12 = Bear(math.random(600,800),math.random(900,1200))
-- bb13 = Bear(math.random(0,400),math.random(900,1200))
-- bb11 = Bear(math.random(300,700),math.random(900,1200))
-- bb12 = Bear(math.random(600,800),math.random(900,1200))
-- bb13 = Bear(math.random(0,400),math.random(900,1200))
-- bb14 = Bear(200,1075)
-- bb15 = Bear(400,1075)
-- bb16 = Bear(800,1075)



