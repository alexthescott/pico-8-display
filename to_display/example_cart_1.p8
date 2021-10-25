pico-8 cartridge // http://www.pico-8.com
version 33
__lua__
-- alexthescott, 7/4/21
-- demake of bees&bombs tweet
-- https://tinyurl.com/c6cc443r

function _init()
	-- get number of seconds 
	-- to display cart...
	dc_max=tonum(split(stat(6)," ")[2])
	-- after display count max
	-- is met, reload runner.p8
	
	
	-- cart contents
	hori_count = 7
	vert_count = 12
	colors = {8,9,10,11,3,12}
	t=0
end

function _draw()
	cls()
	for x=1,hori_count,1 do
		for y=1,vert_count+1,1 do
			y_pos = 16+96*(sin(t+y/44+x/14)+1)/2
			a_circ(x*16,y_pos,colors[y\2])
		end
	end
	t+=0.005
	
	-- once timer is met, reload
	-- runner.p8, which will pick
	-- another cart from the 
	-- folder to_display
	if time()>=dc_max then
		load("runner.p8","disp",stat(6))
	end
end

function a_circ(x,y,c)
	-- draws a circle sized 6,7
	-- fills in pixels between
	circ(x,y,7,c)
 circ(x,y,6,c)
 
 -- top left
 pset(x-4,y-5,c)
 pset(x-5,y-4,c)
 
 -- top right
 pset(x+4,y-5,c)
 pset(x+5,y-4,c)
 
 -- bottom left
 pset(x+5,y+4,c)
 pset(x+4,y+5,c)
 
 -- bottom left
 pset(x-5,y+4,c)
 pset(x-4,y+5,c)
