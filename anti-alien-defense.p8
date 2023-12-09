pico-8 cartridge // http://www.pico-8.com
version 41
__lua__
#include player.lua

function _init()
end

function _update()
    player.update()
end

function _draw()
	cls()
    map()
	player.draw()
end
__gfx__
00000000770000770077770088000088008888000000000000000000000000000000000000000000000000000000000000000000111111112222222233333333
00000000700000070000000080000008000000000000000000000000000000000000000000000000000000000000000000000000111111112222222233333333
00000000000000007000000700000000800000080000000000000000000000000000000000000000000000000000000000000000111111112222222233333333
00000000000000007000000700000000800000080000000000000000000000000000000000000000000000000000000000000000111111112222222233333333
00000000000000007000000700000000800000080000000000000000000000000000000000000000000000000000000000000000111111112222222233333333
00000000000000007000000700000000800000080000000000000000000000000000000000000000000000000000000000000000111111112222222233333333
00000000700000070000000080000008000000000000000000000000000000000000000000000000000000000000000000000000111111112222222233333333
00000000770000770077770088000088008888000000000000000000000000000000000000000000000000000000000000000000111111112222222233333333
33333333333333333333333333343333333333333333433333333333444444444444444499999999999999999999999944444444555555556666666677777777
333333333333333333333333334d3333333333333333d43333333333444444444444444499999999999999999999999944444444555555556666666677777777
33333333333333333333333333453333333333333333543333333333444444444444444499999999999999999999999944444444555555556666666677777777
33333333333333333333333333343443333333333344433333333333444444444444444499999999999999999999999944444444555555556666666677777777
33333334444334443333333333344334444334444433333333333333444444444444444499999999999999999999999944444444555555556666666677777777
33333443333443334443333333333333333443333333333333333333444444444444444499999999999999999999999944444444555555556666666677777777
33334333333333333334333333333333333333333333333333333333444444444444444499999999999999999999999944444444555555556666666677777777
33334333333333333345333333333333333333333333333333333333444444444444444499999999999999999999999944444444555555556666666677777777
3333433333333333333433333333333333333333333333334444444444444444444444449999999999999999999999998888888899999999aaaaaaaabbbbbbbb
3333d43333333343334d33333333333333333333333333334444444444444444444444449999999999999999999999998888888899999999aaaaaaaabbbbbbbb
3333543334443333334533333333344333443344433333334444444444444444444444449999999999999999999999998888888899999999aaaaaaaabbbbbbbb
3333433333433333333433333334455444554455544443334444444444444444444444449999999999999999999999998888888899999999aaaaaaaabbbbbbbb
3333d43333333343333433333334d55ddd55dd555ddd54334444444444444444444444449999999999999999999999998888888899999999aaaaaaaabbbbbbbb
3333543333333443334d3333334dd55ddd55dd555ddd54334444444444444444444444449999999999999999999999998888888899999999aaaaaaaabbbbbbbb
3333433333433333334533333345d55ddd55dd555ddd43334444444444444444444444449999999999999999999999998888888899999999aaaaaaaabbbbbbbb
3333433333333333334533333345d33ddd33dd333ddd43334444444444444444444444449999999999999999999999998888888899999999aaaaaaaabbbbbbbb
333343333333333333343333333333333333333333333333444444444444444444444444999999999999999999999999ccccccccddddddddeeeeeeeeffffffff
3333d4333333333333343333333333333333333333333333444444444444444444444444999999999999999999999999ccccccccddddddddeeeeeeeeffffffff
3333d53333443344344d3333333333333333333333333333444444444444444444444444999999999999999999999999ccccccccddddddddeeeeeeeeffffffff
3333d54444554455455d3333333333333333333333333333444444444444444444444444999999999999999999999999ccccccccddddddddeeeeeeeeffffffff
3333d5dddd55dd55d55d3333333333333333333333333333444444444444444444444444999999999999999999999999ccccccccddddddddeeeeeeeeffffffff
333335dddd55dd55d55d3333333333333333333333333333444444444444444444444444999999999999999999999999ccccccccddddddddeeeeeeeeffffffff
333335dddd55dd55d5533333333333333333333333333333444444444444444444444444999999999999999999999999ccccccccddddddddeeeeeeeeffffffff
333333dddd33dd33d3333333333333333333333333333333444444444444444444444444999999999999999999999999ccccccccddddddddeeeeeeeeffffffff
00000000111111112222222233333333000000001111111122222222333333330000000011111111222222223333333300000000111111112222222233333333
00000000111111112222222233333333000000001111111122222222333333330000000011111111222222223333333300000000111111112222222233333333
00000000111111112222222233333333000000001111111122222222333333330000000011111111222222223333333300000000111111112222222233333333
00000000111111112222222233333333000000001111111122222222333333330000000011111111222222223333333300000000111111112222222233333333
00000000111111112222222233333333000000001111111122222222333333330000000011111111222222223333333300000000111111112222222233333333
00000000111111112222222233333333000000001111111122222222333333330000000011111111222222223333333300000000111111112222222233333333
00000000111111112222222233333333000000001111111122222222333333330000000011111111222222223333333300000000111111112222222233333333
00000000111111112222222233333333000000001111111122222222333333330000000011111111222222223333333300000000111111112222222233333333
44444444555555556666666677777777444444445555555566666666777777774444444455555555666666667777777744444444555555556666666677777777
44444444555555556666666677777777444444445555555566666666777777774444444455555555666666667777777744444444555555556666666677777777
44444444555555556666666677777777444444445555555566666666777777774444444455555555666666667777777744444444555555556666666677777777
44444444555555556666666677777777444444445555555566666666777777774444444455555555666666667777777744444444555555556666666677777777
44444444555555556666666677777777444444445555555566666666777777774444444455555555666666667777777744444444555555556666666677777777
44444444555555556666666677777777444444445555555566666666777777774444444455555555666666667777777744444444555555556666666677777777
44444444555555556666666677777777444444445555555566666666777777774444444455555555666666667777777744444444555555556666666677777777
44444444555555556666666677777777444444445555555566666666777777774444444455555555666666667777777744444444555555556666666677777777
8888888899999999aaaaaaaabbbbbbbb8888888899999999aaaaaaaabbbbbbbb8888888899999999aaaaaaaabbbbbbbb8888888899999999aaaaaaaabbbbbbbb
8888888899999999aaaaaaaabbbbbbbb8888888899999999aaaaaaaabbbbbbbb8888888899999999aaaaaaaabbbbbbbb8888888899999999aaaaaaaabbbbbbbb
8888888899999999aaaaaaaabbbbbbbb8888888899999999aaaaaaaabbbbbbbb8888888899999999aaaaaaaabbbbbbbb8888888899999999aaaaaaaabbbbbbbb
8888888899999999aaaaaaaabbbbbbbb8888888899999999aaaaaaaabbbbbbbb8888888899999999aaaaaaaabbbbbbbb8888888899999999aaaaaaaabbbbbbbb
8888888899999999aaaaaaaabbbbbbbb8888888899999999aaaaaaaabbbbbbbb8888888899999999aaaaaaaabbbbbbbb8888888899999999aaaaaaaabbbbbbbb
8888888899999999aaaaaaaabbbbbbbb8888888899999999aaaaaaaabbbbbbbb8888888899999999aaaaaaaabbbbbbbb8888888899999999aaaaaaaabbbbbbbb
8888888899999999aaaaaaaabbbbbbbb8888888899999999aaaaaaaabbbbbbbb8888888899999999aaaaaaaabbbbbbbb8888888899999999aaaaaaaabbbbbbbb
8888888899999999aaaaaaaabbbbbbbb8888888899999999aaaaaaaabbbbbbbb8888888899999999aaaaaaaabbbbbbbb8888888899999999aaaaaaaabbbbbbbb
ccccccccddddddddeeeeeeeeffffffffccccccccddddddddeeeeeeeeffffffffccccccccddddddddeeeeeeeeffffffffccccccccddddddddeeeeeeeeffffffff
ccccccccddddddddeeeeeeeeffffffffccccccccddddddddeeeeeeeeffffffffccccccccddddddddeeeeeeeeffffffffccccccccddddddddeeeeeeeeffffffff
ccccccccddddddddeeeeeeeeffffffffccccccccddddddddeeeeeeeeffffffffccccccccddddddddeeeeeeeeffffffffccccccccddddddddeeeeeeeeffffffff
ccccccccddddddddeeeeeeeeffffffffccccccccddddddddeeeeeeeeffffffffccccccccddddddddeeeeeeeeffffffffccccccccddddddddeeeeeeeeffffffff
ccccccccddddddddeeeeeeeeffffffffccccccccddddddddeeeeeeeeffffffffccccccccddddddddeeeeeeeeffffffffccccccccddddddddeeeeeeeeffffffff
ccccccccddddddddeeeeeeeeffffffffccccccccddddddddeeeeeeeeffffffffccccccccddddddddeeeeeeeeffffffffccccccccddddddddeeeeeeeeffffffff
ccccccccddddddddeeeeeeeeffffffffccccccccddddddddeeeeeeeeffffffffccccccccddddddddeeeeeeeeffffffffccccccccddddddddeeeeeeeeffffffff
ccccccccddddddddeeeeeeeeffffffffccccccccddddddddeeeeeeeeffffffffccccccccddddddddeeeeeeeeffffffffccccccccddddddddeeeeeeeeffffffff
__map__
0000000000212121212121212121212118181800000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0000000000313131313131313131252118181800000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
1919191919191919191919192a19202118181800000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
1111111111111111111111111219202118181800000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
2121212121212121212121212219202118181800000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
2123313131313131313131313219202118181800000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
2122192a19191919191919191919202118181800000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
2122191011111111111111111111152118181800000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
2122192021212121212121212121212118181800000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
2122193031313131313131313131313118181800000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
2122191919191919191919191919191918181800000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
2113111111111111111111111111111118181800000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
2121212121212121212121212121212118181800000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
2121212121212121212121212121212118181800000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
1818181818181818181818181818181818181800000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
1818181818181818181818181818181818181800000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
1818181818181818181818181818181818181800000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
__sfx__
0019000000000220501d05019050180501805014050170501405017050170501205017050180501a0501d0502105026050280502a0502a0502905026050200501d0501b0501a0501905017050150501405012050
