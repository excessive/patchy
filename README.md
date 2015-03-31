# Patchy

Simple 9patch library for LÖVE

# Usage

```
local patchy = require "patchy"

function love.load()
	-- load up the 9patch image
	button = patchy.load("button.9.png")
end

function love.draw()
	-- draw button, store returned content box (defined by 9patch padding)
	-- you can also access the content box by calling button:get_content_box()
	local cx, cy, cw, ch = button:draw(50, 50, 150, 50)

	-- ...and draw some text over it, or whatever else you might want to do!
	love.graphics.setColor(0, 0, 0, 255)
	love.graphics.printf("Hello World", cx, cy, cw, "center")
end
```

# License

The MIT License (MIT)

Copyright (c) 2015 Pablo Mayobre, Colby Klein, Landon Manning

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.
