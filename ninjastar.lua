require 'class'

Ninja = class(function(ninja, x, y)


	ninja = display.newImage( "yellowsquare.png",   130,130  )
	ninja.x = x
	ninja.y = y

	physics.addBody(ninja)
	ninja.bodyType = "static"
	ninja.name = "ninja"

	ninja.exp = 0







end)