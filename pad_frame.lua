pad_margin = 2
pad_frame = {x = 74 ,y = 12,w = 10,h=70}
pad = {
    x = pad_frame.x + pad_margin,
    y = pad_frame.y + pad_margin,
    w = (pad_frame.x + pad_margin) + 6, -- 6 is the max width
    h = 10
}


function update_pad_frame()
    if(can_update(2)) then
        pad.y = pad.y + 1
    end
end

function draw_pad_frame()
    -- pad frame
    rect( pad_frame.x,pad_frame.y,pad_frame.x + pad_frame.w, pad_frame.y + pad_frame.h,11)
    -- pad
    rectfill( pad.x,pad.y, pad.w, pad.y + pad.h ,11)
end