-- this is just a convenience file.
local current_folder = (...):gsub('%.[^%.]+$', '') .. "."
return require(current_folder .. "patchy")
