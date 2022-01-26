for i, belt in pairs(data.raw["transport-belt"]) do
    print(belt.name)
    if belt.belt_speed then
        belt.belt_speed = 10
    end
end