fade(1)
flimit(30)
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

function erase_print(message, x, y)
   for i = 0, string.len(message) do
      tile(0, x + i, y, 1)
   end
end

fade(0)

print("Linux Day", 1, 1)
print("Rieti 2022", 1, 2)

print("Press arrow buttons", 1, 4)

draw_img(2, 10, 2, 14, 14)

x = 10
y = 2
print_debug = false
print_notice = true
change_image = false
while true do
   clear()

   -- if pressed start
   if btnp(2) then
      print_debug = true
   end
   
   if print_notice and (btnp(4) or btnp(5) or btnp(6) or btnp(7)) then
      print_notice = false
      erase_print("Press arrow buttons", 1, 4)      
   end

   -- if unpressed
   if btnnp(2) then
      print_debug = false
      erase_print('RAM:00000Kb', 1, 16)
      erase_print('FPS:0000', 1, 17)
   end

   -- if pressed A
   if btnp(0) then
      txtr(2, "tiles/mte90.bmp")
   end

   -- if unpressed
   if btnnp(0) then
      txtr(2, "tiles/lug2.bmp")
   end

   if btn(4) or btn(5) or btn(6) or btn(7) then
      if btn(4) then
         x = x + 1
      elseif btn(5) then
         x = x - 1
      elseif btn(6) then
         y = y + 1
      elseif btn(7) then
         y = y - 1
      end

      scroll(2, x, y)
   end

   if print_debug then
      -- Ram usage
      print('RAM:' .. tostring(collectgarbage("count") * 1024):sub(1,-3) .. 'Kb', 1, 16)
   end

   display()
end
