*load
[eval exp="f.��ǰloadҳ=1"]
[locklink]
[rclick enabled="true" jump="true" storage="load2.ks" target=*return]
[backlay]
[position layer=message0 visible="false" page=back]
[layopt layer=message3 page=fore visible=true  opacity=0]


*load2
[position layer=message3 page=back visible=true opacity=255 top=0 height=640 left=0 width=960 marginl=0 margint=0 marginr=0 marginb=0 frame="loaddiban.jpg"]
[current layer=message3 page=back][er][nowait]

[locate x=852 y=102]
[button normal=cunduanniu1 over=cunduanniu11  enterse="yidong" clickse="dianji" exp="f.��ǰloadҳ=1" target=*load2  entersebuf=3 clicksebuf=3 cond="f.��ǰloadҳ!=1"]
[button normal=cunduanniu11 over=cunduanniu11  enterse="yidong" clickse="dianji" exp="f.��ǰloadҳ=1" target=*load2  entersebuf=3 clicksebuf=3 cond="f.��ǰloadҳ==1"]
[locate x=852 y=132]
[button normal=cunduanniu2 over=cunduanniu22  enterse="yidong" clickse="dianji" exp="f.��ǰloadҳ=2" target=*load2  entersebuf=3 clicksebuf=3  cond="f.��ǰloadҳ!=2"]
[button normal=cunduanniu22 over=cunduanniu22  enterse="yidong" clickse="dianji" exp="f.��ǰloadҳ=2" target=*load2  entersebuf=3 clicksebuf=3  cond="f.��ǰloadҳ==2"]
[locate x=852 y=162]
[button normal=cunduanniu3 over=cunduanniu33  enterse="yidong" clickse="dianji" exp="f.��ǰloadҳ=3" target=*load2  entersebuf=3 clicksebuf=3   cond="f.��ǰloadҳ!=3"]
[button normal=cunduanniu33 over=cunduanniu33  enterse="yidong" clickse="dianji" exp="f.��ǰloadҳ=3" target=*load2  entersebuf=3 clicksebuf=3   cond="f.��ǰloadҳ==3"]
[locate x=852 y=192]
[button normal=cunduanniu4 over=cunduanniu44  enterse="yidong" clickse="dianji" exp="f.��ǰloadҳ=4" target=*load2  entersebuf=3 clicksebuf=3   cond="f.��ǰloadҳ!=4"]
[button normal=cunduanniu44 over=cunduanniu44  enterse="yidong" clickse="dianji" exp="f.��ǰloadҳ=4" target=*load2  entersebuf=3 clicksebuf=3   cond="f.��ǰloadҳ==4"]
[locate x=852 y=222]
[button normal=cunduanniu5 over=cunduanniu55  enterse="yidong" clickse="dianji" exp="f.��ǰloadҳ=5" target=*load2  entersebuf=3 clicksebuf=3   cond="f.��ǰloadҳ!=5"]
[button normal=cunduanniu55 over=cunduanniu55  enterse="yidong" clickse="dianji" exp="f.��ǰloadҳ=5" target=*load2  entersebuf=3 clicksebuf=3  cond="f.��ǰloadҳ==5"]
[locate x=852 y=252]
[button normal=cunduanniu6 over=cunduanniu66  enterse="yidong" clickse="dianji" exp="f.��ǰloadҳ=6" target=*load2  entersebuf=3 clicksebuf=3   cond="f.��ǰloadҳ!=6"]
[button normal=cunduanniu66 over=cunduanniu66  enterse="yidong" clickse="dianji" exp="f.��ǰloadҳ=6" target=*load2  entersebuf=3 clicksebuf=3   cond="f.��ǰloadҳ==6"]
[locate x=852 y=282]
[button normal=cunduanniu7 over=cunduanniu77  enterse="yidong" clickse="dianji" exp="f.��ǰloadҳ=7" target=*load2  entersebuf=3 clicksebuf=3   cond="f.��ǰloadҳ!=7"]
[button normal=cunduanniu77 over=cunduanniu77  enterse="yidong" clickse="dianji" exp="f.��ǰloadҳ=7" target=*load2  entersebuf=3 clicksebuf=3   cond="f.��ǰloadҳ==7"]
[locate x=852 y=312]
[button normal=cunduanniu8 over=cunduanniu88  enterse="yidong" clickse="dianji" exp="f.��ǰloadҳ=8" target=*load2  entersebuf=3 clicksebuf=3   cond="f.��ǰloadҳ!=8"]
[button normal=cunduanniu88 over=cunduanniu88  enterse="yidong" clickse="dianji" exp="f.��ǰloadҳ=8" target=*load2  entersebuf=3 clicksebuf=3   cond="f.��ǰloadҳ==8"]
[locate x=852 y=342]
[button normal=cunduanniu9 over=cunduanniu99  enterse="yidong" clickse="dianji" exp="f.��ǰloadҳ=9" target=*load2  entersebuf=3 clicksebuf=3   cond="f.��ǰloadҳ!=9"]
[button normal=cunduanniu99 over=cunduanniu99  enterse="yidong" clickse="dianji" exp="f.��ǰloadҳ=9" target=*load2  entersebuf=3 clicksebuf=3   cond="f.��ǰloadҳ==9"]

