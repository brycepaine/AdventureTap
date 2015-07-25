display.setStatusBar( display.HiddenStatusBar )
require 'onionclass'
require 'bearclass'

require 'heroclass'

require 'treeMclass'
require 'uglyonionclass'
require 'whiteCclass'

math.randomseed(os.time()) 

for i = 0, 17 do
 Onion()
end

for i = 0, 10 do
	Bear()
end


local function moveHero( event )
   local herox = event.x
    Hero(herox)
    Runtime:removeEventListener( "touch", moveHero )
end

Runtime:addEventListener( "touch", moveHero )
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

for i = 0, 10 do
Treem()
end

for i = 0, 13 do
UglyO()
end

for i =0, 5 do
WhiteC()
end