end
__gfx__
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00700700000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00077000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00077000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00700700000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
__label__
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000ccccc0000000000000
000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000ccccccccc00000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000ccc00000ccc0000000000
0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000ccc0ccccc0ccc000000000
0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000ccccccccccccc000000000
000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000ccccc00000ccccc00000000
000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000cccc0000000cccc00000000
000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000ccc003333300ccc00000000
000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000cc03333333330cc00000000
000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000cc33300000333cc00000000
000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000ccc300000003ccc00000000
000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000cccc0333330cccc00000000
0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000ccccc000000ccccc33333ccccc00000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000ccccccccc00003ccccccccccccc300000000
0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000ccc00000ccc0003ccc0ccccc0ccc300000000
000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000ccc0000000ccc0033ccc00000ccc3300000000
000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000cc000000000cc00330ccccccccc03300000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000cc000ccccc000cc0333bbcccccbb33300000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000cc0ccccccccc0cc03333b00000b333300000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000ccccc00000ccccc033333000003333300000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000cccc0000000cccc033b333333333b3300000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000ccc000000000ccc0b3300333330033b00000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000ccc000000000ccc0b3330bbbbb0333b00000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000cccc0333330cccc0bb333bbbbb333bb00000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000ccccc33333ccccc0bbb333333333bbb00000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000cc3ccccccccc3cc0bbbb0333330bbbb00000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000cc330ccccc033cc00bb000000000bb000000000
000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000cc000000000cc00bbbb0000000bbbb00000000
000000000000000000000000000000000000000000000000000000000000000000000000000000000000000003ccc0000000ccc30bbbbbaaaaabbbbb00000000
0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000033ccc33333ccc330bb0bbbbbbbbb0bb00000000
000000000000000000000000000000000000000000000000000000000000000000000000000000ccccc000000330ccccccccc0330bbaaabbbbbaaabb00000000
0000000000000000000000000000000000000000000000000000000000000000000000000000ccccccccc000033333ccccc333330bbaa0000000aabb00000000
000000000000000000000000000000000000000000000000000000000000000000000000000ccc00000ccc00033330000000333300bb000000000bb000000000
00000000000000000000000000000000000000000000000000000000000000000000000000ccc0000000ccc000330000000003300abbb0000000bbba00000000
00000000000000000000000000000000000000000000000000000000000000000000000000cc000000000cc003333000000033330aabbb00000bbbaa00000000
0000000000000000000000000000000000000000000000000000000000000000000000000cc00000000000cc03333300000333330aa0bbbbbbbbb0aa00000000
0000000000000000000000000000000000000000000000000000000000000000000000000cc00000000000cc03303333333330330aa0aabbbbbaa0aa00000000
0000000000000000000000000000000000000000000000000000000000000000000000000cc000ccccc000cc0330bb33333bb0330aaaaa00000aaaaa00000000
0000000000000000000000000000000000000000000000000000000000000000000000000cc0ccccccccc0cc033bbb00000bbb3300aaa0000000aaa000000000
0000000000000000000000000000000000000000000000000000000000000000000000000ccccc00000ccccc0033b0000000b33000aaa0000000aaa000000000
00000000000000000000000000000000000000000000000000000000000000000000000000ccc0000000ccc000333000000033300aaaaa00000aaaaa00000000
00000000000000000000000000000000000000000000000000000000000000000000000000ccc0000000ccc00bb33300000333bb0aa0aaaaaaaaa0aa00000000
0000000000000000000000000000000000000000000000000000000000000000000000000ccccc00000ccccc0bb03333333330bb0aa000aaaaa000aa00000000
0000000000000000000000000000000000000000000000000000000000000000000000000cc0ccccccccc0cc0bb00033333000bb0aa09999999990aa00000000
0000000000000000000000000000000000000000000000000000000000000000000000000cc000ccccc000cc0bb0bbbbbbbbb0bb0aa99900000999aa00000000
0000000000000000000000000000000000000000000000000000000000000000000000000cc03333333330cc0bbbbb00000bbbbb00aa900000009aa000000000
0000000000000000000000000000000000000000000000000000000000000000000000000cc33300000333cc00bbb0000000bbb000aaa0000000aaa000000000
00000000000000000000000000000000000000000000000000000000000000000000000000cc300000003cc000bbb0000000bbb0099aaa00000aaa9900000000
00000000000000000000000000000000000000000000000000000000000000000000000000ccc0000000ccc00bbbbb00000bbbbb0990aaaaaaaaa09900000000
000000000000000000000000000000000000000000000000000000000000000000000000033ccc00000ccc330bb0bbbbbbbbb0bb099099aaaaa9909900000000
0000000000000088888000000000000000000000000000000000000000000000000000000330ccccccccc0330bb0aabbbbbaa0bb099999000009999900000000
00000000000088888888800000000000000000000000000000000000000000ccccc00000033033ccccc330330bbaaa00000aaabb099990000000999900000000
000000000008880000088800000000000000000000000000000000000000ccccccccc00003333300000333330bbaa0000000aabb009900000000099000000000
00000000008880000000888000000000000000000000000000000000000ccc00000ccc00033330000000333300bb000000000bb0099990000000999900000000
0000000000880000000008800000000000000000000000000000000000ccc0000000ccc000330000000003300abbb0000000bbba099999000009999900000000
0000000008800000000000880000000000000000000000000000000000cc000000000cc003333000000033330aabbb00000bbbaa099099999999909900000000
000000000880000000000088000000000000000000000000000000000cc00000000000cc03333300000333330aa0bbbbbbbbb0aa099088999998809900000000
000000000880008888800088000000000000000000000000000000000cc00000000000cc03303333333330330aa0aabbbbbaa0aa099888000008889900000000
000000000880888888888088000000000000000000000000000000000cc000ccccc000cc0330bb33333bb0330aaaaa00000aaaaa009980000000899000000000
000000000888880000088888000000000000000000000000000000000cc0ccccccccc0cc033bbb00000bbb3300aaa0000000aaa0009990000000999000000000
000000000088800000008880000000000000000000000000000000000ccccc00000ccccc0033b0000000b33000aaa0000000aaa0088999000009998800000000
0000000000888000000088800000000000000000000000000000000000ccc0000000ccc000333000000033300aaaaa00000aaaaa088099999999908800000000
0000000008888800000888880000000000000000000000000000000000ccc0000000ccc00bb33300000333bb0aa0aaaaaaaaa0aa088000999990008800000000
000000000880888888888088000000000000000000000000000000000ccccc00000ccccc0bb03333333330bb0aa000aaaaa000aa088088888888808800000000
000000000880009999900088000000000000000000000000000000000cc0ccccccccc0cc0bb00033333000bb0aa09999999990aa088888000008888800000000
000000000880999999999088000000000000000000000000000000000cc000ccccc000cc0bb0bbbbbbbbb0bb0aa99900000999aa008880000000888000000000
000000000889990000099988000000000000000000000000000000000cc03333333330cc0bbbbb00000bbbbb00aa900000009aa0008880000000888000000000
000000000099900000009990000000000000000000000000000000000cc33300000333cc00bbb0000000bbb000aaa0000000aaa0088888000008888800000000
0000000000998000000089900000000000000000000000000000000000cc300000003cc000bbb0000000bbb0099aaa00000aaa99088088888888808800000000
0000000009988800000888990000000000000000000000000000000000ccc0000000ccc00bbbbb00000bbbbb0990aaaaaaaaa099088000888880008800000000
00000000099088999998809900000000000000000000000000000000033ccc00000ccc330bb0bbbbbbbbb0bb099099aaaaa99099088000000000008800000000
000000000990999999999099000000888880000000000000000000000330ccccccccc0330bb0aabbbbbaa0bb0999990000099999088000000000008800000000
0000000009999900000999990000888888888000000000ccccc00000033033ccccc330330bbaaa00000aaabb0999900000009999008800000000088000000000
00000000099990000000999900088800000888000000ccccccccc00003333300000333330bbaa0000000aabb0099000000000990008880000000888000000000
0000000000990000000009900088800000008880000ccc00000ccc00033330000000333300bb000000000bb00999900000009999000888000008880000000000
00000000099990aaaaa09999008800000000088000ccc0000000ccc000330000000003300abbb0aaaaa0bbba0999998888899999000088888888800000000000
000000000999aaaaaaaaa999088000888880008800cc000000000cc0033330bbbbb033330aabbbaaaaabbbaa0990999999999099000000888880000000000000
00000000099aaa99999aaa9908808888888880880cc000ccccc000cc033333bbbbb333330aaabbbbbbbbbaaa0998889999988899000000000000000000000000
0000000009aaa0999990aaa908888800000888880cc0ccccccccc0cc033b333333333b330aaaa0bbbbb0aaaa0998800000008899000000000000000000000000
0000000009aa000000000aa908888000000088880ccccc00000ccccc033bb0333330bb330aaa000000000aaa0099000000000990000000000000000000000000
000000000aa900aaaaa009aa08880000000008880cccc0000000cccc033b000000000b330aaa000000000aaa0899908888809998000000000000000000000000
000000000aa9aaaaaaaaa9aa08880099999008880ccc000000000ccc0b3300bbbbb0033b0aaaa0999990aaaa0889998888899988000000000000000000000000
000000000aaaaa00000aaaaa08889999999998880ccc003333300ccc0b333bbbbbbb333b0aaaaa99999aaaaa0888999999999888000000000000000000000000
000000000aaaa9999999aaaa08899900000999880cccc3333333cccc0bb33300000333bb0aa9aaaaaaaaa9aa0888809999908888000000000000000000000000
000000000aaa009999900aaa08999888888899980ccccc00000ccccc0bbb333333333bbb0aa990aaaaa099aa0888000000000888000000000000000000000000
000000000aaa00bbbbb00aaa08990099999009980cc3ccccccccc3cc0bbb003333300bbb00aa009999900aa00888000000000888000000000000000000000000
000000000aaabbbbbbbbbaaa099899ccccc998990cc300ccccc003cc0bbbaaaaaaaaabbb09aaa9999999aaa90888800000008888000000000000000000000000
000000000aabbb00000bbbaa0999ccccccccc99903cc333333333cc30bbbba00000abbbb099aaa00000aaa990888880000088888000000000000000000000000
000000000abbbabbbbbabbba099ccc00000ccc9903ccc3000003ccc30bbbbb00000bbbbb0999aaaaaaaaa9990880888888888088000000000000000000000000
000000000abbbbbbbbbbbbba09ccc8aaaaa8ccc9033cccbbbbbccc330bbabbbbbbbbbabb099988aaaaa889990880008888800088000000000000000000000000
000000000bbbbb00000bbbbb09ccaacccccaacc90333ccccccccc3330bb0aabbbbbaa0bb09988800000888990088000000000880000000000000000000000000
000000000bbbb0333330bbbb0ccacccccccccacc033bbbcccccbbb330abbaa99999aabba09998088888089990088800000008880000000000000000000000000
000000000bbb333333333bbb0ccccc33333ccccc0333b0bbbbb0b3330abbb9999999bbba09999888888899990008880000088800000000000000000000000000
000000000bb333ccccc333bb0cccc3333333cccc03333bbbbbbb33330aabbb99999bbbaa09999900000999990000888888888000000000000000000000000000
000000000b33ccccccccc33b0ccc333333333ccc033333aaaaa333330aa9bbbbbbbbb9aa09989999999998990000008888800000000000000000000000000000
000000000b3ccc00000ccc3b0cc33399999333cc033b333333333b330aaa99bbbbb99aaa08990099999009980000000000000000000000000000000000000000
0000000003ccc0000000ccc30ccc300000003ccc0b33aa33333aa33b0aaaa0000000aaaa08999000000099980000000000000000000000000000000000000000
0000000003ccbb00000bbcc30cccc9000009cccc0b3330000000333b0aaaaa00000aaaaa08899900000999880000000000000000000000000000000000000000
000000000ccbbbbbbbbbbbcc0ccccc99999ccccc0bb33300000333bb0aa0aaaaaaaaa0aa08889999999998880000000000000000000000000000000000000000
000000000ccbb0bbbbb0bbcc0ccacccccccccacc0bbb333333333bbb09aa00aaaaa00aa908888099999088880000000000000000000000000000000000000000
000000000ccbbb00000bbbcc03cca0ccccc0acc30bbbb0333330bbbb09aaa0000000aaa908888800000888880000000000000000000000000000000000000000
000000000cc3bbbbbbbbb3cc03ccca00000accc30bbbbb00000bbbbb099aaa00000aaa9900888888888888800000000000000000000000000000000000000000
000000000cc330bbbbb033cc033cccaaaaaccc330abbbbbbbbbbbbba0999aaaaaaaaa99900888088888088800000000000000000000000000000000000000000
0000000000cc330000033cc00033ccccccccc3300abbb0bbbbb0bbba009999aaaaa9999000088800000888000000000000000000000000000000000000000000
0000000000ccc3333333ccc0003333ccccc3333000abbb00000bbba0009999999999999000008888888880000000000000000000000000000000000000000000
00000000000ccc33333ccc00000333333333330000aabbbbbbbbbaa0000999999999990000000088888000000000000000000000000000000000000000000000
000000000000ccccccccc0000000333333333000000aaabbbbbaaa00000099999999900000000000000000000000000000000000000000000000000000000000
00000000000000ccccc0000000000033333000000000aaaaaaaaa000000000999990000000000000000000000000000000000000000000000000000000000000
0000000000000000000000000000000000000000000000aaaaa00000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000

