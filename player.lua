global = _ENV

player = entity:new({
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

    update = function(self)
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
            self:enter_build_mode()
        end
        if btnp(🅾️) then
            self.build_mode = false
        end

        if self.build_mode then
            self:move_build_mode(dx, dy)
        else
            self:move(dx, dy)
            self:animate()
        end
    end,

    draw = function(_ENV)
        if build_mode then
            rectfill(8, 8, 120, 120, 1)
        end
        spr(cursor_sprite, x, y)

        print("✽" .. resources, 0, 1, 1)
        print("♥" .. health, 108, 1, 1)
    end,

    can_build = function(_ENV)
        local tile_value = mget(x / tile_size, y / tile_size)
        for i = 1, #buildable_tiles do
            if tile_value == buildable_tiles[i] then
                return true
            end
        end
        return false
    end,

    can_move = function(dx, dy)
        if dx >= 0 and dx < screen_size and dy >= 0 and dy < screen_size then
            return true
        else
            sfx(0)
            return false
        end
    end,

    move = function(_ENV, dx, dy)
        local new_x, new_y = x + dx, y + dy
        if can_move(new_x, new_y) then
            x, y = new_x, new_y
        end
    end,

    animate = function(self)
        if self:can_build() then
            self.cursor_sprite = self.buildable_cursor_tiles[self.current_frame]
        else
            self.cursor_sprite = self.not_buildable_cursor_tiles[self.current_frame]
        end

        if time() - self.last_frame_time >= self.frame_duration then
            self.current_frame = self.current_frame % 2 + 1
            self.last_frame_time = time()
        end
    end,

    move_build_mode = function(self, dx, dy)
        -- Implement specific build mode movement logic here
        self:move(dx, dy)
        -- For now, just move like regular movement
    end,

    enter_build_mode = function(self)
        if self:can_build() then
            self.build_mode = true
        else
            sfx(0)
        end
    end
})