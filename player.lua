player={
    x=63,
    y=63,
    flipx=false,
    flipy=false,
    sprite=1,
    delay=1,
    lastdelay=0,

    update=function()
        print("time " ..time())
        if btn(⬅️) then
            player.x+=-8
            player.flipx=false
            player.flipy=false
        end
        if btn(➡️) then
            player.x+=8
            player.flipx=true
            player.flipy=false
        end
        if btn(⬆️) then
            player.y+=-8
            player.flipy=true
        end
        if btn(⬇️) then
            player.y+=8
            player.flipy=false
        end
    end,

    draw=function()
        spr(player.sprite,player.x,player.y,1,1,player.flipx,player.flipy)
    end
}