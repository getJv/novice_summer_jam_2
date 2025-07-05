pad_frame = {x = 74 ,y = 12,w = 10,h=70}
pad_margin = 2
pad_x = pad_frame.x + pad_margin
pad_y = pad_frame.y + pad_margin
pad_w = pad_x + 6 -- 6 is the max width
pad_h = pad_y + 10 -- 10 is the initial height

function update_pad_frame()

end

function draw_pad_frame()
    -- pad frame
    rect( pad_frame.x,pad_frame.y,pad_frame.x + pad_frame.w, pad_frame.y + pad_frame.h,11)
    -- pad
    rectfill( pad_x,pad_y, pad_w,pad_h ,11)
end