player = {
    x = 0,
    y = 0,
    buildable_cursor_tiles = { 1, 2 },
    not_buildable_cursor_tiles = { 3, 4 },
    buildable_tiles = { 33, 52 },
    cursor_sprite = 1,
    current_frame = 1,
    frame_duration = 0.25,
    last_frame_time = 0,
    build_mode = false,
    resources = 10,
    health = 100,

    update = function()
        local dx, dy = 0, 0

        if btnp(⬅️) then
            dx = -tile_size
        end
        if btnp(➡️) then
            dx += tile_size
        end
        if btnp(⬆️) then
            dy += -tile_size
        end
        if btnp(⬇️) then
            dy += tile_size
        end
        if btnp(❎) then
            player.enter_build_mode()
        end
        if btnp(🅾️) then
            player.build_mode = false
        end

        if player.build_mode then
            player.move_build_mode(dx, dy)
        else
            player.move(dx, dy)
            player.animate()
        end
    end,

    draw = function()
        if player.build_mode then
            rectfill(8, 8, 120, 120, 1)
        end
        spr(player.cursor_sprite, player.x, player.y)

        print("✽" .. player.resources, 1, 1, 1)
        print("♥" .. player.health, 108, 1, 1)
    end,

    can_build = function()
        local tile_value = mget(player.x / tile_size, player.y / tile_size)
        for i = 1, #player.buildable_tiles do
            if tile_value == player.buildable_tiles[i] then
                return true
            end
        end
        return false
    end,

    can_move = function(x, y)
        if x >= 0 and x < screen_size and y >= 0 and y < screen_size then
            return true
        else
            sfx(0)
            return false
        end
    end,

    move = function(dx, dy)
        if player.can_move(player.x + dx, player.y + dy) then
            player.x = player.x + dx
            player.y = player.y + dy
        end
    end,

    animate = function()
        if player.can_build() then
            player.cursor_sprite = player.buildable_cursor_tiles[player.current_frame]
        else
            player.cursor_sprite = player.not_buildable_cursor_tiles[player.current_frame]
        end

        if time() - player.last_frame_time >= player.frame_duration then
            player.current_frame = player.current_frame % 2 + 1
            player.last_frame_time = time()
        end
    end,

    move_build_mode = function(dx, dy)
        -- Implement specific build mode movement logic here
        player.move(dx, dy)
        -- For now, just move like regular movement
    end,

    enter_build_mode = function()
        if player.can_build() then
            player.build_mode = true
        else
            sfx(0)
        end
    end
}