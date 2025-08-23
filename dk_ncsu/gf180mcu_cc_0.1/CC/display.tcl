#DisplayResourceTcl
set display_object [db::getNext [dr::getDisplays -filter "%name == {display}"]]
if {$display_object == ""} {
	set display_object [dr::createDisplay display -maxColors 256 -maxStipples 256 -maxLineStyles 256 ]
}
# Colors definition
dr::createColor yellow -display $display_object -red 255 -green 255 -blue 0
dr::createColor white -display $display_object -red 255 -green 255 -blue 255
dr::createColor black -display $display_object -red 0 -green 0 -blue 0
dr::createColor silver -display $display_object -red 217 -green 230 -blue 255
dr::createColor cream -display $display_object -red 255 -green 255 -blue 204
dr::createColor pink -display $display_object -red 255 -green 191 -blue 242
dr::createColor magenta -display $display_object -red 255 -green 0 -blue 255
dr::createColor lime -display $display_object -red 0 -green 255 -blue 0
dr::createColor tan -display $display_object -red 255 -green 230 -blue 191
dr::createColor cyan -display $display_object -red 0 -green 255 -blue 255
dr::createColor cadetBlue -display $display_object -red 57 -green 191 -blue 255
dr::createColor orange -display $display_object -red 255 -green 127 -blue 0
dr::createColor webOrange -display $display_object -red 255 -green 165 -blue 0
dr::createColor red -display $display_object -red 255 -green 0 -blue 0
dr::createColor purple -display $display_object -red 153 -green 0 -blue 230
dr::createColor green -display $display_object -red 0 -green 204 -blue 102
dr::createColor brown -display $display_object -red 191 -green 64 -blue 38
dr::createColor blue -display $display_object -red 0 -green 0 -blue 255
dr::createColor slate -display $display_object -red 140 -green 140 -blue 166
dr::createColor gold -display $display_object -red 217 -green 204 -blue 0
dr::createColor maroon -display $display_object -red 230 -green 31 -blue 13
dr::createColor violet -display $display_object -red 94 -green 0 -blue 230
dr::createColor forest -display $display_object -red 38 -green 140 -blue 107
dr::createColor chocolate -display $display_object -red 128 -green 38 -blue 38
dr::createColor navy -display $display_object -red 51 -green 51 -blue 153
dr::createColor gray -display $display_object -red 204 -green 204 -blue 217
dr::createColor lightWhite -display $display_object -red 127 -green 127 -blue 127
dr::createColor lightYellow -display $display_object -red 127 -green 127 -blue 0
dr::createColor lightRed -display $display_object -red 127 -green 0 -blue 0
dr::createColor lightPurple -display $display_object -red 76 -green 0 -blue 115
dr::createColor lightGreen -display $display_object -red 0 -green 102 -blue 51
dr::createColor lightGray -display $display_object -red 102 -green 102 -blue 108
dr::createColor lightGold -display $display_object -red 108 -green 102 -blue 0
dr::createColor lightMaroon -display $display_object -red 115 -green 15 -blue 6
dr::createColor lightCyan -display $display_object -red 0 -green 127 -blue 127
dr::createColor lightBlue -display $display_object -red 0 -green 0 -blue 127
dr::createColor winColor1 -display $display_object -red 166 -green 166 -blue 166
dr::createColor winColor2 -display $display_object -red 115 -green 115 -blue 115
dr::createColor winColor3 -display $display_object -red 189 -green 204 -blue 204
dr::createColor winColor4 -display $display_object -red 204 -green 204 -blue 204
dr::createColor winColor5 -display $display_object -red 199 -green 199 -blue 199
dr::createColor blinkRed -display $display_object -red 255 -green 0 -blue 0 -blink true
dr::createColor blinkYellow -display $display_object -red 255 -green 255 -blue 0 -blink true
dr::createColor blinkWhite -display $display_object -red 255 -green 255 -blue 255 -blink true
dr::createColor TrueColorBright -display $display_object -red 166 -green 176 -blue 186
dr::createColor TrueColorGhost -display $display_object -red 160 -green 200 -blue 240
dr::createColor plotcolor0 -display $display_object -red 255 -green 0 -blue 0
dr::createColor plotcolor1 -display $display_object -red 204 -green 0 -blue 255
dr::createColor plotcolor2 -display $display_object -red 0 -green 255 -blue 102
dr::createColor plotcolor3 -display $display_object -red 204 -green 255 -blue 0
dr::createColor plotcolor4 -display $display_object -red 0 -green 102 -blue 255
dr::createColor plotcolor5 -display $display_object -red 255 -green 153 -blue 0
dr::createColor plotcolor6 -display $display_object -red 255 -green 0 -blue 153
dr::createColor plotcolor7 -display $display_object -red 0 -green 255 -blue 255
dr::createColor plotcolor8 -display $display_object -red 51 -green 255 -blue 0
dr::createColor plotcolor9 -display $display_object -red 51 -green 0 -blue 255
dr::createColor plotcolor10 -display $display_object -red 255 -green 153 -blue 153
dr::createColor plotcolor11 -display $display_object -red 235 -green 153 -blue 255
dr::createColor plotcolor12 -display $display_object -red 153 -green 255 -blue 194
dr::createColor plotcolor13 -display $display_object -red 235 -green 255 -blue 153
dr::createColor plotcolor14 -display $display_object -red 153 -green 194 -blue 255
dr::createColor plotcolor15 -display $display_object -red 255 -green 214 -blue 153
dr::createColor plotcolor16 -display $display_object -red 255 -green 153 -blue 214
dr::createColor plotcolor17 -display $display_object -red 153 -green 255 -blue 255
dr::createColor plotcolor18 -display $display_object -red 173 -green 255 -blue 153
dr::createColor plotcolor19 -display $display_object -red 173 -green 153 -blue 255
dr::createColor plotpacketrefcolor -display $display_object -red 255 -green 217 -blue 78
dr::createColor winFore -display $display_object -red 128 -green 0 -blue 0
dr::createColor #8e3415 -display $display_object -red 142 -green 52 -blue 21
dr::createColor #55ce57 -display $display_object -red 85 -green 206 -blue 87
dr::createColor #6c9be2 -display $display_object -red 108 -green 155 -blue 226
dr::createColor #ad9348 -display $display_object -red 173 -green 147 -blue 72
dr::createColor #fb1879 -display $display_object -red 251 -green 24 -blue 121
dr::createColor #67392f -display $display_object -red 103 -green 57 -blue 47
dr::createColor #2522b7 -display $display_object -red 37 -green 34 -blue 183
dr::createColor #ec7ceb -display $display_object -red 236 -green 124 -blue 235
dr::createColor #49ee98 -display $display_object -red 73 -green 238 -blue 152
dr::createColor #9beaaf -display $display_object -red 155 -green 234 -blue 175
dr::createColor #5aac8a -display $display_object -red 90 -green 172 -blue 138
dr::createColor #ddeef3 -display $display_object -red 221 -green 238 -blue 243
dr::createColor #b0eb32 -display $display_object -red 176 -green 235 -blue 50
dr::createColor #94d628 -display $display_object -red 148 -green 214 -blue 40
dr::createColor #fa898a -display $display_object -red 250 -green 137 -blue 138
dr::createColor #7c6078 -display $display_object -red 124 -green 96 -blue 120
dr::createColor #edeb06 -display $display_object -red 237 -green 235 -blue 6
dr::createColor #225c09 -display $display_object -red 34 -green 92 -blue 9
dr::createColor #324416 -display $display_object -red 50 -green 68 -blue 22
dr::createColor #271fe3 -display $display_object -red 39 -green 31 -blue 227
dr::createColor #2507df -display $display_object -red 37 -green 7 -blue 223
dr::createColor #a7b1d1 -display $display_object -red 167 -green 177 -blue 209
dr::createColor #3a2888 -display $display_object -red 58 -green 40 -blue 136
dr::createColor #63a2db -display $display_object -red 99 -green 162 -blue 219
dr::createColor #614b6a -display $display_object -red 97 -green 75 -blue 106
dr::createColor #d69c01 -display $display_object -red 214 -green 156 -blue 1
dr::createColor #cdc16b -display $display_object -red 205 -green 193 -blue 107
dr::createColor #0e7575 -display $display_object -red 14 -green 117 -blue 117
dr::createColor #c01202 -display $display_object -red 192 -green 18 -blue 2
dr::createColor #e1d8ca -display $display_object -red 225 -green 216 -blue 202
dr::createColor #e4b00d -display $display_object -red 228 -green 176 -blue 13
dr::createColor #34c590 -display $display_object -red 52 -green 197 -blue 144
dr::createColor #d9ef03 -display $display_object -red 217 -green 239 -blue 3
dr::createColor #718e2d -display $display_object -red 113 -green 142 -blue 45
dr::createColor #5bdc70 -display $display_object -red 91 -green 220 -blue 112
dr::createColor #3f12e4 -display $display_object -red 63 -green 18 -blue 228
dr::createColor #c86634 -display $display_object -red 200 -green 102 -blue 52
dr::createColor #47649f -display $display_object -red 71 -green 100 -blue 159
dr::createColor #bf3efb -display $display_object -red 191 -green 62 -blue 251
dr::createColor #e9465c -display $display_object -red 233 -green 70 -blue 92
dr::createColor #f6b1ef -display $display_object -red 246 -green 177 -blue 239
dr::createColor #0c7e5b -display $display_object -red 12 -green 126 -blue 91
dr::createColor #e86c70 -display $display_object -red 232 -green 108 -blue 112
dr::createColor #5de533 -display $display_object -red 93 -green 229 -blue 51
dr::createColor #f9bd46 -display $display_object -red 249 -green 189 -blue 70
dr::createColor #26676b -display $display_object -red 38 -green 103 -blue 107
dr::createColor #03f979 -display $display_object -red 3 -green 249 -blue 121
dr::createColor #f894c4 -display $display_object -red 248 -green 148 -blue 196
dr::createColor #7791b3 -display $display_object -red 119 -green 145 -blue 179
dr::createColor #f9946b -display $display_object -red 249 -green 148 -blue 107
dr::createColor #867300 -display $display_object -red 134 -green 115 -blue 0
dr::createColor #9f0f89 -display $display_object -red 159 -green 15 -blue 137
dr::createColor #87ad41 -display $display_object -red 135 -green 173 -blue 65
dr::createColor #0174b8 -display $display_object -red 1 -green 116 -blue 184
dr::createColor #c2bf6d -display $display_object -red 194 -green 191 -blue 109
dr::createColor #0bdfb7 -display $display_object -red 11 -green 223 -blue 183
dr::createColor #bd74bd -display $display_object -red 189 -green 116 -blue 189
dr::createColor #b9a4fd -display $display_object -red 185 -green 164 -blue 253
dr::createColor #a6ec0e -display $display_object -red 166 -green 236 -blue 14
dr::createColor #60fe08 -display $display_object -red 96 -green 254 -blue 8
dr::createColor #3acb88 -display $display_object -red 58 -green 203 -blue 136
dr::createColor #e29901 -display $display_object -red 226 -green 153 -blue 1
dr::createColor #91d339 -display $display_object -red 145 -green 211 -blue 57
dr::createColor #f5e7f1 -display $display_object -red 245 -green 231 -blue 241
dr::createColor #f84e38 -display $display_object -red 248 -green 78 -blue 56
dr::createColor #658af3 -display $display_object -red 101 -green 138 -blue 243
dr::createColor #5a305a -display $display_object -red 90 -green 48 -blue 90
dr::createColor #88cb1d -display $display_object -red 136 -green 203 -blue 29
dr::createColor #004676 -display $display_object -red 0 -green 70 -blue 118
dr::createColor #5660ce -display $display_object -red 86 -green 96 -blue 206
dr::createColor #6c36fb -display $display_object -red 108 -green 54 -blue 251
dr::createColor #53e2e8 -display $display_object -red 83 -green 226 -blue 232
dr::createColor #0c5e62 -display $display_object -red 12 -green 94 -blue 98
dr::createColor #b1dd9c -display $display_object -red 177 -green 221 -blue 156
dr::createColor #80317c -display $display_object -red 128 -green 49 -blue 124
dr::createColor #d56ff8 -display $display_object -red 213 -green 111 -blue 248
dr::createColor #d9f817 -display $display_object -red 217 -green 248 -blue 23
dr::createColor #c16f5c -display $display_object -red 193 -green 111 -blue 92
dr::createColor #eddd07 -display $display_object -red 237 -green 221 -blue 7
dr::createColor #2d4da8 -display $display_object -red 45 -green 77 -blue 168
dr::createColor #43e12f -display $display_object -red 67 -green 225 -blue 47
dr::createColor #2e9521 -display $display_object -red 46 -green 149 -blue 33
dr::createColor #4a0c51 -display $display_object -red 74 -green 12 -blue 81
dr::createColor #97b91b -display $display_object -red 151 -green 185 -blue 27
dr::createColor #827e5b -display $display_object -red 130 -green 126 -blue 91
dr::createColor #880f5b -display $display_object -red 136 -green 15 -blue 91
dr::createColor #ff80b7 -display $display_object -red 255 -green 128 -blue 183
dr::createColor #ae438e -display $display_object -red 174 -green 67 -blue 142
dr::createColor #b654a3 -display $display_object -red 182 -green 84 -blue 163
dr::createColor #84fd79 -display $display_object -red 132 -green 253 -blue 121
dr::createColor #1437ff -display $display_object -red 20 -green 55 -blue 255
dr::createColor #10c9d8 -display $display_object -red 16 -green 201 -blue 216
dr::createColor #661a48 -display $display_object -red 102 -green 26 -blue 72
dr::createColor #79d94d -display $display_object -red 121 -green 217 -blue 77
dr::createColor #ac9801 -display $display_object -red 172 -green 152 -blue 1
dr::createColor #f26f6c -display $display_object -red 242 -green 111 -blue 108
dr::createColor #d8c178 -display $display_object -red 216 -green 193 -blue 120
dr::createColor #3f3f3c -display $display_object -red 63 -green 63 -blue 60
dr::createColor #72342b -display $display_object -red 114 -green 52 -blue 43
dr::createColor #c80a86 -display $display_object -red 200 -green 10 -blue 134
dr::createColor #ba3263 -display $display_object -red 186 -green 50 -blue 99
dr::createColor #49b403 -display $display_object -red 73 -green 180 -blue 3
dr::createColor #876bbe -display $display_object -red 135 -green 107 -blue 190
dr::createColor #7b407b -display $display_object -red 123 -green 64 -blue 123
dr::createColor #2aa0fb -display $display_object -red 42 -green 160 -blue 251
dr::createColor #44fa82 -display $display_object -red 68 -green 250 -blue 130
dr::createColor #5a68c2 -display $display_object -red 90 -green 104 -blue 194
dr::createColor #3bf37a -display $display_object -red 59 -green 243 -blue 122
dr::createColor #82b18c -display $display_object -red 130 -green 177 -blue 140
dr::createColor #99ac7e -display $display_object -red 153 -green 172 -blue 126
dr::createColor #678619 -display $display_object -red 103 -green 134 -blue 25
dr::createColor #5779b7 -display $display_object -red 87 -green 121 -blue 183
dr::createColor #2f93c0 -display $display_object -red 47 -green 147 -blue 192
dr::createColor #04507b -display $display_object -red 4 -green 80 -blue 123
dr::createColor #9f3b8a -display $display_object -red 159 -green 59 -blue 138
dr::createColor #ccf338 -display $display_object -red 204 -green 243 -blue 56
dr::createColor #4665c7 -display $display_object -red 70 -green 101 -blue 199
# Stipples definition
dr::createStipple X -display $display_object -pattern [ list \
                                                           { 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1  }\
                                                           { 0 1 0 0 0 0 0 0 0 0 0 0 0 0 1 0  }\
                                                           { 0 0 1 0 0 0 0 0 0 0 0 0 0 1 0 0  }\
                                                           { 0 0 0 1 0 0 0 0 0 0 0 0 1 0 0 0  }\
                                                           { 0 0 0 0 1 0 0 0 0 0 0 1 0 0 0 0  }\
                                                           { 0 0 0 0 0 1 0 0 0 0 1 0 0 0 0 0  }\
                                                           { 0 0 0 0 0 0 1 0 0 1 0 0 0 0 0 0  }\
                                                           { 0 0 0 0 0 0 0 1 1 0 0 0 0 0 0 0  }\
                                                           { 0 0 0 0 0 0 0 1 1 0 0 0 0 0 0 0  }\
                                                           { 0 0 0 0 0 0 1 0 0 1 0 0 0 0 0 0  }\
                                                           { 0 0 0 0 0 1 0 0 0 0 1 0 0 0 0 0  }\
                                                           { 0 0 0 0 1 0 0 0 0 0 0 1 0 0 0 0  }\
                                                           { 0 0 0 1 0 0 0 0 0 0 0 0 1 0 0 0  }\
                                                           { 0 0 1 0 0 0 0 0 0 0 0 0 0 1 0 0  }\
                                                           { 0 1 0 0 0 0 0 0 0 0 0 0 0 0 1 0  }\
                                                           { 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1  } ]
