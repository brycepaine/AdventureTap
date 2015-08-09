
display.setStatusBar( display.HiddenStatusBar )
require 'onionclass'
require 'bearclass'
require 'heroclass'
require 'class'
require 'heroclass'


require 'treeMclass'
require 'uglyonionclass'
require 'whiteCclass'
local storyboard = require ("storyboard")
local scene = storyboard.newScene()


local hero
local exp
local onionTable = {}
local physics = require ("physics")
physics.start()
physics.setGravity( 0, 0 )
math.randomseed(os.time()) 


function scene:createScene(event)

	local screenGroup = self.view
	local addHeroPower = display.newImage("yellowsquare.png", 300,1200)
	addHeroPower.name = "addPlayers"
	physics.addBody( addHeroPower, "static" )

	local telePower = display.newImage("bluesquare.png", 500,1200)
	telePower.name = "tele"
	physics.addBody( telePower, "static" )

	local gunPower = display.newImage("redsquare.png", 700,1200)
	gunPower.name = "gunP"
	physics.addBody( gunPower, "static" )

	bg = display.newImageRect('finalforest.png',800,1400)
	bg.anchorX = 0
	bg.anchorY = 1
	bg.x = 0
	bg.y = display.contentHeight-20
	bg:toBack()
	
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

	
end

--put functions here
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



local function checkMemory()
   collectgarbage( "collect" )
   local memUsage_str = string.format( "MEMORY = %.3f KB", collectgarbage( "count" ) )
   print( memUsage_str, "TEXTURE = "..(system.getInfo("textureMemoryUsed") / (1024 * 1024) ) )
end


function scene:enterScene(event)
	Runtime:addEventListener( "touch", moveHero )
	Runtime:addEventListener( "collision", onCollision )
	scroll=timer.performWithDelay( 1, scrollDown )
	
end

function scene:exitScene(event)
	Runtime:removeEventListener("touch",moveHero)
	Runtime:removeEventListener( "collision", onCollision )
	timer.cancel( scroll )
end

function scene:destroyScene(checkMemory)

end


scene:addEventListener("createScene", scene)
scene:addEventListener("enterScene", scene)
scene:addEventListener("exitScene", scene)
scene:addEventListener("destroyScene", scene)

return scene













