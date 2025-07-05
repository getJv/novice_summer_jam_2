interval = 5
timer = 0

function update_timer()
    timer = timer + 1
    if timer >= interval then
        box.x = box.x - 1
        timer = 0
    end
end