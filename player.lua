player={
    x=0,
    y=0,
    build_ani={1,2},
    nobuild_ani={3,4},
    buildable={33,52},
    sprite=1,
    current_frame = 1,
    frame_duration = 0.25,
    last_frame_time = 0,

    update=function()
        local dx, dy = 0, 0

        if btnp(⬅️) then
            dx=-8
        end
        if btnp(➡️) then
            dx+=8
        end
        if btnp(⬆️) then
            dy+=-8
        end
        if btnp(⬇️) then
            dy+=8
        end
        if btnp(❎) then
            dy+=-8
        end
        if btnp(🅾️) then
            dy+=8
        end

        if player.can_move(player.x + dx, player.y + dy) then
            player.x=player.x + dx
            player.y=player.y + dy
        end

        if player.can_build() then
            player.sprite = player.build_ani[player.current_frame]
        else
            player.sprite = player.nobuild_ani[player.current_frame]
        end

        if time() - player.last_frame_time >= player.frame_duration then
            player.current_frame = (player.current_frame % 2) + 1
            player.last_frame_time = time()
        end
    end,

    draw=function()
        spr(player.sprite,player.x,player.y)
    end,

    can_build=function()
        local tile_value = mget(player.x / 8, player.y / 8)
        for i = 1, #player.buildable do
            if tile_value == player.buildable[i] then
                return true
            end
        end
        return false
    end,

    can_move=function(x, y)
        return x >= 0 and x < 128 and y >= 0 and y < 128
    end
}