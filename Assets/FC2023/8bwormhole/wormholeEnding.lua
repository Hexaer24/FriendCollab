-- store the badeline entity outside the functions, so it can be accessed whenever necessary
local badeline = nil

local function badeline_appears(left_side)
  -- determine the position and flipping properties
  local pos_x, scale
  if left_side then
    pos_x = player.Position.X - 18
    scale = 1
  else
    pos_x = player.Position.X + 18
    scale = -1
  end
  local pos_y = player.Position.Y - 8

  -- create and add a new badeline dummy entity
  badeline = celeste.BadelineDummy(vector2(pos_x, pos_y))
  badeline.Sprite.Scale.X = scale
  getLevel():Add(badeline)

  -- play sound + effect
  getLevel().Displacement:AddBurst(badeline.Center, 0.5, 8, 32, 0.5)
  playSound("event:/char/badeline/maddy_split", badeline.Position)


  -- wait until the next frame so all that can take effect properly
  wait()
end

local function badeline_vanishes()
  -- tell the badeline entity to disappear
  badeline:Vanish()
  Input.Rumble(getEnum("Celeste.RumbleStrength", "Medium"), getEnum("Celeste.RumbleLength", "Medium"))
  -- clear the stored variable so the memory can be used for something else
  badeline = nil

  -- wait until the next frame
  wait()
end

function onBegin(room)
  disableMovement()
  badeline_appears()
  say("hexaer_8bwormhole_badeline1")
  wait(0.5)
  say("hexaer_8bwormhole_ending2")
  badeline_vanishes()
end

function onEnd(room, wasSkipped)
  if badeline then
    badeline:RemoveSelf()
    badeline = nil
  end
  enableMovement()
end

  --say("hexaer_8bwormhole_ending2")
  --walk(5)
  --walk(-5)
  --say("hexaer_8bwormhole_ending3")
  --walk(-2)
  --say("hexaer_8bwormhole_ending4")