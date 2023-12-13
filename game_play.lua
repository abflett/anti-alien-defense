game_play = {
    update = function(self)
        player:update()
    end,
    draw = function(self)
        map()
        player:draw()
    end
}