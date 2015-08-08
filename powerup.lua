
local powerup = {}
local powerup_mt = { __index = powerup }	-- metatable


-------------------------------------------------
-- PUBLIC FUNCTIONS
-------------------------------------------------

function powerup.new( xPos, yPos )	-- constructors

	local newPowerup = display.newImage("yellowsquare.png", 35, 35)
		
	newPowerup.x = xPos
	newPowerup.y = yPos

	physics.addBody(newPowerup)
	newPowerup.bodyType = "static"
	powerup.exp = 0 
	
	return setmetatable( newPowerup, powerup_mt )
end



return powerup