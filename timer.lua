interval = 1020 -- number
cycle = 1

function update_timer()
    cycle = cycle + 1
    if cycle >= interval then
        cycle = 0
    end
end

-- use module of a given number to sync all updates by cycle
function can_update(module_num)

    return cycle % module_num == 0
end

