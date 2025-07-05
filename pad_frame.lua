pad_frame_padding = 2
pad_frame = {x = 74 ,y = 12,w = 10,h=70}

function pad_frame_top_bottom_collision(next_y)

    local pad_bottom_y = next_y + pad.h
    local pad_frame_bottom_y = pad_frame.y + pad_frame.h
    local hit_pad_frame_bottom = pad_bottom_y > pad_frame_bottom_y

    local pad_top_y = next_y - pad_frame_padding *2
    local hit_pad_frame_top = pad_top_y < pad_frame.y

    if( hit_pad_frame_bottom or hit_pad_frame_top ) then
        return true
    end
    return false

end

function draw_pad_frame()
    rect( pad_frame.x,pad_frame.y,pad_frame.x + pad_frame.w, pad_frame.y + pad_frame.h,11)
end