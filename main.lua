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


for i = 0, 17 do
  	Onion()
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

		----game over of player has less exp
		if(event.object2.exp < event.object1.exp) then
			
			event.object2:removeSelf()
	
		end
		---else add exp to the player and do collision
		if(event.object2.exp >= event.object1.exp) then
		 	event.object2.exp = event.object2.exp + event.object1.exp

		 
		 	event.object1:removeSelf()
		 
		 	

		 end

	end
end



Runtime:addEventListener( "touch", moveHero )
Runtime:addEventListener( "collision", onCollision )








