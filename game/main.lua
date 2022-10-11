-- "Hello, world!" for PlayStation 2

dofile("things.lua")



box = Image.createEmpty(50, 50)

boxX = 50
boxY = 50



while true do
control = Controls.read()
screen:clear(White)

Cube(boxX,boxY,50)

boxX = padX(boxX,1)
boxY = padY(boxY,1)

screen:blit(boxX,boxY, box)


update()
end

