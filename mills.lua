
left_mill = {
    x=10,
    y=100,
    speed = 0.015, -- spin speed
    angle = 0,
    radius = 8,
    color_1 = 4,-- bigger
    color_2 = 9,-- middle
    color_3 = 15, -- smaller
    num_dots = 6, -- dots will give movement idea
}


function update_mills()
    left_mill.angle = left_mill.angle + left_mill.speed
    if left_mill.angle > 1 then left_mill.angle = 0 end
end

function draw_mills()
    generate_circle_mill(left_mill)
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