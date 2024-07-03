local drawableSprite = require("structs.drawable_sprite")

local myFireball = {}

myFireball.name = "FC2023/MyFireball"
myFireball.depth = 10000

-- Offset is from sprites.xml, not justifications

local texture = "characters/theoCrystal/idle00"
local sprite = drawableSprite.fromTexture(texture, entity)

function myFireball.sprite(room, entity)
    local sprite = drawableSprite.fromTexture(texture, entity)
    return sprite
end
myFireball.placements = {
    name = "fireball",
    data = {
        test = "test"
    }
}
return myFireball
