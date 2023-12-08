player={
    x=8,
    y=8,
    flipx=false,
    flipy=false,
    sprite=1,

    update=function()
        if btn(⬅️) then
            player.x+=-1
            player.flipx=false
            player.flipy=false
        end
        if btn(➡️) then
            player.x+=1
            player.flipx=true
            player.flipy=false
        end
        if btn(⬆️) then
            player.y+=-1
            player.flipy=true
        end
        if btn(⬇️) then
            player.y+=1
            player.flipy=false
        end
    end,

    draw=function()
        spr(player.sprite,player.x,player.y,1,1,player.flipx,player.flipy)
    end
}