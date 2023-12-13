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
            print("update intro")
        elseif self.current_state == states.main_menu then
            print("update main_menu")
        elseif self.current_state == states.game_play then
            player:update()
        elseif self.current_state == states.game_over then
            print("update game_over")
        end
    end,
    draw = function(self)
        cls()
        if self.current_state == states.intro then
            print("draw intro")
        elseif self.current_state == states.main_menu then
            print("draw main_menu")
        elseif self.current_state == states.game_play then
            player:draw()
        elseif self.current_state == states.game_over then
            print("draw game_over")
        end
    end,
    change_state = function(self, state)
        self.current_state = state
    end
}