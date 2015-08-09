display.setStatusBar( display.HiddenStatusBar )
require 'onionclass'
require 'bearclass'
require 'class'
require 'heroclass'





require 'treeMclass'
require 'uglyonionclass'
require 'whiteCclass'

local physics = require ("physics")
physics.start()
physics.setGravity( 0, 0 )

math.randomseed(os.time()) 

local hero
local exp
local onionTable = {}

local addHeroPower = display.newImage("yellowsquare.png", 300,1200)
addHeroPower.name = "addPlayers"
physics.addBody( addHeroPower, "static" )

local telePower = display.newImage("bluesquare.png", 500,1200)
telePower.name = "tele"
physics.addBody( telePower, "static" )

local gunPower = display.newImage("redsquare.png", 700,1200)
gunPower.name = "gunP"
physics.addBody( gunPower, "static" )


for i = 0, 17 do
  	onionTable[i] = Onion()
end

for i = 0, 10 do
	Bear()
end

for i = 0, 10 do
	Treem()
end

for i = 0, 13 do
	UglyO()
end

for i =0, 5 do
	WhiteC()
end

local function scrollDown(event)
	print(onionTable[1])
end

--powerupfucntion that makes player bigger or adds players next to him
local function addPlayers(event)
	
	h_options = 
	{
		-- Required params
		width = 46,
		height = 50,
		numFrames = 2,
		-- content scaling
		sheetContentWidth = 92,
		sheetContentHeight =50,
	}

	hSheet = graphics.newImageSheet( "hero.png", h_options )
	 local HeroPower= display.newSprite( hSheet, { name="HeroPower", start=1, count=2, time=1200 } )
	 HeroPower.anchorX = 0.5
	HeroPower.anchorY = 0.5
	HeroPower.x = herox
	HeroPower.y = hero.y
	HeroPower.exp = exp
	HeroPower:play()
	physics.addBody(HeroPower)
	HeroPower:scale( 2, 2 )
	 transition.to( HeroPower, { time=10000, y=100} )
	 HeroPower.name = "heropower"
end


--teleport player to random position
local function teleport(player)
	print("teleport function")
	player.x = math.random(10,800)
	

	print("player.x" .. player.x)
	print("player.y" .. player.y)
end

local function equipGun(player)
	print("gun equiped")
end

local function moveHero( event )
    herox = event.x
    
    
    Runtime:removeEventListener( "touch", moveHero )
    return Hero(herox, 1400)
end



local function onCollision(event)
	print(event.object2.exp)
	if (event.phase == "began") then

		--switch objects if heropower is hit 
		if(event.object1.name == "heropower") then
			local s = event.object1
			event.object1 = event.object2
			event.object2 = s
		end
	

		print(event.object1.name)
		print(event.object2.name)
		
		--transition.to(event.object2, {y = event.object2.y + 10, time = 10} )

		if(event.object1.name == "addPlayers") then
			event.object1:removeSelf( )
			hero = event.object2
			exp = event.object2.exp
			timer.performWithDelay(50, addPlayers)
			event.object2:removeSelf( )

		elseif(event.object1.name == "tele") then
			event.object1:removeSelf()
			local myTele = function() return teleport(event.object2) end
			timer.performWithDelay(50, myTele, 1)

		elseif(event.object1.name == "gunP") then
			event.object1:removeSelf( )
			local myGun = function() return equipGun(event.object2) end
			timer.performWithDelay( 50, myGun,1 )

		----game over of player has less exp
		elseif(event.object2.exp < event.object1.exp ) then
			
			event.object2:removeSelf()
	
		
		---else add exp to the player and do collision
		elseif(event.object2.exp >= event.object1.exp ) then
		 	event.object2.exp = event.object2.exp + event.object1.exp

		 
		 	event.object1:removeSelf()
		 	
		 	

		 end
		
	end
end


Runtime:addEventListener( "touch", moveHero )
Runtime:addEventListener( "collision", onCollision )
timer.performWithDelay( 1, scrollDown )







