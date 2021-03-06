@erafterpage mode=true;
[linemode mode=none]
[eval exp="kag.autoLabelType = 0"]
[call storage="macro.ks"]
[call storage="oldMovie.ks"]
[call storage="rain.ks"]
[call storage="fog.ks"]
[eval exp="kag.allskip=false"]

*start|




[position layer=message0 page=fore visible=false]
[eval exp="tf.denglu = 1" cond="tf.denglu != 2"]

[if exp="tf.denglu == 1"]
;[clickskip enabled=false]

[image page=back visible=true layer=0 storage=SP-time00]
[stoptrans]
[trans method=crossfade time=500]
[wt]
[image page=back visible=true layer=0 storage=SP-time]
[播放音效 s="SPTIME"  cond="tf.denglu == 1"]
[stoptrans]
[trans method=crossfade time=3700 ]
[wt]

[image page=back visible=true layer=0 storage=SP-time00]
[trans method=ripple time=2000]
[wt]
[关闭音效1 t="1000"]


[eval exp="tf.denglu ='2'"]
[endif]

[rclick enabled=false]
;关闭右键
[clickskip enabled=false]
;关闭dianji跳过
[history enabled=false output=false]
;关闭历史记录
[playbgm storage="xumuqu.ogg"]
[backlay]
[image page=back visible=true layer=0 storage=chunhei]
[trans method=crossfade time=600][wt]
[backlay]
[image page=back visible=true layer=0 storage=kaishijiemian.jpg]
[trans method=crossfade time=600][wt]

[startanchor]
[rclick enabled=false]
;关闭右键
[clickskip enabled=false]
;关闭dianji跳过
[history enabled=false output=false]
;关闭历史记录
[image layer=1 storage="xiala1" left=0 top=-80 opacity=0 visible=true page=fore]
[move layer=1 path="(0,0,255)" time=400]
[image layer=2 storage="xiala2" left=0 top=700 opacity=0 visible=true page=fore ]
[move layer=2 path="(0,550,255)" time=400][wm][stopmove]
[image layer=3 storage="henggang1" left=960 top=0 opacity=0 visible=true page=fore]
[move layer=3 path="(0,0,255)" time=400]
[image layer=4 storage="henggang2" left=-960 top=550 opacity=0 visible=true page=fore ]
[move layer=4 path="(0,550,255)" time=400][wm]
[backlay]
[image layer=5 page=back visible=true storage=LOGO]
[trans method=crossfade time=500][wt]


[position layer=message2 page=back visible=false opacity=255 top=466 height=640 left=822 width=960 marginl=0 margint=0 marginr=0 marginb=0 frame="wenzikuangdiban.png"]
[current layer=message2 page=back][nowait][er]
[sysbutton name=save normal="save.png" over="save1.png" enterse="yidong" clickse="dianji" x=26 y=15     exp="kag.callExtraConductor('save.ks', '*save')"  entersebuf=3  clicksebuf=3]
[sysbutton name=load  normal="load.png" over="load1.png" enterse="yidong" clickse="dianji"  x=26 y=36  exp="kag.callExtraConductor('load.ks', '*load')" entersebuf=3  clicksebuf=3]
[sysbutton name=note  normal="note.png" over="note1.png" enterse="yidong" clickse="dianji"  x=26 y=57  exp="kag.callExtraConductor('note.ks', '*note')" entersebuf=3  clicksebuf=3]
[sysbutton name=config  normal="config.png" over="config1.png" enterse="yidong" clickse="dianji"  x=26 y=78 exp="kag.callExtraConductor('shezhi.ks', '*shezhi')" entersebuf=3  clicksebuf=3]
[sysbutton  name=auto normal="auto.png" over="auto1.png" enterse="yidong" clickse="dianji"  x=26 y=99 exp="kag.onAutoModeMenuItemClick()" entersebuf=3  clicksebuf=3]
[sysbutton name=skip  normal="skip.png" over="skip1.png"  enterse="yidong" clickse="dianji"  x=26 y=120 exp="kag.onSkipToNextStopMenuItemClick()" entersebuf=3  clicksebuf=3]


;[sysbutton enterse=btnenterse normal=config_skipall_normal over=config_skipall_over x=64 y=543 name=skipall exp="onSkipModeChange(true)"]
;[sysbutton enterse=btnenterse normal=config_skipalrdy_normal over=config_skipalrdy_over x=223 y=543 name=skipalrdy exp="onSkipModeChange(false)"]


[sysbutton name=log  exp="kag.onShowHistoryMenuItemClick()" normal="log.png" over="log1.png"  enterse="yidong" clickse="dianji" x=26 y=141 entersebuf=3  clicksebuf=3]
;[sysbutton name=log  normal="log.png" over="log1.png"  enterse="yidong" clickse="dianji" x=26 y=141 exp="kag.callExtraConductor('history.ks', '*start')" entersebuf=3  clicksebuf=3]
[if exp="sf.初始化!=true"]
[eval exp="sf.地点=[]"]
[eval exp="sf.初始化=true"]
[endif]

*first1
[position layer=message0 page=back visible=true opacity=0 top=0 height=640 left=0 width=960 marginl=0 margint=0 marginr=0 marginb=0 frame=""]
[current layer=message0 page=back][er]
[locate x=400 y=380][button normal="newgame1.png" over="newgame2.png" storage="first.ks" target=*newgame enterse="yidong" clickse="dianji" ]
[locate x=400 y=420][button normal="loadgame1.png" over="loadgame2.png" storage="load2.ks"  enterse="yidong" clickse="dianji" target=]

[locate x=400 y=460][button normal="bconfig1.png" over="bconfig2.png" storage="shezhi2.ks" target=*shezhi  enterse="yidong" clickse="dianji" ]
[locate x=400 y=500][button normal="extra1.png" over="extra2.png" storage="cg.ks" target=*cg  enterse="yidong" clickse="dianji" ]

[locate x=400 y=540][button normal="exit1.png" over="exit2.png" exp="kag.onCloseQuery()" enterse="yidong" clickse="dianji" ]


[trans method=crossfade time=200][wt]

[s]

*newgame
[position layer=message0 page=back visible=true opacity=0 top=0 height=640 left=0 width=960 marginl=0 margint=0 marginr=0 marginb=0 frame=""]
[current layer=message0 page=back][er]

[locate x=400 y=380][button normal="zhenshijie01.png" over="zhenshijie02.png" storage="txt01.ks" target=*txt01 enterse="yidong" clickse="dianji" ]

[locate x=400 y=420][button normal="wuyangpian01.png" over="wuyangpian02.png" storage="txt26.ks" target=*txt26 enterse="yidong" clickse="dianji" cond="sf.shedingx==1"]
[locate x=400 y=460][button normal="xixinpian01.png" over="xixinpian02.png" storage="wuzhibenjingjie.ks" target=*wuzhibenjingjie enterse="yidong" clickse="dianji" cond="sf.shedingxx==1"]

[locate x=400 y=540][button normal="fanhui201.png"  over="fanhui202.png" enterse="yidong" clickse="dianji" storage="first.ks" target=*first1  entersebuf=3 clicksebuf=3]

[trans method=crossfade time=200][wt]

