local refill = {}

refill.name = "refill"
refill.depth = -100
refill.placements = {
    {
        name = "one_dash",
        data = {
            oneUse = false,
            twoDash = false
        }
    },
    {
        name = "two_dashes",
        data = {
            oneUse = false,
            twoDash = true
        }
    }
}

function refill.texture(room, entity)
    return entity.twoDash and "objects/reflectionHeart/gem" or "objects/refill/idle00"
end

return refill