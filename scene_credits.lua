credits_msg = 0
function scene_credits_init()
    music(1)
    _update = scene_credits_update
    _draw = scene_credits_draw
end

function scene_credits_update()

    if btnp(4) then  -- 5 = btn Z
        credits_msg = 0
        scene_menu_init()
    end

end

function scene_credits_draw()
    cls()
    if(credits_msg == 1) then
        draw_text("gameover. try again!",-7,8)

    end

    draw_text("novice summer jam 2 2025-07",-5,14)
    draw_text("theme:",-3,14)
    draw_text("what is in this box?",-2,14)

    draw_text("thank you for playing!",0,9)
    draw_text("developed by getjv",2,3)
    draw_text("jpmorais.com.br",3,3)

    draw_text("press 🅾️ to main menu",6,6)

end

function draw_text(text,y_offset,color)
    local text_width = #text * char_size  -- each char have ~4 pixels with
    local x_pos = (screen_width - text_width) / 2  -- find middle screen
    local y_pos = screen_height / 2 + (cell_size * y_offset )
    print(text, x_pos, y_pos ,color)
end
