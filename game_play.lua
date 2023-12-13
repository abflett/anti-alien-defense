game_play_states = {
    idle = "idle",
    build = "build",
    update = "update"
}

game_play = {
    player = player:new(),
    current_state = game_play_states.idle,

    update = function(self)
        if self.current_state == game_play_states.idle then
            self.player:update()
        elseif self.current_state == game_play_states.build then
            -- update
        elseif self.current_state == game_play_states.update then
            -- update
        end
    end,
    draw = function(self)
        cls()
        map()

        if self.current_state == game_play_states.idle then
            self.player:draw()
        elseif self.current_state == game_play_states.build then
            -- draw
        elseif self.current_state == game_play_states.update then
            -- draw
        end
    end
}