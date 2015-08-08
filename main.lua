display.setStatusBar( display.HiddenStatusBar )
require 'onionclass'
require 'bearclass'
require 'heroclass'
require 'class'
require 'heroclass'
require 'ninjastar'
require 'star'

local powerup = require("powerup")
require 'treeMclass'
require 'uglyonionclass'
require 'whiteCclass'

local physics = require ("physics")
physics.start()
physics.setGravity( 0, 0 )

math.randomseed(os.time()) 

local star = 0
local ninjaobjx
local ninjaobjy


for i = 0, 17 do
  	Onion()
end

for i = 0, 10 do
	Bear()
end


bg = display.newImageRect('finalforest.png',800,1400)
	bg.anchorX = 0
	bg.anchorY = 1
	bg.x = 0
	bg.y = display.contentHeight-20
	bg:toBack()

for i = 0, 10 do
	Treem()
end

for i = 0, 13 do
	UglyO()
end

for i =0, 5 do
	WhiteC()
end

Ninja(500,1000)




local function moveHero( event )
    herox = event.x
    
    Runtime:removeEventListener( "touch", moveHero )
    return Hero(herox)
end



local function onCollision(event)
	if (event.phase == "began") then
		print("collision")
		print (event.object1.exp) --monster
		print (event.object2.exp) --player

		transition.to(event.object2, {y = event.object2.y + 10, time = 10} )

		--collision with powerup
		if(event.object1.name == "ninja") then

			print(event.object1.name)
			--event.object1:hello()
			print("collision with powerup")

			

		
			--return 
			--ninjaStar(event.object1.x, event.object1.y)
			event.object1:removeSelf()

			--event.object1:powercollision(event.object1.x, event.object1.y)
		


		--moves player back
		

		

		----game over of player has less exp
		elseif(event.object2.exp < event.object1.exp) then
			
			event.object2:removeSelf()
	
		
		---else add exp to the player and do collision
		elseif(event.object2.exp >= event.object1.exp) then
		 	event.object2.exp = event.object2.exp + event.object1.exp

		 
		 	event.object1:removeSelf()
		 
		 	

		 end

	end
end


Runtime:addEventListener( "touch", moveHero )
Runtime:addEventListener( "collision", onCollision )








