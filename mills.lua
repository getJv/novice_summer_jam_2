left_mill = {
    x=10,
    y=100,
    speed = 0.02, -- spin speed
    angle = 0,
    radius = 8,
    color_1 = 4,-- bigger
    color_2 = 9,-- middle
    color_3 = 15, -- smaller
    num_dots = 6, -- dots will give movement idea
}
right_mill = {
    x=117,
    y=100,
    speed = 0.02, -- spin speed
    angle = 0,
    radius = 8,
    color_1 = 4,-- bigger
    color_2 = 9,-- middle
    color_3 = 15, -- smaller
    num_dots = 6, -- dots will give movement idea
}


function update_mills()
    local direction = 1
    if player_pulling then
        left_mill.speed = 0.04
        right_mill.speed = 0.04
        direction = -1  -- right
    else
        left_mill.speed = 0.02
        right_mill.speed = 0.02
        direction = 1 -- left
    end

    left_mill.angle = left_mill.angle + left_mill.speed * direction
    if left_mill.angle > 1 then left_mill.angle = 0 end
    if left_mill.angle < 0 then left_mill.angle = 1 end

    right_mill.angle = right_mill.angle + right_mill.speed * direction
    if right_mill.angle > 1 then right_mill.angle = 0 end
    if right_mill.angle < 0 then right_mill.angle = 1 end

end

function draw_mills()
    generate_circle_mill(left_mill)
    generate_circle_mill(right_mill)
end

function generate_circle_mill(mill_obj)
    -- add mill circles
    circfill(mill_obj.x, mill_obj.y, mill_obj.radius, mill_obj.color_1)
    circfill(mill_obj.x, mill_obj.y, mill_obj.radius-2, mill_obj.color_2)
    circfill(mill_obj.x, mill_obj.y, mill_obj.radius-6, mill_obj.color_3)

    -- add movement
    for i = 0, mill_obj.num_dots - 1 do
        local dot_angle = mill_obj.angle + i / mill_obj.num_dots
        local px = mill_obj.x + cos(dot_angle) * mill_obj.radius
        local py = mill_obj.y + sin(dot_angle) * mill_obj.radius
        circfill(px, py, 1, mill_obj.color_1)
    end

    -- Add reference line and a handholder to give spinning ux
    local marker_x = mill_obj.x + cos(mill_obj.angle) * mill_obj.radius
    local marker_y = mill_obj.y + sin(mill_obj.angle) * mill_obj.radius
    line(mill_obj.x, mill_obj.y, marker_x, marker_y, 0) -- add black line
    circfill(marker_x, marker_y, 2, 7) -- add white handholder with
end