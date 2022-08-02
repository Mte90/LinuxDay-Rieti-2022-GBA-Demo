fade(1)

txtr(0, "overlay/overlay.bmp")
txtr(2, "tiles/lug2.bmp")

function draw_img(layer, x, y, w, h)
   local t = 0
   for yy = 0, h - 1 do
      for xx = 0, w - 1 do
         tile(layer, x + xx, y + yy, t)
         t = t + 1
      end
   end
end

function reset_previous_img(layer, x, y, w, h)
   for yy = 0, h - 1 do
      for xx = 0, w - 1 do
         tile(layer, x + xx, y + yy, 1)
      end
   end
end

fade(0)

print("Linux Day", 1, 1)
print("Rieti 2022", 1, 2)

print("Press arrow buttons", 1, 4)

draw_img(2, 10, 2, 14, 14)

x = 10
y = 2
while true do
   clear()
   if btn(4) or btn(5) or btn(6) or btn(7) then
      reset_previous_img(2, x, y, 14, 14)
      if btn(4) then
         x = x - 1
      elseif btn(5) then
         x = x + 1
      elseif btn(6) then
         y = y - 1
      elseif btn(7) then
         y = y + 1
      end

      draw_img(2, x, y, 14, 14)
   end

   if rline() > 30 then
      clear() -- framerate limit to max 30fps, by inserting another vsync.
   end

   -- Ram usage
   print('RAM:' .. tostring(collectgarbage("count") * 1024):sub(1,-3) .. 'Kb', 1, 16)
   print('FPS:   ', 1, 17) -- reset print area
   print('FPS:' .. tostring(rline()), 1, 17)

   display()
end