dr::createStipple blank -display $display_object -pattern [ list \
                                                               { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                               { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                               { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                               { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                               { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                               { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                               { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                               { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                               { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                               { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                               { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                               { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                               { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                               { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                               { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                               { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  } ]
dr::createStipple solid -display $display_object -pattern [ list \
                                                               { 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1  }\
                                                               { 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1  }\
                                                               { 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1  }\
                                                               { 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1  }\
                                                               { 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1  }\
                                                               { 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1  }\
                                                               { 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1  }\
                                                               { 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1  }\
                                                               { 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1  }\
                                                               { 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1  }\
                                                               { 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1  }\
                                                               { 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1  }\
                                                               { 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1  }\
                                                               { 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1  }\
                                                               { 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1  }\
                                                               { 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1  } ]
dr::createStipple dots -display $display_object -pattern [ list \
                                                              { 0 1 0 0 0 1 0 0 0 1 0 0 0 1 0 0  }\
                                                              { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                              { 0 0 0 1 0 0 0 1 0 0 0 1 0 0 0 1  }\
                                                              { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                              { 0 1 0 0 0 1 0 0 0 1 0 0 0 1 0 0  }\
                                                              { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                              { 0 0 0 1 0 0 0 1 0 0 0 1 0 0 0 1  }\
                                                              { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                              { 0 1 0 0 0 1 0 0 0 1 0 0 0 1 0 0  }\
                                                              { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                              { 0 0 0 1 0 0 0 1 0 0 0 1 0 0 0 1  }\
                                                              { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                              { 0 1 0 0 0 1 0 0 0 1 0 0 0 1 0 0  }\
                                                              { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                              { 0 0 0 1 0 0 0 1 0 0 0 1 0 0 0 1  }\
                                                              { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  } ]
dr::createStipple dots1 -display $display_object -pattern [ list \
                                                               { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                               { 0 0 1 0 0 0 1 0 0 0 1 0 0 0 1 0  }\
                                                               { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                               { 1 0 0 0 1 0 0 0 1 0 0 0 1 0 0 0  }\
                                                               { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                               { 0 0 1 0 0 0 1 0 0 0 1 0 0 0 1 0  }\
                                                               { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                               { 1 0 0 0 1 0 0 0 1 0 0 0 1 0 0 0  }\
                                                               { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                               { 0 0 1 0 0 0 1 0 0 0 1 0 0 0 1 0  }\
                                                               { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                               { 1 0 0 0 1 0 0 0 1 0 0 0 1 0 0 0  }\
                                                               { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                               { 0 0 1 0 0 0 1 0 0 0 1 0 0 0 1 0  }\
                                                               { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                               { 1 0 0 0 1 0 0 0 1 0 0 0 1 0 0 0  } ]
dr::createStipple hLine -display $display_object -pattern [ list \
                                                               { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                               { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                               { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                               { 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1  }\
                                                               { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                               { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                               { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                               { 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1  }\
                                                               { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                               { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                               { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                               { 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1  }\
                                                               { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                               { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                               { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                               { 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1  } ]
dr::createStipple vLine -display $display_object -pattern [ list \
                                                               { 0 0 1 0 0 0 1 0 0 0 1 0 0 0 1 0  }\
                                                               { 0 0 1 0 0 0 1 0 0 0 1 0 0 0 1 0  }\
                                                               { 0 0 1 0 0 0 1 0 0 0 1 0 0 0 1 0  }\
                                                               { 0 0 1 0 0 0 1 0 0 0 1 0 0 0 1 0  }\
                                                               { 0 0 1 0 0 0 1 0 0 0 1 0 0 0 1 0  }\
                                                               { 0 0 1 0 0 0 1 0 0 0 1 0 0 0 1 0  }\
                                                               { 0 0 1 0 0 0 1 0 0 0 1 0 0 0 1 0  }\
                                                               { 0 0 1 0 0 0 1 0 0 0 1 0 0 0 1 0  }\
                                                               { 0 0 1 0 0 0 1 0 0 0 1 0 0 0 1 0  }\
                                                               { 0 0 1 0 0 0 1 0 0 0 1 0 0 0 1 0  }\
                                                               { 0 0 1 0 0 0 1 0 0 0 1 0 0 0 1 0  }\
                                                               { 0 0 1 0 0 0 1 0 0 0 1 0 0 0 1 0  }\
                                                               { 0 0 1 0 0 0 1 0 0 0 1 0 0 0 1 0  }\
                                                               { 0 0 1 0 0 0 1 0 0 0 1 0 0 0 1 0  }\
                                                               { 0 0 1 0 0 0 1 0 0 0 1 0 0 0 1 0  }\
                                                               { 0 0 1 0 0 0 1 0 0 0 1 0 0 0 1 0  } ]
dr::createStipple cross -display $display_object -pattern [ list \
                                                               { 1 0 0 0 1 0 0 0 1 0 0 0 1 0 0 0  }\
                                                               { 0 1 0 1 0 1 0 1 0 1 0 1 0 1 0 1  }\
                                                               { 0 0 1 0 0 0 1 0 0 0 1 0 0 0 1 0  }\
                                                               { 0 1 0 1 0 1 0 1 0 1 0 1 0 1 0 1  }\
                                                               { 1 0 0 0 1 0 0 0 1 0 0 0 1 0 0 0  }\
                                                               { 0 1 0 1 0 1 0 1 0 1 0 1 0 1 0 1  }\
                                                               { 0 0 1 0 0 0 1 0 0 0 1 0 0 0 1 0  }\
                                                               { 0 1 0 1 0 1 0 1 0 1 0 1 0 1 0 1  }\
                                                               { 1 0 0 0 1 0 0 0 1 0 0 0 1 0 0 0  }\
                                                               { 0 1 0 1 0 1 0 1 0 1 0 1 0 1 0 1  }\
                                                               { 0 0 1 0 0 0 1 0 0 0 1 0 0 0 1 0  }\
                                                               { 0 1 0 1 0 1 0 1 0 1 0 1 0 1 0 1  }\
                                                               { 1 0 0 0 1 0 0 0 1 0 0 0 1 0 0 0  }\
                                                               { 0 1 0 1 0 1 0 1 0 1 0 1 0 1 0 1  }\
                                                               { 0 0 1 0 0 0 1 0 0 0 1 0 0 0 1 0  }\
                                                               { 0 1 0 1 0 1 0 1 0 1 0 1 0 1 0 1  } ]
dr::createStipple grid -display $display_object -pattern [ list \
                                                              { 0 0 0 1 0 0 0 1 0 0 0 1 0 0 0 1  }\
                                                              { 0 0 0 1 0 0 0 1 0 0 0 1 0 0 0 1  }\
                                                              { 0 0 0 1 0 0 0 1 0 0 0 1 0 0 0 1  }\
                                                              { 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1  }\
                                                              { 0 0 0 1 0 0 0 1 0 0 0 1 0 0 0 1  }\
                                                              { 0 0 0 1 0 0 0 1 0 0 0 1 0 0 0 1  }\
                                                              { 0 0 0 1 0 0 0 1 0 0 0 1 0 0 0 1  }\
                                                              { 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1  }\
                                                              { 0 0 0 1 0 0 0 1 0 0 0 1 0 0 0 1  }\
                                                              { 0 0 0 1 0 0 0 1 0 0 0 1 0 0 0 1  }\
                                                              { 0 0 0 1 0 0 0 1 0 0 0 1 0 0 0 1  }\
                                                              { 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1  }\
                                                              { 0 0 0 1 0 0 0 1 0 0 0 1 0 0 0 1  }\
                                                              { 0 0 0 1 0 0 0 1 0 0 0 1 0 0 0 1  }\
                                                              { 0 0 0 1 0 0 0 1 0 0 0 1 0 0 0 1  }\
                                                              { 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1  } ]
dr::createStipple slash -display $display_object -pattern [ list \
                                                               { 0 0 0 1 0 0 0 1 0 0 0 1 0 0 0 1  }\
                                                               { 0 0 1 0 0 0 1 0 0 0 1 0 0 0 1 0  }\
                                                               { 0 1 0 0 0 1 0 0 0 1 0 0 0 1 0 0  }\
                                                               { 1 0 0 0 1 0 0 0 1 0 0 0 1 0 0 0  }\
                                                               { 0 0 0 1 0 0 0 1 0 0 0 1 0 0 0 1  }\
                                                               { 0 0 1 0 0 0 1 0 0 0 1 0 0 0 1 0  }\
                                                               { 0 1 0 0 0 1 0 0 0 1 0 0 0 1 0 0  }\
                                                               { 1 0 0 0 1 0 0 0 1 0 0 0 1 0 0 0  }\
                                                               { 0 0 0 1 0 0 0 1 0 0 0 1 0 0 0 1  }\
                                                               { 0 0 1 0 0 0 1 0 0 0 1 0 0 0 1 0  }\
                                                               { 0 1 0 0 0 1 0 0 0 1 0 0 0 1 0 0  }\
                                                               { 1 0 0 0 1 0 0 0 1 0 0 0 1 0 0 0  }\
                                                               { 0 0 0 1 0 0 0 1 0 0 0 1 0 0 0 1  }\
                                                               { 0 0 1 0 0 0 1 0 0 0 1 0 0 0 1 0  }\
                                                               { 0 1 0 0 0 1 0 0 0 1 0 0 0 1 0 0  }\
                                                               { 1 0 0 0 1 0 0 0 1 0 0 0 1 0 0 0  } ]
dr::createStipple backSlash -display $display_object -pattern [ list \
                                                                   { 1 0 0 0 1 0 0 0 1 0 0 0 1 0 0 0  }\
                                                                   { 0 1 0 0 0 1 0 0 0 1 0 0 0 1 0 0  }\
                                                                   { 0 0 1 0 0 0 1 0 0 0 1 0 0 0 1 0  }\
                                                                   { 0 0 0 1 0 0 0 1 0 0 0 1 0 0 0 1  }\
                                                                   { 1 0 0 0 1 0 0 0 1 0 0 0 1 0 0 0  }\
                                                                   { 0 1 0 0 0 1 0 0 0 1 0 0 0 1 0 0  }\
                                                                   { 0 0 1 0 0 0 1 0 0 0 1 0 0 0 1 0  }\
                                                                   { 0 0 0 1 0 0 0 1 0 0 0 1 0 0 0 1  }\
                                                                   { 1 0 0 0 1 0 0 0 1 0 0 0 1 0 0 0  }\
                                                                   { 0 1 0 0 0 1 0 0 0 1 0 0 0 1 0 0  }\
                                                                   { 0 0 1 0 0 0 1 0 0 0 1 0 0 0 1 0  }\
                                                                   { 0 0 0 1 0 0 0 1 0 0 0 1 0 0 0 1  }\
                                                                   { 1 0 0 0 1 0 0 0 1 0 0 0 1 0 0 0  }\
                                                                   { 0 1 0 0 0 1 0 0 0 1 0 0 0 1 0 0  }\
                                                                   { 0 0 1 0 0 0 1 0 0 0 1 0 0 0 1 0  }\
                                                                   { 0 0 0 1 0 0 0 1 0 0 0 1 0 0 0 1  } ]
dr::createStipple hZigZag -display $display_object -pattern [ list \
                                                                 { 1 1 0 0 0 0 0 0 1 1 0 0 0 0 0 0  }\
                                                                 { 0 0 1 0 0 0 0 0 0 0 1 0 0 0 0 0  }\
                                                                 { 0 0 0 1 1 0 0 0 0 0 0 1 1 0 0 0  }\
                                                                 { 0 0 0 0 0 1 0 0 0 0 0 0 0 1 0 0  }\
                                                                 { 0 0 0 0 0 0 1 1 0 0 0 0 0 0 1 1  }\
                                                                 { 1 0 0 0 0 0 0 0 1 0 0 0 0 0 0 0  }\
                                                                 { 0 1 1 0 0 0 0 0 0 1 1 0 0 0 0 0  }\
                                                                 { 0 0 0 1 0 0 0 0 0 0 0 1 0 0 0 0  }\
                                                                 { 0 0 0 0 1 1 0 0 0 0 0 0 1 1 0 0  }\
                                                                 { 0 0 0 0 0 0 1 0 0 0 0 0 0 0 1 0  }\
                                                                 { 1 0 0 0 0 0 0 1 1 0 0 0 0 0 0 1  }\
                                                                 { 0 1 0 0 0 0 0 0 0 1 0 0 0 0 0 0  }\
                                                                 { 0 0 1 1 0 0 0 0 0 0 1 1 0 0 0 0  }\
                                                                 { 0 0 0 0 1 0 0 0 0 0 0 0 1 0 0 0  }\
                                                                 { 0 0 0 0 0 1 1 0 0 0 0 0 0 1 1 0  }\
                                                                 { 0 0 0 0 0 0 0 1 0 0 0 0 0 0 0 1  } ]
dr::createStipple vZigZag -display $display_object -pattern [ list \
                                                                 { 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 0  }\
                                                                 { 1 0 0 0 0 0 1 0 0 0 0 1 0 0 0 0  }\
                                                                 { 0 1 0 0 0 0 1 0 0 0 0 0 1 0 0 0  }\
                                                                 { 0 0 1 0 0 0 0 1 0 0 0 0 1 0 0 0  }\
                                                                 { 0 0 1 0 0 0 0 0 1 0 0 0 0 1 0 0  }\
                                                                 { 0 0 0 1 0 0 0 0 1 0 0 0 0 0 1 0  }\
                                                                 { 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1 0  }\
                                                                 { 0 0 0 0 1 0 0 0 0 0 1 0 0 0 0 1  }\
                                                                 { 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 0  }\
                                                                 { 1 0 0 0 0 0 1 0 0 0 0 1 0 0 0 0  }\
                                                                 { 0 1 0 0 0 0 1 0 0 0 0 0 1 0 0 0  }\
                                                                 { 0 0 1 0 0 0 0 1 0 0 0 0 1 0 0 0  }\
                                                                 { 0 0 1 0 0 0 0 0 1 0 0 0 0 1 0 0  }\
                                                                 { 0 0 0 1 0 0 0 0 1 0 0 0 0 0 1 0  }\
                                                                 { 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1 0  }\
                                                                 { 0 0 0 0 1 0 0 0 0 0 1 0 0 0 0 1  } ]
dr::createStipple hCurb -display $display_object -pattern [ list \
                                                               { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                               { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                               { 0 0 0 1 1 1 1 1 0 0 0 1 1 1 1 1  }\
                                                               { 0 0 0 1 0 0 0 1 0 0 0 1 0 0 0 1  }\
                                                               { 0 0 0 1 0 0 0 1 0 0 0 1 0 0 0 1  }\
                                                               { 1 1 1 1 0 0 0 1 1 1 1 1 0 0 0 1  }\
                                                               { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                               { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                               { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                               { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                               { 0 0 0 1 1 1 1 1 0 0 0 1 1 1 1 1  }\
                                                               { 0 0 0 1 0 0 0 1 0 0 0 1 0 0 0 1  }\
                                                               { 0 0 0 1 0 0 0 1 0 0 0 1 0 0 0 1  }\
                                                               { 1 1 1 1 0 0 0 1 1 1 1 1 0 0 0 1  }\
                                                               { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                               { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  } ]
dr::createStipple vCurb -display $display_object -pattern [ list \
                                                               { 0 0 0 0 0 1 0 0 0 0 0 0 0 1 0 0  }\
                                                               { 0 0 0 0 0 1 0 0 0 0 0 0 0 1 0 0  }\
                                                               { 0 0 0 0 0 1 0 0 0 0 0 0 0 1 0 0  }\
                                                               { 0 0 1 1 1 1 0 0 0 0 1 1 1 1 0 0  }\
                                                               { 0 0 1 0 0 0 0 0 0 0 1 0 0 0 0 0  }\
                                                               { 0 0 1 0 0 0 0 0 0 0 1 0 0 0 0 0  }\
                                                               { 0 0 1 0 0 0 0 0 0 0 1 0 0 0 0 0  }\
                                                               { 0 0 1 1 1 1 0 0 0 0 1 1 1 1 0 0  }\
                                                               { 0 0 0 0 0 1 0 0 0 0 0 0 0 1 0 0  }\
                                                               { 0 0 0 0 0 1 0 0 0 0 0 0 0 1 0 0  }\
                                                               { 0 0 0 0 0 1 0 0 0 0 0 0 0 1 0 0  }\
                                                               { 0 0 1 1 1 1 0 0 0 0 1 1 1 1 0 0  }\
                                                               { 0 0 1 0 0 0 0 0 0 0 1 0 0 0 0 0  }\
                                                               { 0 0 1 0 0 0 0 0 0 0 1 0 0 0 0 0  }\
                                                               { 0 0 1 0 0 0 0 0 0 0 1 0 0 0 0 0  }\
                                                               { 0 0 1 1 1 1 0 0 0 0 1 1 1 1 0 0  } ]
dr::createStipple brick -display $display_object -pattern [ list \
                                                               { 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1  }\
                                                               { 0 0 1 0 0 0 0 0 0 0 1 0 0 0 0 0  }\
                                                               { 0 0 1 0 0 0 0 0 0 0 1 0 0 0 0 0  }\
                                                               { 0 0 1 0 0 0 0 0 0 0 1 0 0 0 0 0  }\
                                                               { 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1  }\
                                                               { 0 0 0 0 0 0 1 0 0 0 0 0 0 0 1 0  }\
                                                               { 0 0 0 0 0 0 1 0 0 0 0 0 0 0 1 0  }\
                                                               { 0 0 0 0 0 0 1 0 0 0 0 0 0 0 1 0  }\
                                                               { 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1  }\
                                                               { 0 0 1 0 0 0 0 0 0 0 1 0 0 0 0 0  }\
                                                               { 0 0 1 0 0 0 0 0 0 0 1 0 0 0 0 0  }\
                                                               { 0 0 1 0 0 0 0 0 0 0 1 0 0 0 0 0  }\
                                                               { 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1  }\
                                                               { 0 0 0 0 0 0 1 0 0 0 0 0 0 0 1 0  }\
                                                               { 0 0 0 0 0 0 1 0 0 0 0 0 0 0 1 0  }\
                                                               { 0 0 0 0 0 0 1 0 0 0 0 0 0 0 1 0  } ]
dr::createStipple dagger -display $display_object -pattern [ list \
                                                                { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                                { 0 0 1 0 0 0 0 0 0 0 1 0 0 0 0 0  }\
                                                                { 0 0 1 0 0 0 0 0 0 0 1 0 0 0 0 0  }\
                                                                { 0 0 1 0 0 0 0 0 0 0 1 0 0 0 0 0  }\
                                                                { 1 1 1 1 1 0 0 0 1 1 1 1 1 0 0 0  }\
                                                                { 0 0 1 0 0 0 0 0 0 0 1 0 0 0 0 0  }\
                                                                { 0 0 1 0 0 0 0 0 0 0 1 0 0 0 0 0  }\
                                                                { 0 0 1 0 0 0 0 0 0 0 1 0 0 0 0 0  }\
                                                                { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                                { 0 0 0 0 0 1 0 0 0 0 0 0 0 1 0 0  }\
                                                                { 0 0 0 0 0 1 0 0 0 0 0 0 0 1 0 0  }\
                                                                { 0 0 0 0 0 1 0 0 0 0 0 0 0 1 0 0  }\
                                                                { 0 0 0 1 1 1 1 1 0 0 0 1 1 1 1 1  }\
                                                                { 0 0 0 0 0 1 0 0 0 0 0 0 0 1 0 0  }\
                                                                { 0 0 0 0 0 1 0 0 0 0 0 0 0 1 0 0  }\
                                                                { 0 0 0 0 0 1 0 0 0 0 0 0 0 1 0 0  } ]
dr::createStipple triangle -display $display_object -pattern [ list \
                                                                  { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                                  { 0 0 0 0 1 0 0 0 0 0 0 0 0 0 0 0  }\
                                                                  { 0 0 0 1 0 1 0 0 0 0 0 0 0 0 0 0  }\
                                                                  { 0 0 1 0 0 0 1 0 0 0 0 0 0 0 0 0  }\
                                                                  { 0 1 0 0 0 0 0 1 0 0 0 0 0 0 0 0  }\
                                                                  { 1 1 1 1 1 1 1 1 1 0 0 0 0 0 0 0  }\
                                                                  { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                                  { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                                  { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                                  { 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 0  }\
                                                                  { 0 0 0 0 0 0 0 0 0 0 1 0 1 0 0 0  }\
                                                                  { 0 0 0 0 0 0 0 0 0 1 0 0 0 1 0 0  }\
                                                                  { 0 0 0 0 0 0 0 0 1 0 0 0 0 0 1 0  }\
                                                                  { 0 0 0 0 0 0 0 1 1 1 1 1 1 1 1 1  }\
                                                                  { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                                  { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  } ]
dr::createStipple x -display $display_object -pattern [ list \
                                                           { 1 0 0 0 1 0 0 0 1 0 0 0 1 0 0 0  }\
                                                           { 0 1 0 1 0 1 0 1 0 1 0 1 0 1 0 1  }\
                                                           { 0 0 1 0 0 0 1 0 0 0 1 0 0 0 1 0  }\
                                                           { 0 1 0 1 0 1 0 1 0 1 0 1 0 1 0 1  }\
                                                           { 1 0 0 0 1 0 0 0 1 0 0 0 1 0 0 0  }\
                                                           { 0 1 0 1 0 1 0 1 0 1 0 1 0 1 0 1  }\
                                                           { 0 0 1 0 0 0 1 0 0 0 1 0 0 0 1 0  }\
                                                           { 0 1 0 1 0 1 0 1 0 1 0 1 0 1 0 1  }\
                                                           { 1 0 0 0 1 0 0 0 1 0 0 0 1 0 0 0  }\
                                                           { 0 1 0 1 0 1 0 1 0 1 0 1 0 1 0 1  }\
                                                           { 0 0 1 0 0 0 1 0 0 0 1 0 0 0 1 0  }\
                                                           { 0 1 0 1 0 1 0 1 0 1 0 1 0 1 0 1  }\
                                                           { 1 0 0 0 1 0 0 0 1 0 0 0 1 0 0 0  }\
                                                           { 0 1 0 1 0 1 0 1 0 1 0 1 0 1 0 1  }\
                                                           { 0 0 1 0 0 0 1 0 0 0 1 0 0 0 1 0  }\
                                                           { 0 1 0 1 0 1 0 1 0 1 0 1 0 1 0 1  } ]
dr::createStipple dotsa -display $display_object -pattern [ list \
                                                               { 0 0 0 0 0 1 0 0 0 0 0 0 0 1 0 0  }\
                                                               { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                               { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                               { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                               { 0 1 0 0 0 0 0 0 0 1 0 0 0 0 0 0  }\
                                                               { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                               { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                               { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                               { 0 0 0 0 0 1 0 0 0 0 0 0 0 1 0 0  }\
                                                               { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                               { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                               { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                               { 0 1 0 0 0 0 0 0 0 1 0 0 0 0 0 0  }\
                                                               { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                               { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                               { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  } ]
dr::createStipple cross2 -display $display_object -pattern [ list \
                                                                { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                                { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                                { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                                { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                                { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                                { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                                { 0 0 0 0 0 0 0 1 0 1 0 0 0 0 0 0  }\
                                                                { 0 0 0 0 0 0 0 0 1 0 0 0 0 0 0 0  }\
                                                                { 0 0 0 0 0 0 0 1 0 1 0 0 0 0 0 0  }\
                                                                { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                                { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                                { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                                { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                                { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                                { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                                { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  } ]
dr::createStipple dot4 -display $display_object -pattern [ list \
                                                              { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                              { 0 1 0 0 0 1 0 0 0 1 0 0 0 1 0 0  }\
                                                              { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                              { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                              { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                              { 0 1 0 0 0 1 0 0 0 1 0 0 0 1 0 0  }\
                                                              { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                              { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                              { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                              { 0 1 0 0 0 1 0 0 0 1 0 0 0 1 0 0  }\
                                                              { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                              { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                              { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                              { 0 1 0 0 0 1 0 0 0 1 0 0 0 1 0 0  }\
                                                              { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                              { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  } ]
dr::createStipple dots2 -display $display_object -pattern [ list \
                                                               { 0 1 0 0 0 1 0 0 0 1 0 0 0 1 0 0  }\
                                                               { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                               { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                               { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                               { 0 1 0 0 0 1 0 0 0 1 0 0 0 1 0 0  }\
                                                               { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                               { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                               { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                               { 0 1 0 0 0 1 0 0 0 1 0 0 0 1 0 0  }\
                                                               { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                               { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                               { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                               { 0 1 0 0 0 1 0 0 0 1 0 0 0 1 0 0  }\
                                                               { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                               { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                               { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  } ]
dr::createStipple cross1 -display $display_object -pattern [ list \
                                                                { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                                { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                                { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                                { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                                { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                                { 0 0 0 0 0 0 0 0 1 0 0 0 0 0 0 0  }\
                                                                { 0 0 0 0 0 0 0 0 1 0 0 0 0 0 0 0  }\
                                                                { 0 0 0 0 0 0 1 1 1 1 1 0 0 0 0 0  }\
                                                                { 0 0 0 0 0 0 0 0 1 0 0 0 0 0 0 0  }\
                                                                { 0 0 0 0 0 0 0 0 1 0 0 0 0 0 0 0  }\
                                                                { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                                { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                                { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                                { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                                { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                                { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  } ]
dr::createStipple enter -display $display_object -pattern [ list \
                                                               { 0 0 0 0 1 0 0 0 0 0 0 0 0 0 0 0  }\
                                                               { 0 0 0 0 0 1 0 0 0 0 0 0 0 0 0 0  }\
                                                               { 0 0 0 0 0 0 1 0 0 0 0 0 0 0 0 0  }\
                                                               { 0 0 0 0 0 0 0 1 0 0 0 0 0 0 0 0  }\
                                                               { 0 0 0 0 0 0 0 0 1 0 0 0 0 0 0 0  }\
                                                               { 0 0 0 0 0 0 0 0 0 1 0 0 0 0 0 0  }\
                                                               { 0 0 0 0 0 0 0 0 0 0 1 0 0 0 0 0  }\
                                                               { 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 0  }\
                                                               { 0 0 0 1 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                               { 0 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                               { 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                               { 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                               { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1  }\
                                                               { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0  }\
                                                               { 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0  }\
                                                               { 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0  } ]
# LineStyles definition
dr::createLineStyle solid -display $display_object -width 1 -pattern [ list 1 1 1 ]
dr::createLineStyle dashed -display $display_object -width 1 -pattern [ list 1 1 1 1 0 0 ]
dr::createLineStyle dots -display $display_object -width 1 -pattern [ list 1 0 0 ]
dr::createLineStyle dashDot -display $display_object -width 1 -pattern [ list 1 1 1 0 0 1 0 0 ]
dr::createLineStyle shortDash -display $display_object -width 1 -pattern [ list 1 1 0 0 ]
dr::createLineStyle doubleDash -display $display_object -width 1 -pattern [ list 1 1 1 1 0 0 1 1 0 0 ]
dr::createLineStyle longDash -display $display_object -width 1 -pattern [ list 1 1 1 1 1 0 0 0 0 0 0 1 1 1 1 1 ]
dr::createLineStyle hidden -display $display_object -width 1 -pattern [ list 1 0 0 0 ]
dr::createLineStyle mediumLine -display $display_object -width 2 -pattern [ list 1 1 1 ]
dr::createLineStyle thickLine -display $display_object -width 3 -pattern [ list 1 1 1 ]
dr::createLineStyle thickDashed -display $display_object -width 3 -pattern [ list 1 1 1 1 0 0 ]
dr::createLineStyle thickLine2 -display $display_object -width 2 -pattern [ list 1 1 1 ]
dr::createLineStyle lineStyle0 -display $display_object -width 1 -pattern [ list 1 ]
dr::createLineStyle dash -display $display_object -width 1 -pattern [ list 1 1 1 0 1 1 1 0 ]
# Packets definition
dr::createPacket defaultTermName -display $display_object -stipple inherited \
                       -lineStyle inherited -fill inherited -outline inherited
dr::createPacket background -display $display_object -stipple blank \
                          -lineStyle solid -fill black -outline black
dr::createPacket grid -display $display_object -stipple blank \
                    -lineStyle solid -fill slate -outline slate
dr::createPacket grid1 -display $display_object -stipple blank \
                     -lineStyle solid -fill white -outline white
dr::createPacket axis -display $display_object -stipple blank \
                    -lineStyle solid -fill white -outline white
dr::createPacket instance -display $display_object -stipple blank \
                            -lineStyle solid -fill red -outline red
dr::createPacket instanceLbl -display $display_object -stipple blank \
                             -lineStyle solid -fill gold -outline gold
dr::createPacket prBoundary -display $display_object -stipple blank \
                        -lineStyle solid -fill purple -outline purple
dr::createPacket prBoundaryBnd -display $display_object -stipple blank \
                               -lineStyle solid -fill cyan -outline cyan
dr::createPacket prBoundaryLbl -display $display_object -stipple blank \
                           -lineStyle solid -fill purple -outline purple
dr::createPacket row -display $display_object -stipple blank \
           -lineStyle solid -fill webOrange -outline webOrange
dr::createPacket rowSite -display $display_object -stipple blank \
               -lineStyle solid -fill webOrange -outline webOrange
dr::createPacket areaBoundaryPrefDir -display $display_object -stipple blank \
                     -lineStyle thickDashed -fill webOrange -outline webOrange
dr::createPacket align -display $display_object -stipple blank \
                         -lineStyle solid -fill tan -outline tan
dr::createPacket alignAssist -display $display_object -stipple blank \
                            -lineStyle solid -fill tan -outline yellow -fillStyle outline
dr::createPacket hardFence -display $display_object -stipple blank \
                             -lineStyle solid -fill red -outline red
dr::createPacket softFence -display $display_object -stipple blank \
                       -lineStyle solid -fill yellow -outline yellow
dr::createPacket text -display $display_object -stipple blank \
                    -lineStyle solid -fill white -outline white
dr::createPacket text1 -display $display_object -stipple blank \
                    -lineStyle dashed -fill white -outline white
dr::createPacket text2 -display $display_object -stipple solid \
                     -lineStyle solid -fill white -outline white
dr::createPacket border -display $display_object -stipple blank \
                          -lineStyle solid -fill tan -outline tan
dr::createPacket area -display $display_object -stipple blank \
                        -lineStyle solid -fill tan -outline tan -fillStyle outline
dr::createPacket device -display $display_object -stipple blank \
                      -lineStyle solid -fill green -outline green
dr::createPacket device2 -display $display_object -stipple blank \
                      -lineStyle dashed -fill green -outline green
dr::createPacket device1 -display $display_object -stipple solid \
                       -lineStyle solid -fill green -outline green
dr::createPacket wire -display $display_object -stipple solid \
            -lineStyle solid -fill cadetBlue -outline cadetBlue
dr::createPacket wireLbl -display $display_object -stipple solid \
               -lineStyle solid -fill cadetBlue -outline cadetBlue
dr::createPacket wireFlt -display $display_object -stipple blank \
                          -lineStyle dashed -fill red -outline red
dr::createPacket annotateIncomplete -display $display_object -stipple X \
                                -lineStyle solid -fill pink -outline pink
dr::createPacket deviceAnt -display $display_object -stipple blank \
                       -lineStyle solid -fill yellow -outline yellow
dr::createPacket deviceLbl -display $display_object -stipple blank \
                         -lineStyle solid -fill green -outline green
dr::createPacket pinLbl -display $display_object -stipple blank \
                          -lineStyle solid -fill red -outline red
dr::createPacket pin -display $display_object -stipple solid \
                       -lineStyle solid -fill red -outline red
dr::createPacket pinAnt -display $display_object -stipple blank \
                          -lineStyle solid -fill red -outline red
dr::createPacket annotate -display $display_object -stipple blank \
                      -lineStyle solid -fill orange -outline orange
dr::createPacket annotate1 -display $display_object -stipple blank \
                           -lineStyle solid -fill pink -outline pink
dr::createPacket annotate2 -display $display_object -stipple blank \
                           -lineStyle solid -fill lime -outline lime
dr::createPacket annotate3 -display $display_object -stipple blank \
                           -lineStyle solid -fill cyan -outline cyan
dr::createPacket annotate4 -display $display_object -stipple blank \
                       -lineStyle solid -fill yellow -outline yellow
dr::createPacket annotate5 -display $display_object -stipple blank \
                         -lineStyle solid -fill white -outline white
dr::createPacket annotate6 -display $display_object -stipple blank \
                       -lineStyle solid -fill silver -outline silver
dr::createPacket annotate7 -display $display_object -stipple blank \
                             -lineStyle solid -fill red -outline red
dr::createPacket annotate8 -display $display_object -stipple blank \
                             -lineStyle solid -fill tan -outline tan
dr::createPacket annotate9 -display $display_object -stipple blank \
                         -lineStyle solid -fill green -outline green
dr::createPacket edgeLayer -display $display_object -stipple blank \
                 -lineStyle solid -fill winColor5 -outline winColor5
dr::createPacket edgeLayerPin -display $display_object -stipple blank \
                          -lineStyle solid -fill yellow -outline yellow
dr::createPacket snap -display $display_object -stipple blank \
                  -lineStyle solid -fill yellow -outline yellow
dr::createPacket stretch -display $display_object -stipple blank \
                     -lineStyle solid -fill yellow -outline yellow
dr::createPacket y0 -display $display_object -stipple blank \
                -lineStyle solid -fill yellow -outline yellow
dr::createPacket y1 -display $display_object -stipple blank \
                      -lineStyle solid -fill red -outline red
dr::createPacket y2 -display $display_object -stipple blank \
                  -lineStyle solid -fill green -outline green
dr::createPacket y3 -display $display_object -stipple blank \
              -lineStyle solid -fill magenta -outline magenta
dr::createPacket y4 -display $display_object -stipple blank \
                    -lineStyle solid -fill cyan -outline cyan
dr::createPacket y5 -display $display_object -stipple blank \
                -lineStyle solid -fill purple -outline purple
dr::createPacket y6 -display $display_object -stipple blank \
                -lineStyle solid -fill orange -outline orange
dr::createPacket y7 -display $display_object -stipple blank \
                    -lineStyle solid -fill gold -outline gold
dr::createPacket y8 -display $display_object -stipple blank \
                    -lineStyle solid -fill blue -outline blue
dr::createPacket y9 -display $display_object -stipple blank \
                -lineStyle solid -fill silver -outline silver -fillStyle outline
dr::createPacket y0Flt -display $display_object -stipple blank \
                   -lineStyle solid -fill yellow -outline yellow
dr::createPacket y0Top -display $display_object -stipple blank \
                   -lineStyle solid -fill yellow -outline yellow
dr::createPacket y1Flt -display $display_object -stipple blank \
                         -lineStyle solid -fill red -outline red
dr::createPacket y1Top -display $display_object -stipple blank \
                         -lineStyle solid -fill red -outline red
dr::createPacket y2Flt -display $display_object -stipple blank \
                     -lineStyle solid -fill green -outline green
dr::createPacket y2Top -display $display_object -stipple blank \
                     -lineStyle solid -fill green -outline green
dr::createPacket y3Flt -display $display_object -stipple blank \
                 -lineStyle solid -fill magenta -outline magenta
dr::createPacket y3Top -display $display_object -stipple blank \
                 -lineStyle solid -fill magenta -outline magenta
dr::createPacket y4Flt -display $display_object -stipple blank \
                       -lineStyle solid -fill cyan -outline cyan
dr::createPacket y4Top -display $display_object -stipple blank \
                       -lineStyle solid -fill cyan -outline cyan
dr::createPacket y5Flt -display $display_object -stipple blank \
                   -lineStyle solid -fill purple -outline purple
dr::createPacket y5Top -display $display_object -stipple blank \
                   -lineStyle solid -fill purple -outline purple
dr::createPacket y6Flt -display $display_object -stipple blank \
                   -lineStyle solid -fill orange -outline orange
dr::createPacket y6Top -display $display_object -stipple blank \
                   -lineStyle solid -fill orange -outline orange
dr::createPacket y7Flt -display $display_object -stipple blank \
                       -lineStyle solid -fill gold -outline gold
dr::createPacket y7Top -display $display_object -stipple blank \
                       -lineStyle solid -fill gold -outline gold
dr::createPacket y8Flt -display $display_object -stipple blank \
                       -lineStyle solid -fill blue -outline blue
dr::createPacket y8Top -display $display_object -stipple blank \
                       -lineStyle solid -fill blue -outline blue
dr::createPacket y9Flt -display $display_object -stipple blank \
                   -lineStyle solid -fill silver -outline silver
dr::createPacket y9Top -display $display_object -stipple blank \
                   -lineStyle solid -fill silver -outline silver
dr::createPacket hilite -display $display_object -stipple blank \
                      -lineStyle solid -fill white -outline white
dr::createPacket hilite1 -display $display_object -stipple blank \
                   -lineStyle thickLine -fill white -outline white
dr::createPacket hilite2 -display $display_object -stipple blank \
                           -lineStyle solid -fill tan -outline tan
dr::createPacket hilite3 -display $display_object -stipple blank \
                         -lineStyle solid -fill cyan -outline cyan
dr::createPacket hilite4 -display $display_object -stipple blank \
                     -lineStyle solid -fill orange -outline orange
dr::createPacket hilite5 -display $display_object -stipple blank \
                         -lineStyle solid -fill lime -outline lime
dr::createPacket hilite6 -display $display_object -stipple blank \
                     -lineStyle solid -fill orange -outline orange
dr::createPacket hilite7 -display $display_object -stipple blank \
                       -lineStyle solid -fill cream -outline cream
dr::createPacket hilite8 -display $display_object -stipple blank \
                   -lineStyle solid -fill magenta -outline magenta
dr::createPacket hilite9 -display $display_object -stipple blank \
                         -lineStyle solid -fill pink -outline pink
dr::createPacket select -display $display_object -stipple blank \
                      -lineStyle thickLine -fill tan -outline tan
dr::createPacket drive -display $display_object -stipple blank \
                       -lineStyle solid -fill blue -outline blue
dr::createPacket hiz -display $display_object -stipple blank \
                 -lineStyle solid -fill orange -outline orange
dr::createPacket resist -display $display_object -stipple blank \
                        -lineStyle solid -fill cyan -outline cyan
dr::createPacket spike -display $display_object -stipple blank \
                   -lineStyle solid -fill purple -outline purple
dr::createPacket supply -display $display_object -stipple blank \
                        -lineStyle solid -fill lime -outline lime
dr::createPacket unknown -display $display_object -stipple blank \
                     -lineStyle solid -fill yellow -outline yellow
dr::createPacket unset -display $display_object -stipple blank \
                   -lineStyle solid -fill forest -outline forest
dr::createPacket designFlow -display $display_object -stipple dots \
                           -lineStyle solid -fill blue -outline blue
dr::createPacket designFlow1 -display $display_object -stipple dots \
                        -lineStyle solid -fill purple -outline purple
dr::createPacket designFlow2 -display $display_object -stipple dots \
                      -lineStyle solid -fill magenta -outline magenta
dr::createPacket designFlow3 -display $display_object -stipple dots \
                            -lineStyle solid -fill cyan -outline cyan
dr::createPacket designFlow4 -display $display_object -stipple dots \
                        -lineStyle solid -fill forest -outline forest
dr::createPacket designFlow5 -display $display_object -stipple dots \
                          -lineStyle solid -fill green -outline green
dr::createPacket designFlow6 -display $display_object -stipple dots \
                        -lineStyle solid -fill orange -outline orange
dr::createPacket designFlow7 -display $display_object -stipple dots \
                        -lineStyle solid -fill yellow -outline yellow
dr::createPacket designFlow8 -display $display_object -stipple dots \
                          -lineStyle solid -fill brown -outline brown
dr::createPacket designFlow9 -display $display_object -stipple dots \
                              -lineStyle solid -fill red -outline red
dr::createPacket changedLayerTl0 -display $display_object -stipple blank \
                                   -lineStyle solid -fill red -outline red
dr::createPacket changedLayerTl1 -display $display_object -stipple blank \
                             -lineStyle solid -fill yellow -outline yellow
dr::createPacket markerAno -display $display_object -stipple X \
                       -lineStyle solid -fill blue -outline blue
dr::createPacket markerInf -display $display_object -stipple X \
                     -lineStyle solid -fill green -outline green
dr::createPacket markerAck -display $display_object -stipple X \
                   -lineStyle solid -fill yellow -outline yellow
dr::createPacket markerWarn -display $display_object -stipple X \
          -lineStyle solid -fill blinkYellow -outline blinkYellow
dr::createPacket markerSer -display $display_object -stipple X \
                   -lineStyle solid -fill orange -outline orange
dr::createPacket markerErr -display $display_object -stipple X \
           -lineStyle solid -fill blinkWhite -outline blinkWhite
dr::createPacket markerScr -display $display_object -stipple X \
                         -lineStyle solid -fill red -outline red
dr::createPacket markerCrt -display $display_object -stipple X \
                         -lineStyle solid -fill red -outline red
dr::createPacket markerFat -display $display_object -stipple X \
               -lineStyle solid -fill blinkRed -outline blinkRed
dr::createPacket Row -display $display_object -stipple blank \
                     -lineStyle solid -fill cyan -outline cyan
dr::createPacket RowBnd -display $display_object -stipple blank \
                        -lineStyle solid -fill cyan -outline cyan
dr::createPacket RowLbl -display $display_object -stipple blank \
                        -lineStyle solid -fill cyan -outline cyan
dr::createPacket Group -display $display_object -stipple dots \
                    -lineStyle solid -fill green -outline green
dr::createPacket GroupLbl -display $display_object -stipple blank \
                        -lineStyle solid -fill green -outline green
dr::createPacket GroupBnd -display $display_object -stipple blank \
                        -lineStyle solid -fill green -outline green
dr::createPacket Cannotoccupy -display $display_object -stipple X \
                            -lineStyle solid -fill red -outline red
dr::createPacket CannotoccupyBnd -display $display_object -stipple blank \
                                   -lineStyle solid -fill red -outline red
dr::createPacket Canplace -display $display_object -stipple blank \
                          -lineStyle solid -fill cyan -outline cyan
dr::createPacket Unrouted -display $display_object -stipple blank \
               -lineStyle dashed -fill winColor5 -outline winColor5
dr::createPacket UnroutedTrk -display $display_object -stipple blank \
                        -lineStyle dashed -fill yellow -outline yellow
dr::createPacket Unrouted1 -display $display_object -stipple blank \
                        -lineStyle dashed -fill brown -outline brown
dr::createPacket Unrouted2 -display $display_object -stipple blank \
                            -lineStyle dashed -fill red -outline red
dr::createPacket Unrouted3 -display $display_object -stipple blank \
                          -lineStyle dashed -fill pink -outline pink
dr::createPacket Unrouted4 -display $display_object -stipple blank \
                      -lineStyle dashed -fill orange -outline orange
dr::createPacket Unrouted5 -display $display_object -stipple blank \
                        -lineStyle dashed -fill green -outline green
dr::createPacket Unrouted6 -display $display_object -stipple blank \
                          -lineStyle dashed -fill blue -outline blue
dr::createPacket Unrouted7 -display $display_object -stipple blank \
                      -lineStyle dashed -fill purple -outline purple
dr::createPacket Unrouted8 -display $display_object -stipple blank \
                          -lineStyle dashed -fill gold -outline gold
dr::createPacket Unrouted9 -display $display_object -stipple blank \
                      -lineStyle dashed -fill silver -outline silver
dr::createPacket stroke_white -display $display_object -stipple blank \
                            -lineStyle solid -fill white -outline white
dr::createPacket select1_yellow -display $display_object -stipple blank \
                            -lineStyle solid -fill yellow -outline yellow
dr::createPacket select2_red -display $display_object -stipple blank \
                               -lineStyle solid -fill red -outline red
dr::createPacket select3_blue -display $display_object -stipple blank \
                              -lineStyle solid -fill blue -outline blue
dr::createPacket select4_purple -display $display_object -stipple blank \
                            -lineStyle solid -fill purple -outline purple
dr::createPacket highlight1_yellow -display $display_object -stipple blank \
                          -lineStyle mediumLine -fill yellow -outline yellow
dr::createPacket highlight2_red -display $display_object -stipple blank \
                             -lineStyle mediumLine -fill red -outline red
dr::createPacket highlight3_green -display $display_object -stipple blank \
                           -lineStyle mediumLine -fill green -outline green
dr::createPacket highlight4_blue -display $display_object -stipple blank \
                            -lineStyle mediumLine -fill blue -outline blue
dr::createPacket highlight5_purple -display $display_object -stipple blank \
                          -lineStyle mediumLine -fill purple -outline purple
dr::createPacket highlight6_cyan -display $display_object -stipple blank \
                            -lineStyle mediumLine -fill cyan -outline cyan
dr::createPacket highlight7_white -display $display_object -stipple blank \
                           -lineStyle mediumLine -fill white -outline white
dr::createPacket highlight8_gold -display $display_object -stipple blank \
                            -lineStyle mediumLine -fill gold -outline gold
dr::createPacket highlight9_maroon -display $display_object -stipple blank \
                          -lineStyle mediumLine -fill maroon -outline maroon
dr::createPacket highlight10_gray -display $display_object -stipple blank \
                             -lineStyle mediumLine -fill gray -outline gray
dr::createPacket highlight1_yellow_dim -display $display_object -stipple blank \
                    -lineStyle mediumLine -fill lightYellow -outline lightYellow
dr::createPacket highlight2_red_dim -display $display_object -stipple blank \
                       -lineStyle mediumLine -fill lightRed -outline lightRed
dr::createPacket highlight3_green_dim -display $display_object -stipple blank \
                     -lineStyle mediumLine -fill lightGreen -outline lightGreen
dr::createPacket highlight4_blue_dim -display $display_object -stipple blank \
                      -lineStyle mediumLine -fill lightBlue -outline lightBlue
dr::createPacket highlight5_purple_dim -display $display_object -stipple blank \
                    -lineStyle mediumLine -fill lightPurple -outline lightPurple
dr::createPacket highlight6_cyan_dim -display $display_object -stipple blank \
                      -lineStyle mediumLine -fill lightCyan -outline lightCyan
dr::createPacket highlight7_white_dim -display $display_object -stipple blank \
                     -lineStyle mediumLine -fill lightWhite -outline lightWhite
dr::createPacket highlight8_gold_dim -display $display_object -stipple blank \
                      -lineStyle mediumLine -fill lightGold -outline lightGold
dr::createPacket highlight9_maroon_dim -display $display_object -stipple blank \
                    -lineStyle mediumLine -fill lightMaroon -outline lightMaroon
dr::createPacket highlight10_gray_dim -display $display_object -stipple blank \
                       -lineStyle mediumLine -fill lightGray -outline lightGray
dr::createPacket ruler_white -display $display_object -stipple blank \
                           -lineStyle solid -fill white -outline white
dr::createPacket active_TrueColorBright -display $display_object -stipple blank \
                 -lineStyle dashed -fill TrueColorBright -outline TrueColorBright
dr::createPacket runtime_TrueColorGhost -display $display_object -stipple blank \
                    -lineStyle solid -fill TrueColorGhost -outline TrueColorGhost
dr::createPacket cursor_white -display $display_object -stipple blank \
                            -lineStyle solid -fill white -outline white
dr::createPacket major_grid -display $display_object -stipple blank \
                      -lineStyle shortDash -fill white -outline white
dr::createPacket minor_grid -display $display_object -stipple blank \
                           -lineStyle dots -fill slate -outline slate
dr::createPacket route_grid_via -display $display_object -stipple blank \
                              -lineStyle solid -fill white -outline white
dr::createPacket route_grid_point -display $display_object -stipple blank \
                                -lineStyle solid -fill slate -outline slate
dr::createPacket yellow_white -display $display_object -stipple blank \
                           -lineStyle solid -fill yellow -outline white
dr::createPacket transparent_white -display $display_object -stipple blank \
                                -lineStyle solid -fill yellow -outline white -fillStyle outline
dr::createPacket pinUnc -display $display_object -stipple X \
                      -lineStyle solid -fill red -outline red
dr::createPacket wireUnrt -display $display_object -stipple blank \
               -lineStyle dashed -fill cadetBlue -outline cadetBlue
dr::createPacket inherited -display $display_object -stipple inherited \
                 -lineStyle inherited -fill inherited -outline inherited
dr::createPacket plotpacket0 -display $display_object -stipple inherited \
                 -lineStyle mediumLine -fill inherited -outline plotcolor0
dr::createPacket plotpacket1 -display $display_object -stipple inherited \
                 -lineStyle mediumLine -fill inherited -outline plotcolor1
dr::createPacket plotpacket2 -display $display_object -stipple inherited \
                 -lineStyle mediumLine -fill inherited -outline plotcolor2
dr::createPacket plotpacket3 -display $display_object -stipple inherited \
                 -lineStyle mediumLine -fill inherited -outline plotcolor3
dr::createPacket plotpacket4 -display $display_object -stipple inherited \
                 -lineStyle mediumLine -fill inherited -outline plotcolor4
dr::createPacket plotpacket5 -display $display_object -stipple inherited \
                 -lineStyle mediumLine -fill inherited -outline plotcolor5
dr::createPacket plotpacket6 -display $display_object -stipple inherited \
                 -lineStyle mediumLine -fill inherited -outline plotcolor6
dr::createPacket plotpacket7 -display $display_object -stipple inherited \
                 -lineStyle mediumLine -fill inherited -outline plotcolor7
dr::createPacket plotpacket8 -display $display_object -stipple inherited \
                 -lineStyle mediumLine -fill inherited -outline plotcolor8
dr::createPacket plotpacket9 -display $display_object -stipple inherited \
                 -lineStyle mediumLine -fill inherited -outline plotcolor9
dr::createPacket plotpacket10 -display $display_object -stipple inherited \
                 -lineStyle mediumLine -fill inherited -outline plotcolor10
dr::createPacket plotpacket11 -display $display_object -stipple inherited \
                 -lineStyle mediumLine -fill inherited -outline plotcolor11
dr::createPacket plotpacket12 -display $display_object -stipple inherited \
                 -lineStyle mediumLine -fill inherited -outline plotcolor12
dr::createPacket plotpacket13 -display $display_object -stipple inherited \
                 -lineStyle mediumLine -fill inherited -outline plotcolor13
dr::createPacket plotpacket14 -display $display_object -stipple inherited \
                 -lineStyle mediumLine -fill inherited -outline plotcolor14
dr::createPacket plotpacket15 -display $display_object -stipple inherited \
                 -lineStyle mediumLine -fill inherited -outline plotcolor15
dr::createPacket plotpacket16 -display $display_object -stipple inherited \
                 -lineStyle mediumLine -fill inherited -outline plotcolor16
dr::createPacket plotpacket17 -display $display_object -stipple inherited \
                 -lineStyle mediumLine -fill inherited -outline plotcolor17
dr::createPacket plotpacket18 -display $display_object -stipple inherited \
                 -lineStyle mediumLine -fill inherited -outline plotcolor18
dr::createPacket plotpacket19 -display $display_object -stipple inherited \
                 -lineStyle mediumLine -fill inherited -outline plotcolor19
dr::createPacket plotpacketref -display $display_object -stipple inherited \
           -lineStyle mediumLine -fill inherited -outline plotpacketrefcolor
dr::createPacket LE_preview -display $display_object -stipple inherited \
                       -lineStyle dots -fill inherited -outline inherited
dr::createPacket LE_hole -display $display_object -stipple blank \
                     -lineStyle solid -fill yellow -outline yellow -fillStyle outline
dr::createPacket pinConn -display $display_object -stipple blank \
                           -lineStyle solid -fill red -outline red -fillStyle stipple
dr::createPacket ruler0 -display $display_object -stipple blank \
                    -lineStyle solid -fill yellow -outline yellow
dr::createPacket ruler1 -display $display_object -stipple blank \
                          -lineStyle solid -fill red -outline red
dr::createPacket ruler2 -display $display_object -stipple blank \
                      -lineStyle solid -fill green -outline green
dr::createPacket ruler3 -display $display_object -stipple blank \
                  -lineStyle solid -fill magenta -outline magenta
dr::createPacket ruler4 -display $display_object -stipple blank \
                        -lineStyle solid -fill cyan -outline cyan
dr::createPacket ruler5 -display $display_object -stipple blank \
                    -lineStyle solid -fill purple -outline purple
dr::createPacket ruler6 -display $display_object -stipple blank \
                    -lineStyle solid -fill orange -outline orange
dr::createPacket ruler7 -display $display_object -stipple blank \
                        -lineStyle solid -fill gold -outline gold
dr::createPacket ruler8 -display $display_object -stipple blank \
                        -lineStyle solid -fill blue -outline blue
dr::createPacket ruler9 -display $display_object -stipple blank \
                    -lineStyle solid -fill silver -outline silver
dr::createPacket invisibleLabel -display $display_object -stipple blank \
                           -lineStyle dashed -fill purple -outline purple
dr::createPacket steiner -display $display_object -stipple dots1 \
                  -lineStyle longDash -fill silver -outline silver
dr::createPacket nwell -display $display_object -stipple dotsa \
                 -lineStyle solid -fill magenta -outline magenta -fillStyle outline
dr::createPacket net_cd013 -display $display_object -stipple dotsa \
                     -lineStyle solid -fill magenta -outline magenta
dr::createPacket subnode_cd013 -display $display_object -stipple dotsa \
                         -lineStyle solid -fill magenta -outline magenta
dr::createPacket diff -display $display_object -stipple dots1 \
                  -lineStyle solid -fill yellow -outline yellow
dr::createPacket net_cd001 -display $display_object -stipple backSlash \
                                 -lineStyle solid -fill red -outline red
dr::createPacket dummy_cd000 -display $display_object -stipple dots1 \
                         -lineStyle solid -fill yellow -outline yellow
dr::createPacket subnode_cd001 -display $display_object -stipple backSlash \
                                     -lineStyle solid -fill red -outline red
dr::createPacket poly -display $display_object -stipple cross \
                  -lineStyle thickLine -fill blue -outline blue
dr::createPacket pin_cd011 -display $display_object -stipple X \
                         -lineStyle solid -fill red -outline red -fillStyle X
dr::createPacket net_cd014 -display $display_object -stipple cross \
                       -lineStyle solid -fill maroon -outline maroon
dr::createPacket dummy_cd011 -display $display_object -stipple cross \
                             -lineStyle solid -fill blue -outline blue
dr::createPacket subnode_cd014 -display $display_object -stipple cross \
                           -lineStyle thickLine -fill blue -outline blue
dr::createPacket pplus -display $display_object -stipple dots1 \
                         -lineStyle solid -fill red -outline red -fillStyle outline
dr::createPacket net_cd015 -display $display_object -stipple dots1 \
                             -lineStyle solid -fill red -outline red
dr::createPacket subnode_cd015 -display $display_object -stipple dots1 \
                                 -lineStyle solid -fill red -outline red
dr::createPacket nplus -display $display_object -stipple dots1 \
                     -lineStyle solid -fill green -outline green -fillStyle outline
dr::createPacket net_cd012 -display $display_object -stipple dots1 \
                         -lineStyle solid -fill green -outline green
dr::createPacket subnode_cd012 -display $display_object -stipple dots1 \
                             -lineStyle solid -fill green -outline green
dr::createPacket rpoly -display $display_object -stipple cross2 \
                        -lineStyle solid -fill lime -outline lime
dr::createPacket cont -display $display_object -stipple cross \
                    -lineStyle solid -fill green -outline green
dr::createPacket net_cd000 -display $display_object -stipple solid \
                         -lineStyle solid -fill white -outline white -fillStyle solid
dr::createPacket boundary_cd000 -display $display_object -stipple solid \
                              -lineStyle solid -fill white -outline white -fillStyle solid
dr::createPacket subnode_cd000 -display $display_object -stipple cross \
                             -lineStyle solid -fill green -outline green
dr::createPacket m1 -display $display_object -stipple dot4 \
                   -lineStyle solid -fill cyan -outline cyan
dr::createPacket slot_cd000 -display $display_object -stipple slash \
                            -lineStyle solid -fill blue -outline blue
dr::createPacket pin_cd000 -display $display_object -stipple X \
                     -lineStyle solid -fill slate -outline slate -fillStyle X
dr::createPacket net_cd002 -display $display_object -stipple slash \
                         -lineStyle solid -fill green -outline green
dr::createPacket dummy_cd001 -display $display_object -stipple X \
                       -lineStyle solid -fill slate -outline slate -fillStyle X
dr::createPacket boundary_cd010 -display $display_object -stipple slash \
                              -lineStyle solid -fill green -outline green
dr::createPacket blockage_cd001 -display $display_object -stipple X \
                          -lineStyle solid -fill slate -outline slate -fillStyle X
dr::createPacket subnode_cd002 -display $display_object -stipple dot4 \
                              -lineStyle solid -fill cyan -outline cyan
dr::createPacket m1text -display $display_object -stipple solid \
                      -lineStyle solid -fill white -outline white -fillStyle solid
dr::createPacket m2 -display $display_object -stipple dot4 \
               -lineStyle solid -fill yellow -outline yellow
dr::createPacket pin_cd002 -display $display_object -stipple X \
                         -lineStyle solid -fill red -outline red -fillStyle X
dr::createPacket net_cd004 -display $display_object -stipple slash \
                       -lineStyle solid -fill yellow -outline yellow
dr::createPacket dummy_cd003 -display $display_object -stipple X \
                           -lineStyle solid -fill red -outline red -fillStyle X
dr::createPacket boundary_cd012 -display $display_object -stipple slash \
                            -lineStyle solid -fill yellow -outline yellow
dr::createPacket blockage_cd003 -display $display_object -stipple X \
                              -lineStyle solid -fill red -outline red -fillStyle X
dr::createPacket subnode_cd004 -display $display_object -stipple dot4 \
                          -lineStyle solid -fill yellow -outline yellow
dr::createPacket slot_cd002 -display $display_object -stipple slash \
                        -lineStyle solid -fill yellow -outline yellow
dr::createPacket m2text -display $display_object -stipple solid \
                    -lineStyle solid -fill yellow -outline yellow -fillStyle solid
dr::createPacket m3 -display $display_object -stipple dot4 \
                   -lineStyle solid -fill blue -outline blue
dr::createPacket pin_cd003 -display $display_object -stipple X \
                       -lineStyle solid -fill blue -outline blue -fillStyle X
dr::createPacket net_cd005 -display $display_object -stipple slash \
                         -lineStyle solid -fill green -outline green
dr::createPacket dummy_cd004 -display $display_object -stipple X \
                         -lineStyle solid -fill blue -outline blue -fillStyle X
dr::createPacket boundary_cd013 -display $display_object -stipple slash \
                              -lineStyle solid -fill green -outline green
dr::createPacket blockage_cd004 -display $display_object -stipple X \
                            -lineStyle solid -fill blue -outline blue -fillStyle X
dr::createPacket subnode_cd005 -display $display_object -stipple dot4 \
                              -lineStyle solid -fill blue -outline blue
dr::createPacket slot_cd003 -display $display_object -stipple slash \
                          -lineStyle solid -fill green -outline green
dr::createPacket m3text -display $display_object -stipple solid \
                    -lineStyle solid -fill orange -outline orange -fillStyle solid
dr::createPacket m4 -display $display_object -stipple dot4 \
                   -lineStyle solid -fill navy -outline navy
dr::createPacket pin_cd004 -display $display_object -stipple X \
                       -lineStyle solid -fill navy -outline navy -fillStyle X
dr::createPacket net_cd006 -display $display_object -stipple slash \
                           -lineStyle solid -fill navy -outline navy
dr::createPacket dummy_cd005 -display $display_object -stipple X \
                         -lineStyle solid -fill navy -outline navy -fillStyle X
dr::createPacket boundary_cd014 -display $display_object -stipple slash \
                                -lineStyle solid -fill pink -outline pink
dr::createPacket blockage_cd005 -display $display_object -stipple X \
                            -lineStyle solid -fill navy -outline navy -fillStyle X
dr::createPacket subnode_cd006 -display $display_object -stipple dot4 \
                              -lineStyle solid -fill navy -outline navy
dr::createPacket slot_cd004 -display $display_object -stipple slash \
                            -lineStyle solid -fill navy -outline navy
dr::createPacket m4text -display $display_object -stipple solid \
                        -lineStyle solid -fill pink -outline pink -fillStyle solid
dr::createPacket v1 -display $display_object -stipple solid \
          -lineStyle solid -fill cadetBlue -outline cadetBlue -fillStyle X
dr::createPacket net_cd016 -display $display_object -stipple solid \
                 -lineStyle solid -fill cadetBlue -outline cadetBlue -fillStyle solid
dr::createPacket boundary_cd001 -display $display_object -stipple solid \
                      -lineStyle solid -fill cadetBlue -outline cadetBlue -fillStyle solid
dr::createPacket subnode_cd017 -display $display_object -stipple solid \
                     -lineStyle solid -fill cadetBlue -outline cadetBlue -fillStyle solid
dr::createPacket v2 -display $display_object -stipple solid \
                -lineStyle solid -fill orange -outline orange -fillStyle X
dr::createPacket net_cd017 -display $display_object -stipple solid \
                       -lineStyle solid -fill orange -outline orange -fillStyle solid
dr::createPacket boundary_cd002 -display $display_object -stipple solid \
                            -lineStyle solid -fill orange -outline orange -fillStyle solid
dr::createPacket subnode_cd018 -display $display_object -stipple solid \
                           -lineStyle solid -fill orange -outline orange -fillStyle solid
dr::createPacket v3 -display $display_object -stipple solid \
                -lineStyle solid -fill purple -outline purple -fillStyle X
dr::createPacket net_cd018 -display $display_object -stipple solid \
                       -lineStyle solid -fill purple -outline purple -fillStyle solid
dr::createPacket boundary_cd003 -display $display_object -stipple solid \
                            -lineStyle solid -fill purple -outline purple -fillStyle solid
dr::createPacket subnode_cd019 -display $display_object -stipple solid \
                           -lineStyle solid -fill purple -outline purple -fillStyle solid
dr::createPacket exclude -display $display_object -stipple dots \
                        -lineStyle solid -fill pink -outline pink -fillStyle outline
dr::createPacket blockage_cd000 -display $display_object -stipple dots \
                               -lineStyle solid -fill pink -outline pink
dr::createPacket mtcap -display $display_object -stipple blank \
        -lineStyle thickLine2 -fill cadetBlue -outline cadetBlue -fillStyle outline
dr::createPacket mbcap -display $display_object -stipple blank \
                -lineStyle thickLine2 -fill green -outline green -fillStyle outline
dr::createPacket dnw -display $display_object -stipple dotsa \
                   -lineStyle solid -fill green -outline green
dr::createPacket nwdmy -display $display_object -stipple vZigZag \
                -lineStyle thickLine2 -fill purple -outline purple -fillStyle outline
dr::createPacket Text -display $display_object -stipple solid \
                    -lineStyle solid -fill white -outline white -fillStyle solid
dr::createPacket drawing2_cd000 -display $display_object -stipple solid \
                              -lineStyle solid -fill white -outline white -fillStyle solid
dr::createPacket drawing1_cd000 -display $display_object -stipple blank \
                             -lineStyle dashed -fill white -outline white
dr::createPacket diode -display $display_object -stipple blank \
              -lineStyle thickLine2 -fill purple -outline purple -fillStyle outline
dr::createPacket nat -display $display_object -stipple triangle \
                      -lineStyle solid -fill brown -outline brown
dr::createPacket diff25 -display $display_object -stipple dots2 \
                    -lineStyle solid -fill orange -outline orange
dr::createPacket rmarker -display $display_object -stipple dots1 \
                         -lineStyle solid -fill blue -outline blue
dr::createPacket hrimp -display $display_object -stipple solid \
                  -lineStyle thickLine2 -fill navy -outline navy -fillStyle outline
dr::createPacket inddmy -display $display_object -stipple blank \
             -lineStyle lineStyle0 -fill winFore -outline winFore -fillStyle outline
dr::createPacket varmarker -display $display_object -stipple cross1 \
                       -lineStyle thickLine2 -fill pink -outline pink -fillStyle outline
dr::createPacket rmdmy -display $display_object -stipple cross1 \
                    -lineStyle solid -fill silver -outline silver
dr::createPacket medvtn -display $display_object -stipple cross1 \
                       -lineStyle solid -fill green -outline green
dr::createPacket medvtp -display $display_object -stipple cross1 \
                         -lineStyle solid -fill blue -outline blue
dr::createPacket diff18 -display $display_object -stipple dots2 \
                      -lineStyle solid -fill green -outline green
dr::createPacket diff33 -display $display_object -stipple dots2 \
                  -lineStyle solid -fill magenta -outline magenta
dr::createPacket lowvtn -display $display_object -stipple cross1 \
                       -lineStyle solid -fill green -outline green
dr::createPacket lowvtp -display $display_object -stipple cross1 \
                         -lineStyle solid -fill blue -outline blue
dr::createPacket highvtn -display $display_object -stipple cross1 \
                        -lineStyle solid -fill white -outline white
dr::createPacket highvtp -display $display_object -stipple cross1 \
                          -lineStyle solid -fill pink -outline pink
dr::createPacket polytext -display $display_object -stipple solid \
                          -lineStyle solid -fill gray -outline gray -fillStyle solid
dr::createPacket bjtdummy -display $display_object -stipple blank \
                       -lineStyle thickLine2 -fill red -outline red -fillStyle outline
dr::createPacket iplayer -display $display_object -stipple solid \
                       -lineStyle solid -fill white -outline white -fillStyle solid
dr::createPacket waterMark_cd000 -display $display_object -stipple solid \
                               -lineStyle solid -fill white -outline white -fillStyle solid
dr::createPacket psub -display $display_object -stipple blank \
                    -lineStyle solid -fill green -outline green
dr::createPacket subnode_cd016 -display $display_object -stipple blank \
                             -lineStyle solid -fill green -outline green
dr::createPacket pindummy -display $display_object -stipple blank \
                        -lineStyle solid -fill white -outline white
dr::createPacket pin_cd010 -display $display_object -stipple blank \
                         -lineStyle solid -fill white -outline white
dr::createPacket rtermmarker -display $display_object -stipple dots1 \
                         -lineStyle solid -fill silver -outline silver
dr::createPacket ctmdmy -display $display_object -stipple blank \
               -lineStyle thickLine2 -fill orange -outline orange -fillStyle outline
dr::createPacket momdmy -display $display_object -stipple blank \
               -lineStyle thickLine2 -fill purple -outline purple
dr::createPacket dmy9_cd000 -display $display_object -stipple blank \
                   -lineStyle thickLine2 -fill purple -outline purple
dr::createPacket dmy8_cd000 -display $display_object -stipple blank \
                   -lineStyle thickLine2 -fill orange -outline orange
dr::createPacket dmy7_cd000 -display $display_object -stipple blank \
                       -lineStyle thickLine2 -fill navy -outline navy
dr::createPacket dmy6_cd000 -display $display_object -stipple blank \
                 -lineStyle thickLine2 -fill magenta -outline magenta
dr::createPacket dmy5_cd000 -display $display_object -stipple blank \
                     -lineStyle thickLine2 -fill cream -outline cream
dr::createPacket dmy4_cd000 -display $display_object -stipple blank \
                       -lineStyle thickLine2 -fill blue -outline blue
dr::createPacket dmy3_cd000 -display $display_object -stipple blank \
                     -lineStyle thickLine2 -fill green -outline green
dr::createPacket dmy2_cd000 -display $display_object -stipple blank \
                   -lineStyle thickLine2 -fill yellow -outline yellow
dr::createPacket dmy1_cd000 -display $display_object -stipple blank \
                       -lineStyle thickLine2 -fill lime -outline lime
dr::createPacket rfdmy -display $display_object -stipple blank \
              -lineStyle thickLine2 -fill yellow -outline yellow
dr::createPacket m5 -display $display_object -stipple dot4 \
                   -lineStyle solid -fill pink -outline pink
dr::createPacket pin_cd005 -display $display_object -stipple X \
                       -lineStyle solid -fill pink -outline pink -fillStyle X
dr::createPacket net_cd007 -display $display_object -stipple dot4 \
                          -lineStyle solid -fill pink -outline pink
dr::createPacket dummy_cd006 -display $display_object -stipple X \
                         -lineStyle solid -fill pink -outline pink -fillStyle X
dr::createPacket boundary_cd015 -display $display_object -stipple blank \
                              -lineStyle solid -fill white -outline white
dr::createPacket blockage_cd006 -display $display_object -stipple X \
                            -lineStyle solid -fill pink -outline pink -fillStyle X
dr::createPacket subnode_cd007 -display $display_object -stipple dot4 \
                              -lineStyle solid -fill pink -outline pink
dr::createPacket slot_cd005 -display $display_object -stipple slash \
                            -lineStyle solid -fill pink -outline pink
dr::createPacket m5text -display $display_object -stipple solid \
                      -lineStyle solid -fill green -outline green -fillStyle solid
dr::createPacket m6 -display $display_object -stipple dot4 \
                 -lineStyle solid -fill cream -outline cream
dr::createPacket pin_cd006 -display $display_object -stipple X \
                     -lineStyle solid -fill cream -outline cream -fillStyle X
dr::createPacket net_cd008 -display $display_object -stipple dot4 \
                        -lineStyle solid -fill cream -outline cream
dr::createPacket dummy_cd007 -display $display_object -stipple X \
                       -lineStyle solid -fill cream -outline cream -fillStyle X
dr::createPacket boundary_cd016 -display $display_object -stipple blank \
                              -lineStyle solid -fill white -outline white
dr::createPacket blockage_cd007 -display $display_object -stipple X \
                          -lineStyle solid -fill cream -outline cream -fillStyle X
dr::createPacket subnode_cd008 -display $display_object -stipple dot4 \
                            -lineStyle solid -fill cream -outline cream
dr::createPacket slot_cd006 -display $display_object -stipple slash \
                          -lineStyle solid -fill cream -outline cream
dr::createPacket m6text -display $display_object -stipple solid \
                    -lineStyle solid -fill purple -outline purple -fillStyle solid
dr::createPacket m7 -display $display_object -stipple dot4 \
               -lineStyle solid -fill orange -outline orange
dr::createPacket pin_cd007 -display $display_object -stipple X \
                   -lineStyle solid -fill orange -outline orange -fillStyle X
dr::createPacket net_cd009 -display $display_object -stipple dot4 \
                      -lineStyle solid -fill orange -outline orange
dr::createPacket dummy_cd008 -display $display_object -stipple X \
                     -lineStyle solid -fill orange -outline orange -fillStyle X
dr::createPacket boundary_cd017 -display $display_object -stipple blank \
                              -lineStyle solid -fill white -outline white
dr::createPacket blockage_cd008 -display $display_object -stipple X \
                        -lineStyle solid -fill orange -outline orange -fillStyle X
dr::createPacket subnode_cd009 -display $display_object -stipple dot4 \
                          -lineStyle solid -fill orange -outline orange
dr::createPacket slot_cd007 -display $display_object -stipple slash \
                        -lineStyle solid -fill orange -outline orange
dr::createPacket m7text -display $display_object -stipple solid \
                    -lineStyle solid -fill yellow -outline yellow -fillStyle solid
dr::createPacket m8 -display $display_object -stipple dot4 \
               -lineStyle solid -fill purple -outline purple
dr::createPacket pin_cd008 -display $display_object -stipple X \
                   -lineStyle solid -fill purple -outline purple -fillStyle X
dr::createPacket net_cd010 -display $display_object -stipple dot4 \
                      -lineStyle solid -fill purple -outline purple
dr::createPacket dummy_cd009 -display $display_object -stipple X \
                     -lineStyle solid -fill purple -outline purple -fillStyle X
dr::createPacket boundary_cd018 -display $display_object -stipple blank \
                              -lineStyle solid -fill white -outline white
dr::createPacket blockage_cd009 -display $display_object -stipple X \
                        -lineStyle solid -fill purple -outline purple -fillStyle X
dr::createPacket subnode_cd010 -display $display_object -stipple dot4 \
                          -lineStyle solid -fill purple -outline purple
dr::createPacket slot_cd008 -display $display_object -stipple slash \
                        -lineStyle solid -fill purple -outline purple
dr::createPacket m8text -display $display_object -stipple solid \
                      -lineStyle solid -fill cream -outline cream -fillStyle solid
dr::createPacket m9 -display $display_object -stipple dot4 \
             -lineStyle solid -fill magenta -outline magenta
dr::createPacket pin_cd009 -display $display_object -stipple X \
                 -lineStyle solid -fill magenta -outline magenta -fillStyle X
dr::createPacket net_cd011 -display $display_object -stipple dot4 \
                    -lineStyle solid -fill magenta -outline magenta
dr::createPacket dummy_cd010 -display $display_object -stipple X \
                   -lineStyle solid -fill magenta -outline magenta -fillStyle X
dr::createPacket boundary_cd019 -display $display_object -stipple blank \
                              -lineStyle solid -fill white -outline white
dr::createPacket blockage_cd010 -display $display_object -stipple X \
                      -lineStyle solid -fill magenta -outline magenta -fillStyle X
dr::createPacket subnode_cd011 -display $display_object -stipple dot4 \
                        -lineStyle solid -fill magenta -outline magenta
dr::createPacket slot_cd009 -display $display_object -stipple slash \
                      -lineStyle solid -fill magenta -outline magenta
dr::createPacket m9text -display $display_object -stipple solid \
                    -lineStyle solid -fill yellow -outline yellow -fillStyle solid
dr::createPacket v4 -display $display_object -stipple solid \
              -lineStyle solid -fill magenta -outline magenta -fillStyle X
dr::createPacket net_cd019 -display $display_object -stipple solid \
                     -lineStyle solid -fill magenta -outline magenta -fillStyle solid
dr::createPacket boundary_cd004 -display $display_object -stipple solid \
                          -lineStyle solid -fill magenta -outline magenta -fillStyle solid
dr::createPacket subnode_cd020 -display $display_object -stipple solid \
                         -lineStyle solid -fill magenta -outline magenta -fillStyle solid
dr::createPacket v5 -display $display_object -stipple solid \
                -lineStyle solid -fill orange -outline orange -fillStyle X
dr::createPacket net_cd020 -display $display_object -stipple solid \
                       -lineStyle solid -fill orange -outline orange -fillStyle solid
dr::createPacket boundary_cd005 -display $display_object -stipple solid \
                            -lineStyle solid -fill orange -outline orange -fillStyle solid
dr::createPacket subnode_cd021 -display $display_object -stipple solid \
                           -lineStyle solid -fill orange -outline orange -fillStyle solid
dr::createPacket v6 -display $display_object -stipple solid \
                    -lineStyle solid -fill navy -outline navy -fillStyle X
dr::createPacket net_cd021 -display $display_object -stipple solid \
                           -lineStyle solid -fill navy -outline navy -fillStyle solid
dr::createPacket boundary_cd006 -display $display_object -stipple solid \
                                -lineStyle solid -fill navy -outline navy -fillStyle solid
dr::createPacket subnode_cd022 -display $display_object -stipple solid \
                               -lineStyle solid -fill navy -outline navy -fillStyle solid
dr::createPacket v7 -display $display_object -stipple solid \
                -lineStyle solid -fill yellow -outline yellow -fillStyle X
dr::createPacket net_cd022 -display $display_object -stipple solid \
                       -lineStyle solid -fill yellow -outline yellow -fillStyle solid
dr::createPacket boundary_cd007 -display $display_object -stipple solid \
                            -lineStyle solid -fill yellow -outline yellow -fillStyle solid
dr::createPacket subnode_cd023 -display $display_object -stipple solid \
                           -lineStyle solid -fill yellow -outline yellow -fillStyle solid
dr::createPacket v8 -display $display_object -stipple solid \
                  -lineStyle solid -fill cream -outline cream -fillStyle X
dr::createPacket net_cd023 -display $display_object -stipple solid \
                         -lineStyle solid -fill cream -outline cream -fillStyle solid
dr::createPacket boundary_cd008 -display $display_object -stipple solid \
                              -lineStyle solid -fill cream -outline cream -fillStyle solid
dr::createPacket subnode_cd024 -display $display_object -stipple solid \
                             -lineStyle solid -fill cream -outline cream -fillStyle solid
dr::createPacket m10 -display $display_object -stipple dot4 \
                -lineStyle solid -fill silver -outline silver
dr::createPacket pin_cd001 -display $display_object -stipple X \
                   -lineStyle solid -fill silver -outline silver -fillStyle X
dr::createPacket net_cd003 -display $display_object -stipple dot4 \
                      -lineStyle solid -fill silver -outline silver
dr::createPacket dummy_cd002 -display $display_object -stipple X \
                     -lineStyle solid -fill silver -outline silver -fillStyle X
dr::createPacket boundary_cd011 -display $display_object -stipple blank \
                              -lineStyle solid -fill white -outline white
dr::createPacket blockage_cd002 -display $display_object -stipple X \
                        -lineStyle solid -fill silver -outline silver -fillStyle X
dr::createPacket subnode_cd003 -display $display_object -stipple dot4 \
                          -lineStyle solid -fill silver -outline silver
dr::createPacket slot_cd001 -display $display_object -stipple slash \
                        -lineStyle solid -fill silver -outline silver
dr::createPacket m10text -display $display_object -stipple solid \
                     -lineStyle solid -fill yellow -outline yellow -fillStyle solid
dr::createPacket v9 -display $display_object -stipple solid \
                      -lineStyle solid -fill red -outline red -fillStyle X
dr::createPacket net_cd024 -display $display_object -stipple blank \
                         -lineStyle solid -fill white -outline white
dr::createPacket boundary_cd009 -display $display_object -stipple blank \
                              -lineStyle solid -fill white -outline white
dr::createPacket subnode_cd025 -display $display_object -stipple blank \
                             -lineStyle solid -fill white -outline white
dr::createPacket RegionBlockage -display $display_object -stipple blank \
                          -lineStyle solid -fill magenta -outline magenta
dr::createPacket IGRPath -display $display_object -stipple blank \
                       -lineStyle solid -fill white -outline white
dr::createPacket routeGuide -display $display_object -stipple blank \
                             -lineStyle dash -fill cyan -outline cyan
dr::createPacket placeGuide -display $display_object -stipple blank \
                           -lineStyle dash -fill white -outline white
dr::createPacket OverlapCheck -display $display_object -stipple blank \
                          -lineStyle solid -fill orange -outline orange
dr::createPacket placeSRConst -display $display_object -stipple blank \
                          -lineStyle solid -fill yellow -outline yellow
dr::createPacket polyContOvrSize -display $display_object -stipple blank \
                             -lineStyle solid -fill yellow -outline yellow
dr::createPacket via1OvrSize -display $display_object -stipple blank \
                         -lineStyle solid -fill yellow -outline yellow
dr::createPacket via2OvrSize -display $display_object -stipple blank \
                         -lineStyle solid -fill orange -outline orange
dr::createPacket via3OvrSize -display $display_object -stipple blank \
                             -lineStyle solid -fill cyan -outline cyan
dr::createPacket via4OvrSize -display $display_object -stipple blank \
                             -lineStyle solid -fill cyan -outline cyan
dr::createPacket MacroBlockage -display $display_object -stipple blank \
                               -lineStyle solid -fill blue -outline blue
dr::createPacket via11Blockage -display $display_object -stipple backSlash \
                               -lineStyle solid -fill yellow -outline yellow
dr::createPacket metal12Blockage -display $display_object -stipple backSlash \
                                       -lineStyle solid -fill red -outline red
dr::createPacket polyOvrSize -display $display_object -stipple blank \
                               -lineStyle solid -fill red -outline red
dr::createPacket metal1OvrSize -display $display_object -stipple blank \
                               -lineStyle solid -fill blue -outline blue
dr::createPacket metal2OvrSize -display $display_object -stipple blank \
                             -lineStyle solid -fill green -outline green
dr::createPacket metal3OvrSize -display $display_object -stipple blank \
                                 -lineStyle solid -fill red -outline red
dr::createPacket metal4OvrSize -display $display_object -stipple blank \
                           -lineStyle solid -fill orange -outline orange
dr::createPacket PRboundary -display $display_object -stipple X \
                      -lineStyle solid -fill green -outline green -fillStyle X
dr::createPacket metal7Blockage -display $display_object -stipple backSlash \
                                      -lineStyle solid -fill red -outline red
dr::createPacket via7Blockage -display $display_object -stipple backSlash \
                              -lineStyle solid -fill yellow -outline yellow
dr::createPacket metal8Blockage -display $display_object -stipple backSlash \
                                      -lineStyle solid -fill red -outline red
dr::createPacket via8Blockage -display $display_object -stipple backSlash \
                              -lineStyle solid -fill yellow -outline yellow
dr::createPacket polyBlockage -display $display_object -stipple backSlash \
                              -lineStyle solid -fill yellow -outline yellow
dr::createPacket Barrier -display $display_object -stipple blank \
                     -lineStyle solid -fill orange -outline orange
dr::createPacket PartialPlaceBlk -display $display_object -stipple slash \
                               -lineStyle solid -fill white -outline white
dr::createPacket metal9Blockage -display $display_object -stipple backSlash \
                                      -lineStyle solid -fill red -outline red
dr::createPacket via9Blockage -display $display_object -stipple backSlash \
                              -lineStyle solid -fill yellow -outline yellow
dr::createPacket metal4Blockage -display $display_object -stipple backSlash \
                                    -lineStyle solid -fill blue -outline blue
dr::createPacket via3Blockage -display $display_object -stipple backSlash \
                              -lineStyle solid -fill yellow -outline yellow
dr::createPacket metal1Blockage -display $display_object -stipple backSlash \
                                    -lineStyle solid -fill blue -outline blue
dr::createPacket metal2Blockage -display $display_object -stipple backSlash \
                                  -lineStyle solid -fill green -outline green
dr::createPacket metal3Blockage -display $display_object -stipple backSlash \
                                      -lineStyle solid -fill red -outline red
dr::createPacket PlaceBlockage -display $display_object -stipple X \
                       -lineStyle solid -fill yellow -outline yellow -fillStyle X
dr::createPacket SoftPlaceBlk -display $display_object -stipple enter \
                           -lineStyle dash -fill yellow -outline yellow
dr::createPacket polyContBlockage -display $display_object -stipple backSlash \
                                  -lineStyle solid -fill yellow -outline yellow
dr::createPacket via1Blockage -display $display_object -stipple backSlash \
                              -lineStyle solid -fill yellow -outline yellow
dr::createPacket via2Blockage -display $display_object -stipple slash \
                          -lineStyle solid -fill orange -outline orange
dr::createPacket horChannel -display $display_object -stipple blank \
                        -lineStyle solid -fill orange -outline orange
dr::createPacket verChannel -display $display_object -stipple blank \
                        -lineStyle solid -fill orange -outline orange
dr::createPacket pinBlockage -display $display_object -stipple blank \
                         -lineStyle solid -fill purple -outline purple
dr::createPacket polyContRegion -display $display_object -stipple blank \
                              -lineStyle solid -fill white -outline white
dr::createPacket via1Region -display $display_object -stipple blank \
                              -lineStyle solid -fill red -outline red
dr::createPacket via2Region -display $display_object -stipple blank \
                          -lineStyle solid -fill green -outline green
dr::createPacket via3Region -display $display_object -stipple blank \
                            -lineStyle solid -fill blue -outline blue
dr::createPacket via4Region -display $display_object -stipple blank \
                      -lineStyle solid -fill magenta -outline magenta
dr::createPacket metal10Blockage -display $display_object -stipple backSlash \
                                       -lineStyle solid -fill red -outline red
dr::createPacket via10Blockage -display $display_object -stipple backSlash \
                               -lineStyle solid -fill yellow -outline yellow
dr::createPacket metal11Blockage -display $display_object -stipple backSlash \
                                       -lineStyle solid -fill red -outline red
dr::createPacket metal5Blockage -display $display_object -stipple backSlash \
                                      -lineStyle solid -fill red -outline red
dr::createPacket metal6Blockage -display $display_object -stipple backSlash \
                                      -lineStyle solid -fill red -outline red
dr::createPacket via4Blockage -display $display_object -stipple backSlash \
                              -lineStyle solid -fill yellow -outline yellow
dr::createPacket via5Blockage -display $display_object -stipple backSlash \
                              -lineStyle solid -fill yellow -outline yellow
dr::createPacket via6Blockage -display $display_object -stipple backSlash \
                              -lineStyle solid -fill yellow -outline yellow
dr::createPacket chanGate -display $display_object -stipple blank \
                          -lineStyle solid -fill cyan -outline cyan
dr::createPacket pinGuide -display $display_object -stipple blank \
                        -lineStyle solid -fill green -outline green
dr::createPacket metal13Blockage -display $display_object -stipple backSlash \
                                       -lineStyle solid -fill red -outline red
dr::createPacket metal14Blockage -display $display_object -stipple backSlash \
                                       -lineStyle solid -fill red -outline red
dr::createPacket metal15Blockage -display $display_object -stipple backSlash \
                                       -lineStyle solid -fill red -outline red
dr::createPacket via12Blockage -display $display_object -stipple backSlash \
                               -lineStyle solid -fill yellow -outline yellow
dr::createPacket via13Blockage -display $display_object -stipple backSlash \
                               -lineStyle solid -fill yellow -outline yellow
dr::createPacket via14Blockage -display $display_object -stipple backSlash \
                               -lineStyle solid -fill yellow -outline yellow
dr::createPacket coreRegion -display $display_object -stipple blank \
                              -lineStyle solid -fill red -outline red
dr::createPacket stdCellRow -display $display_object -stipple blank \
                        -lineStyle solid -fill orange -outline orange
dr::createPacket stdCellRegion -display $display_object -stipple blank \
                                 -lineStyle solid -fill red -outline red
dr::createPacket boundary -display $display_object -stipple blank \
                      -lineStyle solid -fill yellow -outline yellow
dr::createPacket y0Flt_dyn -display $display_object -stipple blank \
                  -lineStyle mediumLine -fill yellow -outline yellow
dr::createPacket y1Flt_dyn -display $display_object -stipple blank \
                        -lineStyle mediumLine -fill red -outline red
dr::createPacket y2Flt_dyn -display $display_object -stipple blank \
                    -lineStyle mediumLine -fill green -outline green
dr::createPacket y3Flt_dyn -display $display_object -stipple blank \
                -lineStyle mediumLine -fill magenta -outline magenta
dr::createPacket y4Flt_dyn -display $display_object -stipple blank \
                      -lineStyle mediumLine -fill cyan -outline cyan
dr::createPacket y5Flt_dyn -display $display_object -stipple blank \
                  -lineStyle mediumLine -fill purple -outline purple
dr::createPacket y6Flt_dyn -display $display_object -stipple blank \
                  -lineStyle mediumLine -fill orange -outline orange
dr::createPacket y7Flt_dyn -display $display_object -stipple blank \
                      -lineStyle mediumLine -fill gold -outline gold
dr::createPacket y8Flt_dyn -display $display_object -stipple blank \
                      -lineStyle mediumLine -fill blue -outline blue
dr::createPacket y9Flt_dyn -display $display_object -stipple blank \
                  -lineStyle mediumLine -fill silver -outline silver
dr::createPacket highlightUnplaced -display $display_object -stipple X \
                         -lineStyle solid -fill magenta -outline magenta
dr::createPacket sldiff -display $display_object -stipple backSlash \
                              -lineStyle solid -fill red -outline red
dr::createPacket polyPin -display $display_object -stipple X \
                       -lineStyle solid -fill red -outline red -fillStyle X
dr::createPacket m1Pin -display $display_object -stipple X \
                 -lineStyle solid -fill slate -outline slate -fillStyle X
dr::createPacket m1Blk -display $display_object -stipple X \
                 -lineStyle solid -fill slate -outline slate -fillStyle X
dr::createPacket m2Pin -display $display_object -stipple X \
                     -lineStyle solid -fill red -outline red -fillStyle X
dr::createPacket m2Blk -display $display_object -stipple X \
                     -lineStyle solid -fill red -outline red -fillStyle X
dr::createPacket m3Pin -display $display_object -stipple X \
                   -lineStyle solid -fill blue -outline blue -fillStyle X
dr::createPacket m3Blk -display $display_object -stipple X \
                   -lineStyle solid -fill blue -outline blue -fillStyle X
dr::createPacket m4Pin -display $display_object -stipple X \
                   -lineStyle solid -fill navy -outline navy -fillStyle X
dr::createPacket m4Blk -display $display_object -stipple X \
                   -lineStyle solid -fill navy -outline navy -fillStyle X
dr::createPacket m5Pin -display $display_object -stipple X \
                   -lineStyle solid -fill pink -outline pink -fillStyle X
dr::createPacket m5Blk -display $display_object -stipple X \
                   -lineStyle solid -fill pink -outline pink -fillStyle X
dr::createPacket m6Pin -display $display_object -stipple X \
                 -lineStyle solid -fill cream -outline cream -fillStyle X
dr::createPacket m6Blk -display $display_object -stipple X \
                 -lineStyle solid -fill cream -outline cream -fillStyle X
dr::createPacket m7Pin -display $display_object -stipple X \
               -lineStyle solid -fill orange -outline orange -fillStyle X
dr::createPacket m7Blk -display $display_object -stipple X \
               -lineStyle solid -fill orange -outline orange -fillStyle X
dr::createPacket m8Pin -display $display_object -stipple X \
               -lineStyle solid -fill purple -outline purple -fillStyle X
dr::createPacket m8Blk -display $display_object -stipple X \
               -lineStyle solid -fill purple -outline purple -fillStyle X
dr::createPacket m9Pin -display $display_object -stipple X \
             -lineStyle solid -fill magenta -outline magenta -fillStyle X
dr::createPacket m9Blk -display $display_object -stipple X \
             -lineStyle solid -fill magenta -outline magenta -fillStyle X
dr::createPacket m10Pin -display $display_object -stipple X \
                -lineStyle solid -fill silver -outline silver -fillStyle X
dr::createPacket m10Blk -display $display_object -stipple X \
                -lineStyle solid -fill silver -outline silver -fillStyle X
dr::createPacket rpdmy -display $display_object -stipple dots1 \
                       -lineStyle solid -fill blue -outline blue -fillStyle outline
dr::createPacket rtdmy -display $display_object -stipple dots1 \
                     -lineStyle solid -fill silver -outline blue
dr::createPacket magenta -display $display_object -stipple blank \
                   -lineStyle solid -fill magenta -outline magenta -fillStyle outline
dr::createPacket pink -display $display_object -stipple blank \
                      -lineStyle solid -fill pink -outline pink -fillStyle outline
dr::createPacket dum_ind -display $display_object -stipple blank \
                -lineStyle thickLine2 -fill forest -outline forest -fillStyle outline
dr::createPacket ctm -display $display_object -stipple hZigZag \
                       -lineStyle solid -fill lime -outline lime
dr::createPacket m1b -display $display_object -stipple slash \
                   -lineStyle solid -fill green -outline green
dr::createPacket m2b -display $display_object -stipple slash \
                 -lineStyle solid -fill yellow -outline yellow
dr::createPacket m3b -display $display_object -stipple slash \
                   -lineStyle solid -fill green -outline green
dr::createPacket m4b -display $display_object -stipple slash \
                     -lineStyle solid -fill pink -outline pink
dr::createPacket v1b -display $display_object -stipple solid \
           -lineStyle solid -fill cadetBlue -outline cadetBlue -fillStyle X
dr::createPacket v2b -display $display_object -stipple solid \
                 -lineStyle solid -fill orange -outline orange -fillStyle X
dr::createPacket v3b -display $display_object -stipple solid \
                 -lineStyle solid -fill purple -outline purple -fillStyle X
dr::createPacket v4b -display $display_object -stipple solid \
               -lineStyle solid -fill magenta -outline magenta -fillStyle X
dr::createPacket v5b -display $display_object -stipple solid \
                 -lineStyle solid -fill orange -outline orange -fillStyle X
dr::createPacket v6b -display $display_object -stipple solid \
                     -lineStyle solid -fill navy -outline navy -fillStyle X
dr::createPacket v7b -display $display_object -stipple solid \
                 -lineStyle solid -fill yellow -outline yellow -fillStyle X
dr::createPacket v8b -display $display_object -stipple solid \
                   -lineStyle solid -fill cream -outline cream -fillStyle X
dr::createPacket m1net -display $display_object -stipple slash \
                     -lineStyle solid -fill green -outline green
dr::createPacket m2net -display $display_object -stipple slash \
                   -lineStyle solid -fill yellow -outline yellow
dr::createPacket m3net -display $display_object -stipple slash \
                     -lineStyle solid -fill green -outline green
dr::createPacket m4net -display $display_object -stipple slash \
                       -lineStyle solid -fill navy -outline navy
dr::createPacket v1net -display $display_object -stipple solid \
             -lineStyle solid -fill cadetBlue -outline cadetBlue -fillStyle X
dr::createPacket v2net -display $display_object -stipple solid \
                   -lineStyle solid -fill orange -outline orange -fillStyle X
dr::createPacket v3net -display $display_object -stipple solid \
                   -lineStyle solid -fill purple -outline purple -fillStyle X
dr::createPacket v4net -display $display_object -stipple solid \
                 -lineStyle solid -fill magenta -outline magenta -fillStyle X
dr::createPacket v5net -display $display_object -stipple solid \
                   -lineStyle solid -fill orange -outline orange -fillStyle X
dr::createPacket v6net -display $display_object -stipple solid \
                       -lineStyle solid -fill navy -outline navy -fillStyle X
dr::createPacket v7net -display $display_object -stipple solid \
                   -lineStyle solid -fill yellow -outline yellow -fillStyle X
dr::createPacket v8net -display $display_object -stipple solid \
                     -lineStyle solid -fill cream -outline cream -fillStyle X
dr::createPacket m1slot -display $display_object -stipple slash \
                        -lineStyle solid -fill blue -outline blue
dr::createPacket m2slot -display $display_object -stipple slash \
                    -lineStyle solid -fill yellow -outline yellow
dr::createPacket m3slot -display $display_object -stipple slash \
                      -lineStyle solid -fill green -outline green
dr::createPacket m4slot -display $display_object -stipple slash \
                        -lineStyle solid -fill navy -outline navy
dr::createPacket m5slot -display $display_object -stipple slash \
                        -lineStyle solid -fill pink -outline pink
dr::createPacket m6slot -display $display_object -stipple slash \
                      -lineStyle solid -fill cream -outline cream
dr::createPacket m7slot -display $display_object -stipple slash \
                    -lineStyle solid -fill orange -outline orange
dr::createPacket m8slot -display $display_object -stipple slash \
                    -lineStyle solid -fill purple -outline purple
dr::createPacket m9slot -display $display_object -stipple slash \
                  -lineStyle solid -fill magenta -outline magenta
dr::createPacket m10slot -display $display_object -stipple slash \
                     -lineStyle solid -fill silver -outline silver
dr::createPacket bound -display $display_object -stipple blank \
                       -lineStyle solid -fill pink -outline pink -fillStyle outline
dr::createPacket momDmy1 -display $display_object -stipple blank \
                    -lineStyle thickLine2 -fill lime -outline lime -fillStyle outline
dr::createPacket momDmy2 -display $display_object -stipple blank \
                -lineStyle thickLine2 -fill yellow -outline yellow -fillStyle outline
dr::createPacket momDmy3 -display $display_object -stipple blank \
                  -lineStyle thickLine2 -fill green -outline green -fillStyle outline
dr::createPacket momDmy4 -display $display_object -stipple blank \
                    -lineStyle thickLine2 -fill blue -outline blue -fillStyle outline
dr::createPacket momDmy5 -display $display_object -stipple blank \
                  -lineStyle thickLine2 -fill cream -outline cream -fillStyle outline
dr::createPacket momDmy6 -display $display_object -stipple blank \
              -lineStyle thickLine2 -fill magenta -outline magenta -fillStyle outline
dr::createPacket momDmy7 -display $display_object -stipple blank \
                    -lineStyle thickLine2 -fill navy -outline navy -fillStyle outline
dr::createPacket momDmy8 -display $display_object -stipple blank \
                -lineStyle thickLine2 -fill orange -outline orange -fillStyle outline
dr::createPacket momDmy9 -display $display_object -stipple blank \
                -lineStyle thickLine2 -fill purple -outline purple -fillStyle outline
dr::createPacket nwellnet -display $display_object -stipple dotsa \
                    -lineStyle solid -fill magenta -outline magenta
dr::createPacket diffDmy -display $display_object -stipple dots1 \
                     -lineStyle solid -fill yellow -outline yellow
dr::createPacket polyDmy -display $display_object -stipple cross \
                         -lineStyle solid -fill blue -outline blue
dr::createPacket polynet -display $display_object -stipple cross \
                     -lineStyle solid -fill maroon -outline maroon
dr::createPacket pplusDmy -display $display_object -stipple dots1 \
                            -lineStyle solid -fill red -outline red
dr::createPacket contb -display $display_object -stipple solid \
                     -lineStyle solid -fill white -outline white -fillStyle X
dr::createPacket contnet -display $display_object -stipple solid \
                       -lineStyle solid -fill white -outline white -fillStyle X
dr::createPacket exDmyd -display $display_object -stipple hZigZag \
                          -lineStyle solid -fill lime -outline lime
dr::createPacket exDmy0 -display $display_object -stipple hZigZag \
                          -lineStyle solid -fill lime -outline lime
dr::createPacket exDmy1 -display $display_object -stipple hZigZag \
                          -lineStyle solid -fill lime -outline lime
dr::createPacket exDmy2 -display $display_object -stipple hZigZag \
                          -lineStyle solid -fill lime -outline lime
dr::createPacket exDmy3 -display $display_object -stipple hZigZag \
                          -lineStyle solid -fill lime -outline lime
dr::createPacket exDmy4 -display $display_object -stipple hZigZag \
                          -lineStyle solid -fill lime -outline lime
dr::createPacket exDmy5 -display $display_object -stipple hZigZag \
                          -lineStyle solid -fill lime -outline lime
dr::createPacket exDmy6 -display $display_object -stipple hZigZag \
                          -lineStyle solid -fill lime -outline lime
dr::createPacket exDmy7 -display $display_object -stipple hZigZag \
                          -lineStyle solid -fill lime -outline lime
dr::createPacket exDmy8 -display $display_object -stipple hZigZag \
                          -lineStyle solid -fill lime -outline lime
dr::createPacket exDmy9 -display $display_object -stipple hZigZag \
                          -lineStyle solid -fill lime -outline lime
dr::createPacket ipLayer -display $display_object -stipple solid \
                       -lineStyle solid -fill white -outline white
dr::createPacket m1txt -display $display_object -stipple solid \
                     -lineStyle solid -fill white -outline white
dr::createPacket m2txt -display $display_object -stipple solid \
                   -lineStyle solid -fill yellow -outline yellow
dr::createPacket m3txt -display $display_object -stipple solid \
                   -lineStyle solid -fill orange -outline orange
dr::createPacket m4txt -display $display_object -stipple solid \
                       -lineStyle solid -fill pink -outline pink
dr::createPacket m5txt -display $display_object -stipple solid \
                     -lineStyle solid -fill green -outline green
dr::createPacket m6txt -display $display_object -stipple solid \
                   -lineStyle solid -fill purple -outline purple
dr::createPacket m7txt -display $display_object -stipple solid \
                   -lineStyle solid -fill yellow -outline yellow
dr::createPacket m8txt -display $display_object -stipple solid \
                     -lineStyle solid -fill cream -outline cream
dr::createPacket m9txt -display $display_object -stipple solid \
                   -lineStyle solid -fill yellow -outline yellow
dr::createPacket m10txt -display $display_object -stipple solid \
                    -lineStyle solid -fill yellow -outline yellow
dr::createPacket polytxt -display $display_object -stipple solid \
                         -lineStyle solid -fill gray -outline gray
dr::createPacket pass_mk -display $display_object -stipple dots \
		-lineStyle solid -fill #661a48 -outline #661a48
dr::createPacket fail_mk -display $display_object -stipple dots \
		-lineStyle solid -fill #7c6078 -outline #7c6078
dr::createPacket polygon_mk -display $display_object -stipple dots \
		-lineStyle solid -fill #f26f6c -outline #f26f6c
dr::createPacket violation_mk -display $display_object -stipple dots \
		-lineStyle solid -fill #3acb88 -outline #3acb88
dr::createPacket rule_txt_mk -display $display_object -stipple dots \
		-lineStyle solid -fill #5a68c2 -outline #5a68c2
dr::createPacket case_txt_mk -display $display_object -stipple dots \
		-lineStyle solid -fill #3f3f3c -outline #3f3f3c
dr::createPacket COMP -display $display_object -stipple backSlash \
		-lineStyle solid -fill #bd74bd -outline #bd74bd
dr::createPacket DNWELL -display $display_object -stipple slash \
		-lineStyle solid -fill #88cb1d -outline #88cb1d
dr::createPacket Nwell -display $display_object -stipple backSlash \
		-lineStyle solid -fill #f9946b -outline #f9946b
dr::createPacket LVPWELL -display $display_object -stipple slash \
		-lineStyle solid -fill #3a2888 -outline #3a2888
dr::createPacket Dualgate -display $display_object -stipple backSlash \
		-lineStyle solid -fill #c16f5c -outline #c16f5c
dr::createPacket Poly2 -display $display_object -stipple slash \
		-lineStyle solid -fill #2e9521 -outline #2e9521
dr::createPacket Nplus -display $display_object -stipple backSlash \
		-lineStyle solid -fill #bf3efb -outline #bf3efb
dr::createPacket Pplus -display $display_object -stipple slash \
		-lineStyle solid -fill #34c590 -outline #34c590
dr::createPacket SAB -display $display_object -stipple backSlash \
		-lineStyle solid -fill #67392f -outline #67392f
dr::createPacket ESD -display $display_object -stipple slash \
		-lineStyle solid -fill #d9ef03 -outline #d9ef03
dr::createPacket Contact -display $display_object -stipple backSlash \
		-lineStyle solid -fill #c86634 -outline #c86634
dr::createPacket Metal1 -display $display_object -stipple slash \
		-lineStyle solid -fill #eddd07 -outline #eddd07
dr::createPacket Via1 -display $display_object -stipple backSlash \
		-lineStyle solid -fill #f5e7f1 -outline #f5e7f1
dr::createPacket Metal2 -display $display_object -stipple slash \
		-lineStyle solid -fill #ccf338 -outline #ccf338
dr::createPacket Via2 -display $display_object -stipple backSlash \
		-lineStyle solid -fill #e1d8ca -outline #e1d8ca
dr::createPacket Metal3 -display $display_object -stipple slash \
		-lineStyle solid -fill #97b91b -outline #97b91b
dr::createPacket Via3 -display $display_object -stipple backSlash \
		-lineStyle solid -fill #53e2e8 -outline #53e2e8
dr::createPacket Metal4 -display $display_object -stipple slash \
		-lineStyle solid -fill #80317c -outline #80317c
dr::createPacket Via4 -display $display_object -stipple backSlash \
		-lineStyle solid -fill #a7b1d1 -outline #a7b1d1
dr::createPacket Metal5 -display $display_object -stipple slash \
		-lineStyle solid -fill #cdc16b -outline #cdc16b
dr::createPacket Via5 -display $display_object -stipple backSlash \
		-lineStyle solid -fill #827e5b -outline #827e5b
dr::createPacket MetalTop -display $display_object -stipple slash \
		-lineStyle solid -fill #b1dd9c -outline #b1dd9c
dr::createPacket Pad -display $display_object -stipple backSlash \
		-lineStyle solid -fill #72342b -outline #72342b
dr::createPacket Resistor -display $display_object -stipple slash \
		-lineStyle solid -fill #1437ff -outline #1437ff
dr::createPacket FHRES -display $display_object -stipple backSlash \
		-lineStyle solid -fill #82b18c -outline #82b18c
dr::createPacket FuseTop -display $display_object -stipple slash \
		-lineStyle solid -fill #b9a4fd -outline #b9a4fd
dr::createPacket FuseWindow_D -display $display_object -stipple backSlash \
		-lineStyle solid -fill #87ad41 -outline #87ad41
dr::createPacket POLYFUSE -display $display_object -stipple slash \
		-lineStyle solid -fill #ec7ceb -outline #ec7ceb
dr::createPacket MVSD -display $display_object -stipple backSlash \
		-lineStyle solid -fill #e29901 -outline #e29901
dr::createPacket MVPSD -display $display_object -stipple slash \
		-lineStyle solid -fill #63a2db -outline #63a2db
dr::createPacket NAT -display $display_object -stipple backSlash \
		-lineStyle solid -fill #91d339 -outline #91d339
dr::createPacket COMP_Dummy -display $display_object -stipple slash \
		-lineStyle solid -fill #f84e38 -outline #f84e38
dr::createPacket Poly2_Dummy -display $display_object -stipple backSlash \
		-lineStyle solid -fill #2d4da8 -outline #2d4da8
dr::createPacket Metal1_Dummy -display $display_object -stipple slash \
		-lineStyle solid -fill #c01202 -outline #c01202
dr::createPacket Metal2_Dummy -display $display_object -stipple backSlash \
		-lineStyle solid -fill #2f93c0 -outline #2f93c0
dr::createPacket Metal3_Dummy -display $display_object -stipple slash \
		-lineStyle solid -fill #867300 -outline #867300
dr::createPacket Metal4_Dummy -display $display_object -stipple backSlash \
		-lineStyle solid -fill #e86c70 -outline #e86c70
dr::createPacket Metal5_Dummy -display $display_object -stipple slash \
		-lineStyle solid -fill #26676b -outline #26676b
dr::createPacket MetalTop_Dummy -display $display_object -stipple backSlash \
		-lineStyle solid -fill #60fe08 -outline #60fe08
dr::createPacket COMP_Label -display $display_object -stipple slash \
		-lineStyle solid -fill #4665c7 -outline #4665c7
dr::createPacket Poly2_Label -display $display_object -stipple backSlash \
		-lineStyle solid -fill #fb1879 -outline #fb1879
dr::createPacket Metal1_Label -display $display_object -stipple slash \
		-lineStyle solid -fill #880f5b -outline #880f5b
dr::createPacket Metal2_Label -display $display_object -stipple backSlash \
		-lineStyle solid -fill #ff80b7 -outline #ff80b7
dr::createPacket Metal3_Label -display $display_object -stipple slash \
		-lineStyle solid -fill #ad9348 -outline #ad9348
dr::createPacket Metal4_Label -display $display_object -stipple backSlash \
		-lineStyle solid -fill #876bbe -outline #876bbe
dr::createPacket Metal5_Label -display $display_object -stipple slash \
		-lineStyle solid -fill #43e12f -outline #43e12f
dr::createPacket MetalTop_Label -display $display_object -stipple backSlash \
		-lineStyle solid -fill #a6ec0e -outline #a6ec0e
dr::createPacket Metal1_Slot -display $display_object -stipple slash \
		-lineStyle solid -fill #271fe3 -outline #271fe3
dr::createPacket Metal2_Slot -display $display_object -stipple backSlash \
		-lineStyle solid -fill #d56ff8 -outline #d56ff8
dr::createPacket Metal3_Slot -display $display_object -stipple slash \
		-lineStyle solid -fill #d8c178 -outline #d8c178
dr::createPacket Metal4_Slot -display $display_object -stipple backSlash \
		-lineStyle solid -fill #6c36fb -outline #6c36fb
dr::createPacket Metal5_Slot -display $display_object -stipple slash \
		-lineStyle solid -fill #225c09 -outline #225c09
dr::createPacket MetalTop_Slot -display $display_object -stipple backSlash \
		-lineStyle solid -fill #03f979 -outline #03f979
dr::createPacket UBMPPeri -display $display_object -stipple slash \
		-lineStyle solid -fill #6c9be2 -outline #6c9be2
dr::createPacket UBMPArray -display $display_object -stipple backSlash \
		-lineStyle solid -fill #0174b8 -outline #0174b8
dr::createPacket UBMEPlate -display $display_object -stipple slash \
		-lineStyle solid -fill #5bdc70 -outline #5bdc70
dr::createPacket Schottky_diode -display $display_object -stipple backSlash \
		-lineStyle solid -fill #94d628 -outline #94d628
dr::createPacket ZENER -display $display_object -stipple slash \
		-lineStyle solid -fill #5660ce -outline #5660ce
dr::createPacket RES_MK -display $display_object -stipple backSlash \
		-lineStyle solid -fill #4a0c51 -outline #4a0c51
dr::createPacket OPC_drc -display $display_object -stipple slash \
		-lineStyle solid -fill #84fd79 -outline #84fd79
dr::createPacket NDMY -display $display_object -stipple backSlash \
		-lineStyle solid -fill #49ee98 -outline #49ee98
dr::createPacket PMNDMY -display $display_object -stipple slash \
		-lineStyle solid -fill #0c7e5b -outline #0c7e5b
dr::createPacket V5_XTOR -display $display_object -stipple backSlash \
		-lineStyle solid -fill #49b403 -outline #49b403
dr::createPacket CAP_MK -display $display_object -stipple slash \
		-lineStyle solid -fill #2522b7 -outline #2522b7
dr::createPacket MOS_CAP_MK -display $display_object -stipple backSlash \
		-lineStyle solid -fill #0c5e62 -outline #0c5e62
dr::createPacket IND_MK -display $display_object -stipple slash \
		-lineStyle solid -fill #99ac7e -outline #99ac7e
dr::createPacket DIODE_MK -display $display_object -stipple backSlash \
		-lineStyle solid -fill #9f0f89 -outline #9f0f89
dr::createPacket DRC_BJT -display $display_object -stipple slash \
		-lineStyle solid -fill #04507b -outline #04507b
dr::createPacket LVS_BJT -display $display_object -stipple backSlash \
		-lineStyle solid -fill #0e7575 -outline #0e7575
dr::createPacket MIM_L_MK -display $display_object -stipple slash \
		-lineStyle solid -fill #f6b1ef -outline #f6b1ef
dr::createPacket Latchup_MK -display $display_object -stipple backSlash \
		-lineStyle solid -fill #10c9d8 -outline #10c9d8
dr::createPacket GUARD_RING_MK -display $display_object -stipple slash \
		-lineStyle solid -fill #79d94d -outline #79d94d
dr::createPacket OTP_MK -display $display_object -stipple backSlash \
		-lineStyle solid -fill #2aa0fb -outline #2aa0fb
dr::createPacket MTPMARK -display $display_object -stipple slash \
		-lineStyle solid -fill #7b407b -outline #7b407b
dr::createPacket NEO_EE_MK -display $display_object -stipple backSlash \
		-lineStyle solid -fill #f894c4 -outline #f894c4
dr::createPacket SramCore -display $display_object -stipple slash \
		-lineStyle solid -fill #d69c01 -outline #d69c01
dr::createPacket LVS_RF -display $display_object -stipple backSlash \
		-lineStyle solid -fill #c80a86 -outline #c80a86
dr::createPacket LVS_Drain -display $display_object -stipple slash \
		-lineStyle solid -fill #fa898a -outline #fa898a
dr::createPacket IND_MK -display $display_object -stipple backSlash \
		-lineStyle solid -fill #5a305a -outline #5a305a
dr::createPacket HVPOLYRS -display $display_object -stipple slash \
		-lineStyle solid -fill #c2bf6d -outline #c2bf6d
dr::createPacket LVS_IO -display $display_object -stipple backSlash \
		-lineStyle solid -fill #9f3b8a -outline #9f3b8a
dr::createPacket PROBE_MK -display $display_object -stipple slash \
		-lineStyle solid -fill #5aac8a -outline #5aac8a
dr::createPacket ESD_MK -display $display_object -stipple backSlash \
		-lineStyle solid -fill #5de533 -outline #5de533
dr::createPacket LVS_Source -display $display_object -stipple slash \
		-lineStyle solid -fill #b654a3 -outline #b654a3
dr::createPacket WELL_DIODE_MK -display $display_object -stipple backSlash \
		-lineStyle solid -fill #9beaaf -outline #9beaaf
dr::createPacket LDMOS_XTOR -display $display_object -stipple slash \
		-lineStyle solid -fill #b0eb32 -outline #b0eb32
dr::createPacket PLFUSE -display $display_object -stipple backSlash \
		-lineStyle solid -fill #2507df -outline #2507df
dr::createPacket EFUSE_MK -display $display_object -stipple slash \
		-lineStyle solid -fill #7791b3 -outline #7791b3
dr::createPacket MCELL_FEOL_MK -display $display_object -stipple backSlash \
		-lineStyle solid -fill #ac9801 -outline #ac9801
dr::createPacket YMTP_MK -display $display_object -stipple slash \
		-lineStyle solid -fill #ae438e -outline #ae438e
dr::createPacket DEV_WF_MK -display $display_object -stipple backSlash \
		-lineStyle solid -fill #5779b7 -outline #5779b7
dr::createPacket Metal1_BLK -display $display_object -stipple slash \
		-lineStyle solid -fill #8e3415 -outline #8e3415
dr::createPacket Metal2_BLK -display $display_object -stipple backSlash \
		-lineStyle solid -fill #47649f -outline #47649f
dr::createPacket Metal3_BLK -display $display_object -stipple slash \
		-lineStyle solid -fill #3bf37a -outline #3bf37a
dr::createPacket Metal4_BLK -display $display_object -stipple backSlash \
		-lineStyle solid -fill #678619 -outline #678619
dr::createPacket Metal5_BLK -display $display_object -stipple slash \
		-lineStyle solid -fill #44fa82 -outline #44fa82
dr::createPacket MetalT_BLK -display $display_object -stipple backSlash \
		-lineStyle solid -fill #614b6a -outline #614b6a
dr::createPacket PR_bndry -display $display_object -stipple slash \
		-lineStyle solid -fill #d9f817 -outline #d9f817
dr::createPacket MDIODE -display $display_object -stipple backSlash \
		-lineStyle solid -fill #0bdfb7 -outline #0bdfb7
dr::createPacket Metal1_Res -display $display_object -stipple slash \
		-lineStyle solid -fill #658af3 -outline #658af3
dr::createPacket Metal2_Res -display $display_object -stipple backSlash \
		-lineStyle solid -fill #e9465c -outline #e9465c
dr::createPacket Metal3_Res -display $display_object -stipple slash \
		-lineStyle solid -fill #ba3263 -outline #ba3263
dr::createPacket Metal4_Res -display $display_object -stipple backSlash \
		-lineStyle solid -fill #ddeef3 -outline #ddeef3
dr::createPacket Metal5_Res -display $display_object -stipple slash \
		-lineStyle solid -fill #004676 -outline #004676
dr::createPacket Metal6_Res -display $display_object -stipple backSlash \
		-lineStyle solid -fill #e4b00d -outline #e4b00d
dr::createPacket Border -display $display_object -stipple slash \
		-lineStyle solid -fill #edeb06 -outline #edeb06
# PacketAliases definition
dr::createPacketAlias SE_runtime -packet inherited -display $display_object
dr::createPacketAlias LE_runtime -packet inherited -display $display_object
dr::createPacketAlias active -packet active_TrueColorBright -display $display_object
dr::createPacketAlias axis_white -packet axis -display $display_object
dr::createPacketAlias coordinate_mark -packet yellow_white -display $display_object
dr::createPacketAlias cursor -packet cursor_white -display $display_object
dr::createPacketAlias display_major_grid -packet major_grid -display $display_object
dr::createPacketAlias display_minor_grid -packet minor_grid -display $display_object
dr::createPacketAlias display_route_grid_via -packet route_grid_via -display $display_object
dr::createPacketAlias display_route_grid_point -packet route_grid_point -display $display_object
dr::createPacketAlias ghost_mark -packet transparent_white -display $display_object
dr::createPacketAlias core_box_spec_boundary -packet prBoundaryBnd -display $display_object
dr::createPacketAlias core_box_spec_row -packet row -display $display_object
dr::createPacketAlias core_box_spec_site -packet rowSite -display $display_object
dr::createPacketAlias routeGuidePrefDir -packet areaBoundaryPrefDir -display $display_object
dr::createPacketAlias highlight1 -packet highlight1_yellow -display $display_object
dr::createPacketAlias highlight2 -packet highlight2_red -display $display_object
dr::createPacketAlias highlight3 -packet highlight3_green -display $display_object
dr::createPacketAlias highlight4 -packet highlight4_blue -display $display_object
dr::createPacketAlias highlight5 -packet highlight5_purple -display $display_object
dr::createPacketAlias highlight6 -packet highlight6_cyan -display $display_object
dr::createPacketAlias highlight7 -packet highlight7_white -display $display_object
dr::createPacketAlias highlight8 -packet highlight8_gold -display $display_object
dr::createPacketAlias highlight9 -packet highlight9_maroon -display $display_object
dr::createPacketAlias highlight10 -packet highlight10_gray -display $display_object
dr::createPacketAlias highlight1dim -packet highlight1_yellow_dim -display $display_object
dr::createPacketAlias highlight2dim -packet highlight2_red_dim -display $display_object
dr::createPacketAlias highlight3dim -packet highlight3_green_dim -display $display_object
dr::createPacketAlias highlight4dim -packet highlight4_blue_dim -display $display_object
dr::createPacketAlias highlight5dim -packet highlight5_purple_dim -display $display_object
dr::createPacketAlias highlight6dim -packet highlight6_cyan_dim -display $display_object
dr::createPacketAlias highlight7dim -packet highlight7_white_dim -display $display_object
dr::createPacketAlias highlight8dim -packet highlight8_gold_dim -display $display_object
dr::createPacketAlias highlight9dim -packet highlight9_maroon_dim -display $display_object
dr::createPacketAlias highlight10dim -packet highlight10_gray_dim -display $display_object
dr::createPacketAlias net_highlight -packet highlight2_red -display $display_object
dr::createPacketAlias net_highlight2 -packet annotate -display $display_object
dr::createPacketAlias multipleProbes -packet highlight7_white -display $display_object
dr::createPacketAlias ruler -packet ruler_white -display $display_object
dr::createPacketAlias runtime -packet runtime_TrueColorGhost -display $display_object
dr::createPacketAlias stroke -packet stroke_white -display $display_object
dr::createPacketAlias select1 -packet select1_yellow -display $display_object
dr::createPacketAlias select2 -packet select2_red -display $display_object
dr::createPacketAlias select3 -packet select3_blue -display $display_object
dr::createPacketAlias select4 -packet select4_purple -display $display_object
dr::createPacketAlias textAttach -packet annotate5 -display $display_object
dr::createPacketAlias termName -packet defaultTermName -display $display_object
dr::createPacketAlias connNavPartial -packet highlight1_yellow -display $display_object
dr::createPacketAlias connNavFull -packet highlight2_red -display $display_object
dr::createPacketAlias connNavNone -packet highlight3_green -display $display_object
# Text Packets definition
dr::createTextPacket active -display $display_object -color TrueColorBright
dr::createTextPacket block -display $display_object -color inherited \
	 -bold yes
dr::createTextPacket blockName -display $display_object -color green \
	 -bold yes
dr::createTextPacket blockPort -display $display_object -color red \
	 -italic yes
dr::createTextPacket deviceName -display $display_object -color green \
	 -bold yes
dr::createTextPacket instanceName -display $display_object -color green
dr::createTextPacket unboundInstanceName -display $display_object -color red \
	 -italic yes -underline yes
dr::createTextPacket instanceBlock -display $display_object -color green
dr::createTextPacket instanceSignal -display $display_object -color cadetBlue
dr::createTextPacket signal -display $display_object -color cadetBlue
dr::createTextPacket comment -display $display_object -color yellow \
	 -italic yes
dr::createTextPacket identifier -display $display_object -color brown
dr::createTextPacket includeFile -display $display_object -color red \
	 -underline yes
dr::createTextPacket keyword -display $display_object -color inherited \
	 -bold yes
dr::createTextPacket directive -display $display_object -color inherited
dr::createTextPacket whitespace -display $display_object -color inherited
dr::createTextPacket dspfNet -display $display_object -color red
dr::createTextPacket other -display $display_object -color inherited
dr::createTextPacket annotate -display $display_object -color tan
dr::createTextPacket multipleProbes -display $display_object -color black \
	 -backgroundColor white
dr::createTextPacket markerWarn -display $display_object -color black \
	 -backgroundColor blinkYellow
dr::createTextPacket markerErr -display $display_object -color black \
	 -backgroundColor blinkWhite
dr::createTextPacket markerInf -display $display_object -color black \
	 -backgroundColor green
dr::createTextPacket select -display $display_object -color inherited \
	 -backgroundColor orange -underline yes
dr::createTextPacket rulerCoordinate -display $display_object -color white \
	 -backgroundColor black
dr::createTextPacket highlight1 -display $display_object -color black \
	 -backgroundColor yellow
dr::createTextPacket highlight2 -display $display_object -color black \
	 -backgroundColor red
dr::createTextPacket highlight3 -display $display_object -color black \
	 -backgroundColor green
dr::createTextPacket highlight4 -display $display_object -color black \
	 -backgroundColor blue
dr::createTextPacket highlight5 -display $display_object -color black \
	 -backgroundColor purple
dr::createTextPacket highlight6 -display $display_object -color black \
	 -backgroundColor cyan
dr::createTextPacket highlight7 -display $display_object -color black \
	 -backgroundColor white
dr::createTextPacket highlight8 -display $display_object -color black \
	 -backgroundColor gold
dr::createTextPacket highlight9 -display $display_object -color black \
	 -backgroundColor maroon
dr::createTextPacket highlight10 -display $display_object -color black \
	 -backgroundColor gray

