local fireball = {}

fireball.name = "FC2023/CustomFireball"
fireball.depth = 0
fireball.nodeLineRenderType = "line"
fireball.nodeLimits = {0, -1}
fireball.fieldInformation = {
    amount = {
        fieldType = "integer",
    }
}

fireball.placements = {
    {
        name = "fireball",
        data = {
            amount = 3,
            offset = 0.0,
            speed = 1.0
        }
    }
}

fireball.texture = "objects/fireball/fireball08"

return fireball