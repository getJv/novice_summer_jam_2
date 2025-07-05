function scene_menu_init()
    _update = scene_menu_update
    _draw = scene_menu_draw

end

function scene_menu_update()

    if btnp(5) then  -- 5 = btn X
        scene_main_init()
    end

    if btnp(4) then  -- 5 = btn Z
        scene_credits_init()
    end
end

function scene_menu_draw()
    cls()
    map(16,0)
    draw_press_x()
    draw_press_z_to_credits()
    title_bg()
    draw_title_1()
    draw_title_2()
end

function draw_press_x()
    local press_x_to_start = "press ❎ to start"
    local text_width = #press_x_to_start * char_size  -- each char have ~4 pixels with
    -- max width of PICO-8
    local x_pos = (screen_width - text_width) / 2  -- find middle screen
    local y_pos = screen_height / 2 + (cell_size)
    print(press_x_to_start, x_pos, y_pos ,6)
end

function draw_press_z_to_credits()
    local press_z_to_start = "press 🅾️ to credits"
    local text_width = #press_z_to_start * char_size  -- each char have ~4 pixels with
    -- max width of PICO-8
    local x_pos = (screen_width - text_width) / 2  -- find middle screen
    local y_pos = screen_height / 2 + (cell_size*2)
    print(press_z_to_start, x_pos, y_pos ,6)
end

function draw_title_1()
    local text = "what is"
    local text_width = #text * char_size  -- each char have ~4 pixels with
    -- max width of PICO-8
    local x_pos = (screen_width - text_width) / 2  -- find middle screen
    local y_pos = screen_height / 2 + (cell_size*-4)
    print(text, x_pos, y_pos ,4)
end

function draw_title_2()
    local text = "in the box?"
    local text_width = #text * char_size  -- each char have ~4 pixels with
    -- max width of PICO-8
    local x_pos = (screen_width - text_width) / 2  -- find middle screen
    local y_pos = screen_height / 2 + (cell_size*-3)
    print(text, x_pos, y_pos ,4)
end

function title_bg()
    local text_width = 50
    local x_pos = (screen_width - text_width) / 2  -- find middle screen
    local y_pos = screen_height / 2 + (cell_size*-5) +2
    rectfill(x_pos-2,y_pos-2,x_pos+text_width+2,2+y_pos+text_width/2,4)
    rectfill(x_pos,y_pos,x_pos+text_width,y_pos+text_width/2,9)
    rect(x_pos,y_pos,x_pos+text_width,y_pos+text_width/2,4)
end
