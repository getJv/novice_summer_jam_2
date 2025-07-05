pad_frame_padding = 2
pad_frame_w = 10
pad_frame = {
    x = 64 - pad_frame_w/2 ,y = 12,w = pad_frame_w,h=70
}

function pad_frame_top_bottom_collision(next_y)

    local pad_bottom_y = next_y + pad.h + pad_frame_padding
    local pad_frame_bottom_y = pad_frame.y + pad_frame.h
    local hit_pad_frame_bottom = pad_bottom_y > pad_frame_bottom_y

    local pad_top_y = next_y - pad_frame_padding
    local hit_pad_frame_top = pad_top_y < pad_frame.y

    if( hit_pad_frame_bottom or hit_pad_frame_top ) then
        return true
    end
    return false

end

function draw_pad_frame()
    rectfill( pad_frame.x,pad_frame.y,pad_frame.x + pad_frame.w, pad_frame.y + pad_frame.h,6)
    rect( pad_frame.x,pad_frame.y,pad_frame.x + pad_frame.w, pad_frame.y + pad_frame.h,5)
end