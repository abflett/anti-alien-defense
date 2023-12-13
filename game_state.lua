states = {
    intro = "intro",
    main_menu = "main_menu",
    game_play = "game_play",
    game_over = "game_over"
}

game_state = {
    current_state = states.game_play,
    update = function(self)
        if self.current_state == states.intro then
            intro:update()
        elseif self.current_state == states.main_menu then
            main_menu:update()
        elseif self.current_state == states.game_play then
            game_play:update()
        elseif self.current_state == states.game_over then
            game_over:update()
        end
    end,
    draw = function(self)
        cls()
        if self.current_state == states.intro then
            intro:draw()
        elseif self.current_state == states.main_menu then
            main_menu:draw()
        elseif self.current_state == states.game_play then
            game_play:draw()
        elseif self.current_state == states.game_over then
            game_over:draw()
        end
    end,
    change_state = function(self, state)
        self.current_state = state
    end
}