[locate x=58 y=109][button normal="&kag.getBookMarkFileNameAtNum((f.��ǰloadҳ-1)*8)" over="&kag.getBookMarkFileNameAtNum((f.��ǰloadҳ-1)*8)"  cond="checkdata((f.��ǰloadҳ-1)*8)==true"]
[locate x=150 y=110]
[ch text="      " cond="checkdata((f.��ǰloadҳ-1)*8)==true"][emb exp="kag.getBookMarkDate((f.��ǰloadҳ-1)*8)" cond="checkdata((f.��ǰloadҳ-1)*8)==true"]
[ch text="      "  cond="checkdata((f.��ǰloadҳ-1)*8)==true"]
[eval exp="tf.wudi=sf.�ص�[(f.��ǰloadҳ-1)*8]"]
[locate x=230 y=155][ch text=&tf.wudi cond="checkdata((f.��ǰloadҳ-1)*8)==true"]

[locate x=58 y=223][button normal="&kag.getBookMarkFileNameAtNum((f.��ǰloadҳ-1)*8+1)" over="&kag.getBookMarkFileNameAtNum((f.��ǰloadҳ-1)*8+1)"   cond="checkdata((f.��ǰloadҳ-1)*8+1)==true"]
[locate x=150 y=224]
[ch text="      " cond="checkdata((f.��ǰloadҳ-1)*8+1)==true"][emb exp="kag.getBookMarkDate((f.��ǰloadҳ-1)*8+1)" cond="checkdata((f.��ǰloadҳ-1)*8+1)==true"]
[ch text="      " cond="checkdata((f.��ǰloadҳ-1)*8+1)==true"]
[eval exp="tf.wudi=sf.�ص�[(f.��ǰloadҳ-1)*8+1]"]
[locate x=230 y=265][ch text=&tf.wudi  cond="checkdata((f.��ǰloadҳ-1)*8+1)==true"]


[locate x=58 y=337][button normal="&kag.getBookMarkFileNameAtNum((f.��ǰloadҳ-1)*8+2)" over="&kag.getBookMarkFileNameAtNum((f.��ǰloadҳ-1)*8+2)"   cond="checkdata((f.��ǰloadҳ-1)*8+2)==true"]
[locate x=150 y=338]
[ch text="      " cond="checkdata((f.��ǰloadҳ-1)*8+2)==true"][emb exp="kag.getBookMarkDate((f.��ǰloadҳ-1)*8+2)" cond="checkdata((f.��ǰloadҳ-1)*8+2)==true"]
[ch text="      " cond="checkdata((f.��ǰloadҳ-1)*8+2)==true"]
[eval exp="tf.wudi=sf.�ص�[(f.��ǰloadҳ-1)*8+2]"]
[locate x=230 y=380][ch text=&tf.wudi cond="checkdata((f.��ǰloadҳ-1)*8+2)==true"]

