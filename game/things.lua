-- some "default" colors
White = Color.new(255, 255, 255)
Black = Color.new(0, 0, 0)
Blue = Color.new(0, 0, 255)
Red = Color.new(255, 0, 0)
Green = Color.new(0, 255, 0)
Cyan = Color.new(0, 255, 255)
Gray = Color.new(128, 128, 128)
Pink = Color.new(255, 0, 140)
Orange = Color.new(255, 140, 0)



-- to move we use padX & padY
function padX (x, speed)
      if (control:right() == true) then
      x = x + speed
      end
      if (control:left() == true) then
      x = x - speed
      end
      return x
    end
function padY (y, speed)
      if (control:up() == true) then
      y = y - speed
      end
      if (control:down() == true) then
      y = y + speed
      end
      return y
    end

-- useless... but is beatifull
function update ()
         screen.flip()
         screen.waitVblankStart()
         return 0
end

-- cube drawing
function Cube (x,y,size)
         local ox  = screen:width() / 2
         local oy = screen:height()/ 2

         local ax = boxX
         local ay = boxY

         local bx = boxX + size
         local by = boxY

         local cx = boxX
         local cy = boxY + size

         local dx = boxX + size
         local dy = boxY + size

         --screen:drawLine(ax,ay,ox,oy, Black)
         --screen:drawLine(bx,by,ox,oy, Red)
         --screen:drawLine(cx,cy,ox,oy, Green)
         --screen:drawLine(dx,dy,ox,oy, Blue)

         screen:drawLine(ax,ay,bx,by, Black)
         screen:drawLine(bx,by,dx,dy, Black)
         screen:drawLine(cx,cy,dx,dy, Black)
         screen:drawLine(cx,cy,ax,ay, Black)

         local ex = (ax + ox)/2
         local ey = (ay + oy)/2

         local fx = (bx + ox)/2
         local fy = (by + oy)/2

         local gx = (cx + ox)/2
         local gy = (cy + oy)/2

         local hx = (dx + ox)/2
         local hy = (dy + oy)/2

         screen:drawLine(ax,ay,ex,ey, Black)
         screen:drawLine(bx,by,fx,fy, Red)
         screen:drawLine(cx,cy,gx,gy, Green)
         screen:drawLine(dx,dy,hx,hy, Blue)

         screen:drawLine(ex,ey,fx,fy, Black)--
         screen:drawLine(fx,fy,hx,hy, Red)
         screen:drawLine(gx,gy,hx,hy, Green)
         screen:drawLine(gx,gy,ex,ey, Blue)



         return 0
end
