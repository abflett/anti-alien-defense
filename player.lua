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

    draw = function(self)
        if self.build_mode then
            rectfill(8, 8, 120, 120, 1)
        end
        spr(self.cursor_sprite, self.x, self.y)

        print("✽" .. self.resources, 1, 1, 1)
        print("♥" .. self.health, 108, 1, 1)
    end,

    can_build = function(self)
        local tile_value = mget(self.x / tile_size, self.y / tile_size)
        for i = 1, #self.buildable_tiles do
            if tile_value == self.buildable_tiles[i] then
                return true
            end
        end
        return false
    end,

    can_move = function(self, x, y)
        if x >= 0 and x < screen_size and y >= 0 and y < screen_size then
            return true
        else
            sfx(0)
            return false
        end
    end,

    move = function(self, dx, dy)
        local new_x, new_y = self.x + dx, self.y + dy
        if self:can_move(new_x, new_y) then
            self.x, self.y = new_x, new_y
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
}