[locate x=58 y=450][button normal="&kag.getBookMarkFileNameAtNum((f.��ǰloadҳ-1)*8+3)" over="&kag.getBookMarkFileNameAtNum((f.��ǰloadҳ-1)*8+3)"   cond="checkdata((f.��ǰloadҳ-1)*8+3)==true"]
[locate x=150 y=451]
[ch text="      " cond="checkdata((f.��ǰloadҳ-1)*8+3)==true"][emb exp="kag.getBookMarkDate((f.��ǰloadҳ-1)*8+3)" cond="checkdata((f.��ǰloadҳ-1)*8+3)==true"]
[ch text="      " cond="checkdata((f.��ǰloadҳ-1)*8+3)==true"]
[eval exp="tf.wudi=sf.�ص�[(f.��ǰloadҳ-1)*8+3]"]
[locate x=230 y=490][ch text=&tf.wudi cond="checkdata((f.��ǰloadҳ-1)*8+3)==true"]


[locate x=466 y=109][button normal="&kag.getBookMarkFileNameAtNum((f.��ǰloadҳ-1)*8+4)" over="&kag.getBookMarkFileNameAtNum((f.��ǰloadҳ-1)*8+4)"   cond="checkdata((f.��ǰloadҳ-1)*8+4)==true"]
[locate x=550 y=110]
[ch text="      " cond="checkdata((f.��ǰloadҳ-1)*8+4)==true"][emb exp="kag.getBookMarkDate((f.��ǰloadҳ-1)*8+4)" cond="checkdata((f.��ǰloadҳ-1)*8+4)==true"]
[ch text="      " cond="checkdata((f.��ǰloadҳ-1)*8+4)==true"]
[eval exp="tf.wudi=sf.�ص�[(f.��ǰloadҳ-1)*8+4]"]
[locate x=630 y=155][ch text=&tf.wudi cond="checkdata((f.��ǰloadҳ-1)*8+4)==true"]

[locate x=466 y=223][button normal="&kag.getBookMarkFileNameAtNum((f.��ǰloadҳ-1)*8+5)" over="&kag.getBookMarkFileNameAtNum((f.��ǰloadҳ-1)*8+5)"   cond="checkdata((f.��ǰloadҳ-1)*8+5)==true"]
[locate x=550 y=224]
[ch text="      "  cond="checkdata((f.��ǰloadҳ-1)*8+5)==true"][emb exp="kag.getBookMarkDate((f.��ǰloadҳ-1)*8+5)" cond="checkdata((f.��ǰloadҳ-1)*8+5)==true"]
[ch text="      " cond="checkdata((f.��ǰloadҳ-1)*8+5)==true"]
[eval exp="tf.wudi=sf.�ص�[(f.��ǰloadҳ-1)*8+5]"]
[locate x=630 y=265][ch text=&tf.wudi cond="checkdata((f.��ǰloadҳ-1)*8+5)==true"]

[locate x=466 y=337][button normal="&kag.getBookMarkFileNameAtNum((f.��ǰloadҳ-1)*8+6)" over="&kag.getBookMarkFileNameAtNum((f.��ǰloadҳ-1)*8+6)"   cond="checkdata((f.��ǰloadҳ-1)*8+6)==true"]
[locate x=550 y=338]
[ch text="      " cond="checkdata((f.��ǰloadҳ-1)*8+6)==true"][emb exp="kag.getBookMarkDate((f.��ǰloadҳ-1)*8+6)" cond="checkdata((f.��ǰloadҳ-1)*8+6)==true"]
[ch text="      " cond="checkdata((f.��ǰloadҳ-1)*8+6)==true"]
[eval exp="tf.wudi=sf.�ص�[(f.��ǰloadҳ-1)*8+6]"]
[locate x=630 y=380][ch text=&tf.wudi cond="checkdata((f.��ǰloadҳ-1)*8+6)==true"]

