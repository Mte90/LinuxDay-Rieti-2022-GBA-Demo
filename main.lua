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

print("Linux Day", 1, 1)
print("Rieti 2022", 1, 2)
draw_img(2, 10, 2, 14, 14)

fade(0)

while true do

   -- update logic here:

   clear()

   -- graphics updates here:

   display()
end
