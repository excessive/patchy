local patchy = require "patchy"

-- slipsum
local str = "You think water moves fast? You should see ice. It moves " ..
            "like it has a mind. Like it knows it killed the world once " ..
            "and got a taste for murder. After the avalanche, it took us " ..
            "a week to climb out. Now, I don't know exactly when we turned " ..
            "on each other, but I know that seven of us survived the " ..
            "slide... and only five made it out. Now we took an oath, that " ..
            "I'm breaking now. We said we'd say it was the snow that " ..
            "killed the other two, but it wasn't. Nature is lethal but it " ..
            "doesn't hold a candle to man."

local size = 250  
local speed = 30          

function love.load()
	window = patchy.load("window.9.png")
	button = patchy.load("button.9.png")
	love.graphics.setFont(love.graphics.newFont(14))
end

function love.update(dt)
	if size >= 500 then 
		speed = -speed
	elseif size <= 250 then
		speed = -speed
	end

	size = size + speed*dt
end

function love.draw()
	love.graphics.setColor(love.math.gammaToLinear(255, 255, 255, 255))

	-- draw a window full of text
	local cx, cy, cw, ch = window:draw(50, 50, size, size)
	love.graphics.setScissor(cx, cy, cw, ch)
	love.graphics.printf(str, cx, cy, cw, "justify")
	love.graphics.setScissor()

	-- draw a button inside the window's content box
	cx, cy, cw, ch = button:draw(cx, cy + ch - 30, cw, 30)
	love.graphics.setColor(0, 0, 0, 255)
	love.graphics.printf("Hello World", cx, cy + 6, cw, "center")
end