[locate x=466 y=450][button normal="&kag.getBookMarkFileNameAtNum((f.��ǰloadҳ-1)*8+7)" over="&kag.getBookMarkFileNameAtNum((f.��ǰloadҳ-1)*8+7)"   cond="checkdata((f.��ǰloadҳ-1)*8+7)==true"]
[locate x=550 y=451]
[ch text="      " cond="checkdata((f.��ǰloadҳ-1)*8+7)==true"][emb exp="kag.getBookMarkDate((f.��ǰloadҳ-1)*8+7)" cond="checkdata((f.��ǰloadҳ-1)*8+7)==true"]
[ch text="      " cond="checkdata((f.��ǰloadҳ-1)*8+7)==true"]
[eval exp="tf.wudi=sf.�ص�[(f.��ǰloadҳ-1)*8+7]"]
[locate x=630 y=490][ch text=&tf.wudi cond="checkdata((f.��ǰloadҳ-1)*8+7)==true"]


[locate x=830 y=579]
[button normal=back1  target=*return  over="back2" enterse="yidong" clickse="dianji" entersebuf=3 clicksebuf=3  storage="load2.ks"]


[position layer=message4 page=back visible=true opacity=255 top=0 height=640 left=0 width=960 marginl=0 margint=0 marginr=0 marginb=0 frame="mingming"]
[current layer=message4 page=back][er]
[locate x=40 y=97][button normal="kuang1" over="kuang2" storage="load2.ks" target=*��ȡ exp="tf.�浵���=(f.��ǰloadҳ-1)*8"]
[locate x=40 y=210][button normal="kuang1" over="kuang2" storage="load2.ks" target=*��ȡ exp="tf.�浵���=(f.��ǰloadҳ-1)*8+1"]
[locate x=40 y=325][button normal="kuang1" over="kuang2" storage="load2.ks" target=*��ȡ exp="tf.�浵���=(f.��ǰloadҳ-1)*8+2"]
[locate x=40 y=437][button normal="kuang1" over="kuang2" storage="load2.ks" target=*��ȡ exp="tf.�浵���=(f.��ǰloadҳ-1)*8+3"]
[locate x=448 y=97][button normal="kuang1" over="kuang2" storage="load2.ks" target=*��ȡ exp="tf.�浵���=(f.��ǰloadҳ-1)*8+4"]
[locate x=448 y=210][button normal="kuang1" over="kuang2" storage="load2.ks" target=*��ȡ exp="tf.�浵���=(f.��ǰloadҳ-1)*8+5"]
[locate x=448 y=325][button normal="kuang1" over="kuang2" storage="load2.ks" target=*��ȡ exp="tf.�浵���=(f.��ǰloadҳ-1)*8+6"]
[locate x=448 y=437][button normal="kuang1" over="kuang2" storage="load2.ks" target=*��ȡ exp="tf.�浵���=(f.��ǰloadҳ-1)*8+7"]



[stoptrans]
[trans method=crossfade time=200][wt]
[s]



*��ȡ
;����������ʱ,�򿪶�ȡѯ�ʿ�
[if exp="checkdata(tf.�浵���)==true"]
[eval exp="tf.ѯ�ʶԻ�='��  ȷ��Ҫ��ȡ Data'+(tf.�浵���+1)+' �𣿡�'"]
[ѯ�ʴ��� text=&tf.ѯ�ʶԻ� storage=load2.ks cancel=*cancel ok=*ȷ����ȡ]
[endif]

;������������ʱ,��ȡ��Ч
[if exp="checkdata(tf.�浵���)==false"]
[current layer="message5" page="fore"]
[er]
[jump target=*load2 storage="load2.ks"]

;[������ʾ target=*��ȡ]
[endif]
[s]

*ȷ����ȡ

[eval exp="kag.historyLayer.clear()"]
[backlay]
[position layer=message8 frame="chunhei" top=0 left=0 page=back visible=true opacity=255]
[locklink]
[stoptrans]
[trans method=crossfade time=1000][wt]
[unlocklink]
[load place=&tf.�浵��� ask="false"]

[s]


*cancel
[backlay]
[layopt layer=message7 visible=false page=back]
[current layer="message7" page="back"]
[er]
[locklink]
[stoptrans]
[trans method="crossfade" time=200]
[wt]
[unlocklink]
[rclick enabled="true" jump="true" storage="load2.ks" target=*return]
[s]

*return
[backlay]
[layopt layer="message3" visible="false" page="back"]
[layopt layer="message4" visible="false" page="back"]
[rclick enabled="false"]
[locklink]
[jump target=*first1 storage="first.ks"]