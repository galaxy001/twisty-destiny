[loadplugin module=addfont.dll]
@loadplugin module=extrans.dll
@loadplugin module=krflash.dll
@loadplugin module=krmovie.dll
@loadplugin module=layerExImage.dll
@loadplugin module=csvparser.dll
@loadplugin module=wuvorbis.dll


[eval exp="System.addFont('simyou.ttf', true)"]


;0�����쿪ʼ
@macro name=���쿪ʼ
[foginit]
[image page=fore visible=true layer=10 storage="wu.png" index=999890]
@endmacro
;����[���쿪ʼ]

;0���������
@macro name=�������
[foguninit]
[image page=fore visible=false layer=10 storage="wu.png" index=999890]
@endmacro
;����[�������]

;1����ʾ����ͼƬ����
@macro name=��ʾ����ͼƬ����
[backlay]
[image page=back visible=true layer=0 storage=%s]
[stoptrans]
[trans method=crossfade time=%t|1000][wt]
@endmacro
;����[��ʾ����ͼƬ���� s="bg1" t="2000"]

;2����ʾ����ͼƬ�������˾�����
@macro name=��ʾ����ͼƬ�������˾�����
[backlay]
[image page=back visible=true layer=0 storage=%s]
[image page=back visible=true layer=6 storage=%s1 top=%top left=%left opacity=255 index=999950]
[image page=back visible=true layer=7 storage=%s2 top=%top2 left=%left2 opacity=255 index=999960]
[image page=back visible=true layer=8 storage=%s left=%left top=%top opacity=255 index=999970]
[stoptrans]
[trans method=universal vague=%y|1 time=%t|1000 rule=%x][wt canskip="false"]
@endmacro
;����[��ʾ����ͼƬ�������˾����� s="bg1" s1="" s2="" left=50 top=300 left2=50 top2=100 t="2000" x="������˾�����"]
;����[��ʾ����ͼƬ�������˾����� s="bg1" t="2000" x="������˾�����" y=""]��y��д1~64�����֣�����������е�ģ���̶ȣ��ɲ�дy��

;3����ʾ���ֿ�
@macro name=��ʾ���ֿ�
[backlay]
[layopt layer=message2 visible=true page=back]
[position layer=message1 page=back visible=true opacity=255 top=466 height=640 left=0 width=960 marginl=100 margint=22 marginr=53 marginb=0 frame="duihuakuang.png"]
[current layer=message1 page=fore]
[er]
[stoptrans]
[trans method=crossfade time=%t|200][wt]
@endmacro
;����[��ʾ���ֿ�]����[��ʾ���ֿ� t=200]


;4�����ֿ���ʧ
@macro name=���ֿ���ʧ
[backlay]
[layopt layer=message2 visible=false page=back]
[position layer=message1 frame="" page=back opacity=0]
[stoptrans]
[trans method=crossfade time=%t|200][wt]
@endmacro
;����[���ֿ���ʧ]��[���ֿ���ʧ t=0]


;5����ʾ����1
@macro name=��ʾ����1
[backlay]
[image page=back visible=true layer=6 storage=%s left=%left top=%top opacity=255 index=999950]
[stoptrans]
[trans method=crossfade time=%t|0][wt]
@endmacro
;����[��ʾ����1 s="test" top=25 left=120 t="300"]

;5.1:��ʾ�ƶ�����1
@macro name=��ʾ�ƶ�����1
[image page=fore visible=true layer=6 storage=%s left=%left1 top=%top1 opacity=0  index=999950]
[move layer=6 path=%path time=%t|300][wm]
@endmacro
;����[��ʾ�ƶ�����1 s="qj1" left1=120 top1=25 path="(180,25,255)" t="300"]


;6����ʾ����2
@macro name=��ʾ����2
[backlay]
[image page=back visible=true layer=7 storage=%s left=%left top=%top opacity=255  index=999960]
[stoptrans]
[trans method=crossfade time=%t|100][wt]
[endmacro]
;����[��ʾ����2 s="test" top=50 left=200 t="300"]

;5.1:��ʾ�ƶ�����2
@macro name=��ʾ�ƶ�����2
[image page=fore visible=true layer=7 storage=%s left=%left1 top=%top1 opacity=0  index=999960]
[move layer=7 path=%path time=%t|300][wm]
@endmacro
;����[��ʾ�ƶ�����2 s="qj1" left1=120 top1=25 path="(180,25,255)" t="300"]


;7����ʾ����3
@macro name=��ʾ����3
[backlay]
[image page=back visible=true layer=8 storage=%s left=%left top=%top opacity=255  index=999970]
[stoptrans]
[trans method=crossfade time=%t|100][wt]
[endmacro]
;����[��ʾ����3 s="test" top=50 left=300 t="300"]

;5.1:��ʾ�ƶ�����3
@macro name=��ʾ�ƶ�����3
[image page=fore visible=true layer=8 storage=%s left=%left1 top=%top1 opacity=0 index=999970]
[move layer=8 path=%path time=%t|300][wm]
@endmacro
;����[��ʾ�ƶ�����3 s="qj1" left1=120 top1=25 path="(180,25,255)" t="300"]



;8������1��ʧ
@macro name=����1��ʧ
[backlay]
[freeimage layer=6 page=back]
[stoptrans]
[trans method=crossfade time=%t|0][wt]
@endmacro
;����[����1��ʧ t="300"]


;8������1�ƶ���ʧ
@macro name=�����ƶ�1��ʧ
[move layer=6 path=%path time=%t|200][wm]
@endmacro
;����[�����ƶ�1��ʧ path="(100,25,0)" t="300"]

;9������2��ʧ
@macro name=����2��ʧ
[backlay]
[freeimage layer=7 page=back]
[stoptrans]
[trans method=crossfade time=%t|0][wt]
@endmacro
;����[����2��ʧ t="300"]

;8������2�ƶ���ʧ
@macro name=�����ƶ�2��ʧ
[move layer=7 path=%path time=%t|200][wm]
@endmacro
;����[�����ƶ�2��ʧ path="(100,25,0)" t="300"]

;10������3��ʧ
@macro name=����3��ʧ
[backlay]
[freeimage layer=8 page=back]
[stoptrans]
[trans method=crossfade time=%t|0][wt]
@endmacro
;����[����3��ʧ t="300"]

;8������3�ƶ���ʧ
@macro name=�����ƶ�3��ʧ
[move layer=8 path=%path time=%t|200][wm]
@endmacro
;����[�����ƶ�3��ʧ path="(100,25,0)" t="300"]


;11����������ͱ��������ֿ�ͬʱ����
@macro name=ͬʱ����
[backlay]
;��������
[image page=back visible=true layer=6 storage=%s1 left=%left1 top=%top1 opacity=255  index=999950]
[image page=back visible=true layer=7 storage=%s2 left=%left2 top=%top2 opacity=255  index=999960]
[image page=back visible=true layer=8 storage=%s3 left=%left3 top=%top3 opacity=255 index=999970]
;����ͼƬ
[image page=back visible=true layer=0 storage=%s]
;���ֿ�
[layopt layer=message2 visible=true page=back]
[position layer=message1 page=back visible=true opacity=255 top=466 left=0 width=200 height=100 marginl=100 margint=22 marginr=53 marginb=0 frame=duihuakuang.png]
[current layer=message1 page=fore]
[stoptrans]
[trans method=crossfade time=%t|100][wt]
[endmacro]
;����[ͬʱ���� s1="test" s2="" s3="" top1=25 left1=120  top2=25 left2=180 top3=25 left3=100 s="beijingtupian"  t="300"]

;12����������ͱ��������ֿ�ͬʱ��ʧ
@macro name=ͬʱ��ʧ
[backlay]
;��������
[freeimage layer=6 page=back]
[freeimage layer=7 page=back]
[freeimage layer=8 page=back]
;����ͼƬ
[image page=back visible=true layer=0 storage="chunhei"]
;���ֿ�
[layopt layer=message2 visible=false page=back]
[position layer=message1 frame="" page=back opacity=0]
[stoptrans]
[trans method=crossfade time=%t|0][wt]
@endmacro
;[ͬʱ��ʧ  t="300"]

;15,�������ֽ���
@macro name=�������ֽ���
[fadeinbgm storage=%s time=%t]
@endmacro
;[�������ֽ��� s="start" t="2000"]

;13,�ر����ֽ���
@macro name=�ر����ֽ���
@fadeoutbgm time=%t|1000
@endmacro
;����[�ر����ֽ��� t="1000"]

;12,������Ч
@macro name=������Ч
[se storage=%s]
[endmacro]
;����[������Ч s="win"]

;13,�ر���Ч
@macro name=�ر���Ч
[stopse]
[endmacro]
;����[�ر���Ч]


;13.4,��Ч1ѭ��
@macro name=��Ч1ѭ��
@fadeinse  storage=%s  time=%t loop=true
@endmacro
;����[��Ч1ѭ�� s="win" t="1000"]

;13.4,��Ч1��ѭ��
@macro name=��Ч1��ѭ��
@fadeinse  storage=%s  time=%t loop=false
@endmacro
;����[��Ч1��ѭ�� s="win" t="1000"]

;13.4,��Ч2ѭ��
@macro name=��Ч2ѭ��
@fadeinse  storage=%s  buf=2 time=%t loop=true
@endmacro
;����[��Ч2ѭ�� s="win" t="1000"]

;13.4,��Ч2��ѭ��
@macro name=��Ч2��ѭ��
@fadeinse  storage=%s  buf=2 time=%t loop=false
@endmacro
;����[��Ч2��ѭ�� s="win" t="1000"]

;;13,�ر���Ч1
@macro name=�ر���Ч1
@fadeoutse time=%t|1000 
@endmacro
;����[�ر���Ч1 t="1000"]

;;13,�ر���Ч2
@macro name=�ر���Ч2
@fadeoutse time=%t|1000 buf=2
@endmacro
;����[�ر���Ч2 t="1000"]

;13,�������ֵ�
;[l]���ȴ�dianji
;[r]������
;[p]����ҳ

;14, ȫ�����ֿ�
@macro name=ȫ�����ֿ�
[backlay]
[position layer=message2 page=back frame="quanpingwenzikuangdiban.png" top="578" left="330" height="200" weight="200" visible=true opacity=255 ]
[current layer=message2 page=back][er]
[sysbutton name="save" normal="save.png" over="save1.png" enterse="yidong" clickse="dianji" x=11 y=10  exp="kag.callExtraConductor('save.ks', '*save')"  entersebuf=3  clicksebuf=3 ]
[sysbutton name="load" normal="load.png" over="load1.png" enterse="yidong" clickse="dianji"  x=95 y=10  exp="kag.callExtraConductor('load.ks', '*load')"  entersebuf=3 clicksebuf=3 ]
[sysbutton name="note"  normal="note.png" over="note1.png" enterse="yidong" clickse="dianji" x=179 y=10 exp="kag.callExtraConductor('note.ks', '*note')" entersebuf=3  clicksebuf=3 ]
[sysbutton name="config" normal="config.png" over="config1.png" enterse="yidong" clickse="dianji" x=263 y=10 exp="kag.callExtraConductor('shezhi.ks', '*shezhi')"  entersebuf=3  clicksebuf=3 ]
[sysbutton name="auto" normal="auto.png" over="auto1.png" enterse="yidong" clickse="dianji" x=347 y=10 exp="kag.onAutoModeMenuItemClick()"  entersebuf=3  clicksebuf=3 ]
[sysbutton name="skip" normal="skip.png" over="skip1.png" enterse="yidong" clickse="dianji" x=431 y=10 exp="kag.onSkipToNextStopMenuItemClick()"  entersebuf=3  clicksebuf=3 ]
[sysbutton name="log"  exp="kag.onShowHistoryMenuItemClick()" normal="log.png" over="log1.png" enterse="yidong" clickse="dianji" x=515 y=10   entersebuf=3  clicksebuf=3 ]
;[rclick call=true target=*youjianquanping enabled=true storage="openx3.ks"]

[layopt layer=message2 visible=true page=back]
[position layer=message1 page=back visible=true opacity=255 top=0 height=570 left=0 width=760 marginl=60 margint=45 marginr=24 marginb=30 frame=quanpingwenzikuang.png  marginl=150 margint=100 marginr=120]
[current layer=message1 page=fore]
[stoptrans]
[trans method=crossfade time=%t|800][wt]
[er]
@endmacro
;[ȫ�����ֿ� t="1000"]��[ȫ�����ֿ�]

;14ȫ�����ֿ����
@macro name=ȫ�����ֿ����
[layopt layer=message2 visible=false page=back]
[position layer=message2 page=back frame="wenzikuangdiban.png"top=466 height=640 left=822 width=960 visible=false opacity=255]
[current layer=message2 page=back][er]
[sysbutton name=save normal="save.png" over="save1.png" enterse="yidong" clickse="dianji" x=26 y=15     exp="kag.callExtraConductor('save.ks', '*save')"  entersebuf=3  clicksebuf=3]
[sysbutton name=load  normal="load.png" over="load1.png" enterse="yidong" clickse="dianji"  x=26 y=36  exp="kag.callExtraConductor('load.ks', '*load')" entersebuf=3  clicksebuf=3]
[sysbutton name=note  normal="note.png" over="note1.png" enterse="yidong" clickse="dianji"  x=26 y=57 exp="kag.callExtraConductor('note.ks', '*note')" entersebuf=3  clicksebuf=3]
[sysbutton name=config  normal="config.png" over="config1.png" enterse="yidong" clickse="dianji"  x=26 y=78 exp="kag.callExtraConductor('shezhi.ks', '*shezhi')" entersebuf=3  clicksebuf=3]
[sysbutton  name=auto normal="auto.png" over="auto1.png" enterse="yidong" clickse="dianji"  x=26 y=99 exp="kag.onAutoModeMenuItemClick()" entersebuf=3  clicksebuf=3]
[sysbutton name=skip  normal="skip.png" over="skip1.png"  enterse="yidong" clickse="dianji"  x=26 y=120 exp="kag.onSkipToNextStopMenuItemClick()" entersebuf=3  clicksebuf=3]
[sysbutton name=log  exp="kag.onShowHistoryMenuItemClick()" normal="log.png" over="log1.png"  enterse="yidong" clickse="dianji" x=26 y=141  entersebuf=3  clicksebuf=3]
[position layer=message1 frame="" page=back opacity=0]
[stoptrans]
[trans method=crossfade time=%t|200][wt]
;[rclick call=true target=*youjian1 enabled=true storage="openx3.ks"]
@endmacro
;����[ȫ�����ֿ���� t=1000]



;14, ȫ�����ֿ�2
@macro name=ȫ�����ֿ�2
[rclick enabled=false]
[backlay]
[layopt layer=message2 visible=false page=back]
[position layer=message1 page=back visible=true opacity=255 top=0 height=640 left=0 width=960 marginl=80 margint=555 marginr=53 marginb=0 frame="duihuakuang2.png"]
[current layer=message1 page=fore]
[er]
[stoptrans]
[trans method=crossfade time=%t|200][wt]
@endmacro
;[ȫ�����ֿ�2 t="1000"]��[ȫ�����ֿ�2]

;14ȫ�����ֿ����2
@macro name=ȫ�����ֿ����2
[rclick enabled=true]
[stoptrans]
[trans method=crossfade time=%t|800][wt]
@endmacro
;����[ȫ�����ֿ����2 t=300]


;15,������
@macro name=������
[quake time=%t|1000]
[wq canskip="false"]
@endmacro
;[������ t="1000"]��[������]

;15,������
;�������ͣ�x,y,z��,z���øģ�ֻ��Ҫע��x,y������Ϳ��ԣ��������Ϊ����ʹ�ã���������ʱ��ֱ�Ӹ�������Ĵ��������Ӧ�޸ľͿ��ԡ�
;[move time=100 path="(100,100,255) (100,160,255) (100,100,255) (100,160,255)" layer=1]

;----------------------------------����Ч��-------------------------------------------------------------
@macro name=��Ч��
[backlay]
[image layer=0 page="back" storage=%s visible=true]
[stoptrans]
[trans method="scroll" time=%t from="left"]
[wt canskip="false"]
@endmacro
;����[��Ч�� s="**" t="1000"]

@macro name=�����˾�����
[backlay]
[image layer=0 page="back" storage=%s visible="true"]
[stoptrans]
[trans method="universal" time=%t rule=%r]
[wt canskip="false"]
@endmacro
;����[�����˾����� s="**" t="1000" r="**"]

@macro name=ˮ��Ч��
[backlay]
[image layer=0 page="back" storage=%s visible="true"]
[stoptrans]
[trans method=ripple time=%t]
[wt canskip="false"]
@endmacro
;����[ˮ��Ч�� s="**" t="1000"]

@macro name=��ҳЧ��һ
[backlay]
[image layer=0 page="back" storage=%s visible="true"]
[stoptrans]
[trans method=rotateswap time=%t]
[wt canskip="false"]
@endmacro
;����[��ҳЧ��һ s="**" t="1000"]

@macro name=��ҳЧ����
[backlay]
[image layer=0 page="back" storage=%s visible="true"]
[stoptrans]
[trans method=turn time=%t]
[wt canskip="false"]
@endmacro
;����[��ҳЧ���� s="**" t="1000"]

@macro name=��ҳЧ����
[backlay]
[image layer=0 page="back" storage=%s visible="true"]
[stoptrans]
[trans method=rotatevanish time=%t]
[wt canskip="false"]
@endmacro
;����[��ҳЧ���� s="**" t="1000"]

@macro name=����Ч��
[backlay]
[image layer=0 page="back" storage=%s visible="true"]
[stoptrans]
[trans method=wave time=%t]
[wt canskip="false"]
@endmacro
;����[����Ч�� s="**" t="1000"]

@macro name=������Ч��
[backlay]
[image layer=0 page="back" storage=%s visible="true"]
[stoptrans]
[trans method=mosaic time=%t]
[wt canskip="false"]
@endmacro
;����[������Ч�� s="**" t="1000"]

@macro name=����Ч��
[backlay]
[image layer=0 page="back" storage=%s visible="true"]
[stoptrans]
[trans method=rotatezoom time=%t]
[wt canskip="false"]
@endmacro
;����[����Ч�� s="**" t="1000"]

@macro name=�ɵ�Ӱ��ʼ
[image layer=stage page="fore" storage=%s visible="true" mcolor="0x000000" mopacity=128]
[oldMovieinit]
@endmacro
;����[�ɵ�Ӱ��ʼ s="**"]

@macro name=�ɵ�Ӱ����
[oldMovieuninit]
@endmacro
;����[�ɵ�Ӱ����]
;----------------------------------����Ч������-------------------------------------------------------------



;16,
[macro name=������ʾ]
[nowait]
;�ı�����/��ʵ����ô�򵥣������������������(���ĺ�Ӣ����ʾ���õ����岻ͬ����˾�����Ҫ�л�)
[font color=0x000000 shadow="false" size=22 bold=true]

;File No.1
[locate x=85 y=95]
;onenter(���ѡ�иõ���)��onleave(����뿪�õ���)ʱ��ִ�еĺ������������iscript���֣�ע�⵽����
[link exp="tf.�浵���=0" target=%target onenter="showsnap(0)" onleave="hidesnap()" clickse="dianji" color="0xfee8ba" enterse="yidong" entersebuf=3  clicksebuf=3]
;��ʾ����"File No.1 "����ͨ��embָ����ʾȡ�õ�"����ʱ��"
;[mappfont storage="font.tft"]
[ch text="      " cond="kag.getBookMarkDate(0)!=''"]
[emb exp="kag.getBookMarkDate(0)"]
[ch text="      " cond="kag.getBookMarkDate(0)!=''"]
;������������ʱ��ʾ���������"----/--/-- --:--"
[ch text="           No Data             " cond="kag.getBookMarkDate(0)==''"]
[endlink]

[locate x=85 y=136]
[link exp="tf.�浵���=1" target=%target onenter="showsnap(1)" onleave="hidesnap()" clickse="dianji" color="0xfee8ba" enterse="yidong" entersebuf=3  clicksebuf=3]
[ch text="      " cond="kag.getBookMarkDate(1)!=''"][emb exp="kag.getBookMarkDate(1)"]
[ch text="      " cond="kag.getBookMarkDate(1)!=''"]
[ch text="           No Data             " cond="kag.getBookMarkDate(1)==''"]
[endlink]


[locate x=85 y=180]
[link exp="tf.�浵���=2" target=%target onenter="showsnap(2)" onleave="hidesnap()" clickse="dianji" color="0xfee8ba" enterse="yidong" entersebuf=3  clicksebuf=3]
[ch text="      " cond="kag.getBookMarkDate(2)!=''"]
[emb exp="kag.getBookMarkDate(2)"]
[ch text="      " cond="kag.getBookMarkDate(2)!=''"]
[ch text="           No Data             " cond="kag.getBookMarkDate(2)==''"]
[endlink]

[locate x=85 y=225]
[link exp="tf.�浵���=3" target=%target onenter="showsnap(3)" onleave="hidesnap()" clickse="dianji" color="0xfee8ba" enterse="yidong" entersebuf=3  clicksebuf=3]
[ch text="      " cond="kag.getBookMarkDate(3)!=''"]
[emb exp="kag.getBookMarkDate(3)"]
[ch text="      " cond="kag.getBookMarkDate(3)!=''"]
[ch text="           No Data             " cond="kag.getBookMarkDate(3)==''"]
[endlink]


[locate x=85 y=270]
[link exp="tf.�浵���=4" target=%target onenter="showsnap(4)" onleave="hidesnap()" clickse="dianji" color="0xfee8ba" enterse="yidong" entersebuf=3  clicksebuf=3]
[ch text="      " cond="kag.getBookMarkDate(4)!=''"]
[emb exp="kag.getBookMarkDate(4)"]
[ch text="      " cond="kag.getBookMarkDate(4)!=''"]
[ch text="           No Data             " cond="kag.getBookMarkDate(4)==''"]
[endlink]


[locate x=85 y=315]
[link exp="tf.�浵���=5" target=%target onenter="showsnap(5)" onleave="hidesnap()" clickse="dianji" color="0xfee8ba" enterse="yidong" entersebuf=3  clicksebuf=3]
[ch text="      " cond="kag.getBookMarkDate(5)!=''"]
[emb exp="kag.getBookMarkDate(5)"]
[ch text="      " cond="kag.getBookMarkDate(5)!=''"]
[ch text="           No Data             " cond="kag.getBookMarkDate(5)==''"]
[endlink]

[locate x=85 y=359]
[link exp="tf.�浵���=6" target=%target onenter="showsnap(6)" onleave="hidesnap()" clickse="dianji" color="0xfee8ba" enterse="yidong" entersebuf=3  clicksebuf=3]
[ch text="      " cond="kag.getBookMarkDate(6)!=''"]
[emb exp="kag.getBookMarkDate(6)"]
[ch text="      " cond="kag.getBookMarkDate(6)!=''"]
[ch text="           No Data             " cond="kag.getBookMarkDate(6)==''"]
[endlink]


[locate x=85 y=403]
[link exp="tf.�浵���=7" target=%target onenter="showsnap(7)" onleave="hidesnap()" clickse="dianji" color="0xfee8ba" enterse="yidong" entersebuf=3  clicksebuf=3]
[ch text="      " cond="kag.getBookMarkDate(7)!=''"]
[emb exp="kag.getBookMarkDate(7)"]
[ch text="      " cond="kag.getBookMarkDate(7)!=''"]
[ch text="           No Data             " cond="kag.getBookMarkDate(7)==''"]
[endlink]


[locate x=85 y=446]
[link exp="tf.�浵���=8" target=%target onenter="showsnap(8)" onleave="hidesnap()" clickse="dianji" color="0xfee8ba" enterse="yidong" entersebuf=3  clicksebuf=3]
[ch text="      " cond="kag.getBookMarkDate(8)!=''"]
[emb exp="kag.getBookMarkDate(8)"]
[ch text="      " cond="kag.getBookMarkDate(8)!=''"]
[ch text="           No Data             " cond="kag.getBookMarkDate(8)==''"]
[endlink]



[endnowait]
;����ʾ��Ϻ󣬽�����Ļ�ԭ����������ʽ�����ضԻ���ʹ�õ����壩
;[mappfont storage="font.tft"]
[font color=0x000000 shadow="false"]
[endmacro]

;16.5
[macro name=������ʾ2]
[nowait]
;�ı�����/��ʵ����ô�򵥣������������������(���ĺ�Ӣ����ʾ���õ����岻ͬ����˾�����Ҫ�л�)
[font color=0x000000 shadow="false" size=22 bold=true]

;File No.1
[locate x=37 y=95]
;onenter(���ѡ�иõ���)��onleave(����뿪�õ���)ʱ��ִ�еĺ������������iscript���֣�ע�⵽����
[link exp="tf.�浵���=9" target=%target onenter="showsnap(9)" onleave="hidesnap()" clickse="dianji" color="0xfee8ba" enterse="yidong"]
;��ʾ����"File No.1 "����ͨ��embָ����ʾȡ�õ�"����ʱ��"
;[mappfont storage="font.tft"]
[ch text="        " cond="kag.getBookMarkDate(9)!=''"]
  [emb exp="kag.getBookMarkDate(9)"]
  [ch text="      " cond="kag.getBookMarkDate(9)!=''"]
;������������ʱ��ʾ���������"----/--/-- --:--"
[ch text="           No Data             " cond="kag.getBookMarkDate(9)==''"]
[endlink]

[locate x=85 y=136]
[link exp="tf.�浵���=10" target=%target onenter="showsnap(10)" onleave="hidesnap()" clickse="dianji" color="0xfee8ba" enterse="yidong" entersebuf=3  clicksebuf=3]
[ch text="      " cond="kag.getBookMarkDate(10)!=''"]
[emb exp="kag.getBookMarkDate(10)"]
[ch text="      " cond="kag.getBookMarkDate(10)!=''"]
[ch text="           No Data             " cond="kag.getBookMarkDate(10)==''"]
[endlink]


[locate x=85 y=180]
[link exp="tf.�浵���=11" target=%target onenter="showsnap(11)" onleave="hidesnap()" clickse="dianji" color="0xfee8ba" enterse="yidong" entersebuf=3  clicksebuf=3]
[ch text="      " cond="kag.getBookMarkDate(11)!=''"]
[emb exp="kag.getBookMarkDate(11)"]
[ch text="      " cond="kag.getBookMarkDate(11)!=''"]
[ch text="           No Data             " cond="kag.getBookMarkDate(11)==''"]
[endlink]

[locate x=85 y=225]
[link exp="tf.�浵���=12" target=%target onenter="showsnap(12)" onleave="hidesnap()" clickse="dianji" color="0xfee8ba" enterse="yidong" entersebuf=3  clicksebuf=3]
[ch text="      " cond="kag.getBookMarkDate(12)!=''"]
[emb exp="kag.getBookMarkDate(12)"]
[ch text="      " cond="kag.getBookMarkDate(12)!=''"]
[ch text="           No Data             " cond="kag.getBookMarkDate(12)==''"]
[endlink]


[locate x=85 y=270]
[link exp="tf.�浵���=13" target=%target onenter="showsnap(13)" onleave="hidesnap()" clickse="dianji" color="0xfee8ba" enterse="yidong" entersebuf=3  clicksebuf=3]
[ch text="      " cond="kag.getBookMarkDate(13)!=''"]
[emb exp="kag.getBookMarkDate(13)"]
[ch text="      " cond="kag.getBookMarkDate(13)!=''"]
[ch text="           No Data             " cond="kag.getBookMarkDate(13)==''"]
[endlink]


[locate x=85 y=315]
[link exp="tf.�浵���=14" target=%target onenter="showsnap(14)" onleave="hidesnap()" clickse="dianji" color="0xfee8ba" enterse="yidong" entersebuf=3  clicksebuf=3]
[ch text="      " cond="kag.getBookMarkDate(14)!=''"]
[emb exp="kag.getBookMarkDate(14)"]
[ch text="      " cond="kag.getBookMarkDate(14)!=''"]
[ch text="           No Data             " cond="kag.getBookMarkDate(14)==''"]
[endlink]

[locate x=85 y=359]
[link exp="tf.�浵���=15" target=%target onenter="showsnap(15)" onleave="hidesnap()" clickse="dianji" color="0xfee8ba" enterse="yidong" entersebuf=3  clicksebuf=3]
[ch text="      " cond="kag.getBookMarkDate(15)!=''"]
[emb exp="kag.getBookMarkDate(15)"]
[ch text="      " cond="kag.getBookMarkDate(15)!=''"]
[ch text="           No Data             " cond="kag.getBookMarkDate(15)==''"]
[endlink]


[locate x=85 y=403]
[link exp="tf.�浵���=16" target=%target onenter="showsnap(16)" onleave="hidesnap()" clickse="dianji" color="0xfee8ba" enterse="yidong" entersebuf=3  clicksebuf=3]
[ch text="      " cond="kag.getBookMarkDate(16)!=''"]
[emb exp="kag.getBookMarkDate(16)"]
[ch text="      " cond="kag.getBookMarkDate(16)!=''"]
[ch text="           No Data             " cond="kag.getBookMarkDate(16)==''"]
[endlink]


[locate x=85 y=446]
[link exp="tf.�浵���=17" target=%target onenter="showsnap(17)" onleave="hidesnap()" clickse="dianji" color="0xfee8ba" enterse="yidong" entersebuf=3  clicksebuf=3]
[ch text="      " cond="kag.getBookMarkDate(17)!=''"]
[emb exp="kag.getBookMarkDate(17)"]
[ch text="      " cond="kag.getBookMarkDate(17)!=''"]
[ch text="           No Data             " cond="kag.getBookMarkDate(17)==''"]
[endlink]

[endnowait]
;����ʾ��Ϻ󣬽�����Ļ�ԭ����������ʽ�����ضԻ���ʹ�õ����壩
;[mappfont storage="font.tft"]
[font color=0x000000 shadow="false"]
[endmacro]
;17
[macro name=ѯ�ʴ���]
;ʹ�²�İ�ť��ʱʧЧ����ʹ�õĻ����²�İ�ť�������Ч�����ºܶ�������Ч��
[locklink]
;�趨�����Ҽ�ʱ�����صı�ǩ��������Ծ���ͨ����Щ%��ʽ�Ķ��������ݵġ�
;����˵��[ѯ�ʴ��� storgae=save.ks ok=*ȷ�� cancle=*����]
;�Ὣ����"save.ks"��"*ȷ��"��"*����"���ݵ���������
;����������£��������͵�ͬ��[rclick enabled="true" jump="true" storage=save.ks target=*����]
[rclick enabled="true" jump="true" storage=%storage target=%cancel]
;��ʾѯ�ʴ���
[backlay]
[layopt layer=message7 page=fore visible=true  opacity=0]
[position layer=message7 left=300 top=215  width=424 height=201 opacity=255 visible=true page=back frame=cdjm]
[current layer="message7" page="back"]
[nowait]
[font color="0xe9f2b7" shadow="false" bold=true size=18]
[locate x=20 y=50]
;mp.text�൱��һ���%text����Ϊexp���Դ�����TJSʽ����˱����д������
[emb exp="mp.text"]
[locate x=200 y=130]
[button normal=yes1 storage=%storage target="%ok" over="yes2" enterse="yidong" clickse="dianji"  entersebuf=3  clicksebuf=3 ]
[locate x=250 y=130]
[button normal=no1 storage=%storage target="%cancel" over="no2" enterse="yidong" clickse="dianji"  entersebuf=3  clicksebuf=3 ]
[endnowait]
[stoptrans]
[trans method="crossfade" time=200]
[wt]
;backlay,trans�Ͱ�ť���÷��Ͳ�������˵�ˣ��Ƶ�first.ks�ｲ�ɡ�
[endmacro]



[macro name=ѯ�ʴ���1]
;ʹ�²�İ�ť��ʱʧЧ����ʹ�õĻ����²�İ�ť�������Ч�����ºܶ�������Ч��
[locklink]
;�趨�����Ҽ�ʱ�����صı�ǩ��������Ծ���ͨ����Щ%��ʽ�Ķ��������ݵġ�
;����˵��[ѯ�ʴ��� storgae=save.ks ok=*ȷ�� cancle=*����]
;�Ὣ����"save.ks"��"*ȷ��"��"*����"���ݵ���������
;����������£��������͵�ͬ��[rclick enabled="true" jump="true" storage=save.ks target=*����]
[rclick enabled="true" jump="true" storage=%storage target=%cancel]
;��ʾѯ�ʴ���
[backlay]
[position layer=message7 left=290 top=200  width=424 height=201 opacity=255 visible=true page=fore frame=qrfhbt]
[current layer="message7" page="fore"]
[nowait]
[font color="0xe9f2b7" shadow="false" size=17]
;[locate x=60 y=70]
;mp.text�൱��һ���%text����Ϊexp���Դ�����TJSʽ����˱����д������
;[emb exp="mp.text"]
[locate x=215 y=120]
[button normal=yes1 storage=%storage target="%ok" over="yes2" enterse="yidong" clickse="dianji" entersebuf=3  clicksebuf=3 ]
[locate x=280 y=120]
[button normal=no1 storage=%storage target="%cancel" over="no2" enterse="yidong" clickse="dianji" entersebuf=3  clicksebuf=3 ]
[endnowait]
;backlay,trans�Ͱ�ť���÷��Ͳ�������˵�ˣ��Ƶ�first.ks�ｲ�ɡ�
[endmacro]


;=========================================================================================================

[iscript]
//=========================================================


// ���ģʽ�ı������
function onSkipModeChange(skipAll) {
dm("111");
	if(!kag.inStable){
		dm("1.5");
		return;
		}
	if(skipAll && !kag.allskip) {
dm("222");
		kag.allskip = true;
		dm("333");
//		kag.current.buttons.skipall.loadButtons("config_skipall_over", "config_skipall_over");
//		kag.current.buttons.skipalrdy.loadButtons("config_skipalrdy_normal", "config_skipalrdy_over");
	} else if(!skipAll && kag.allskip) {
	dm("444");
		kag.allskip = false;
//		kag.current.buttons.skipall.loadButtons("config_skipall_normal", "config_skipall_over");
//		kag.current.buttons.skipalrdy.loadButtons("config_skipalrdy_over", "config_skipalrdy_over");
	}
}

 // skip״̬�ı������
function onSkipStateChange() {
	if(kag.skipMode) {
		kag.cancelSkip();
//		kag.current.buttons.skip.loadButtons("msg_skip_normal", "msg_skip_over");
	} else {
		kag.skipToStop();
//		if(!kag.inStable)
//			kag.current.buttons.skip.loadButtons("msg_skip_over", "msg_skip_over");
	}
}

//ȷ�ϴ浵�ļ��Ƿ����
function checkdata(num)
{
var cd = Storages.isExistentStorage(kag.saveDataLocation+'/data'+num+'.bmp');
return cd;
}
//=========================================================
//ȡ�ô浵�ļ���
function storagedata(num)
{
var cd=kag.saveDataLocation+'/data'+num+'.bmp';
return cd;
}
//=========================================================
//��ʾ��ͼ������
 //   [iscript]
function onLeftClick()
{
  kag.process("youjian.ks", "*youjian2");
}

function onLeftClick1()
{
  kag.process("youjian.ks", "*youjianquanping2");
}
//[endscript]

function cg2(num1,num2)
{
f.cgname1=num1;
f.cgname2=num2;
}

function showsnap(num)
{
    //�������
    kag.fore.layers[4].loadImages(%['storage'=>'empty','visible'=>true,'left'=>410,'top'=>120]);
    //����������ھ����������
    var w;
    var pos;

    //��ʾBookmark��
    //kag.fore.layers[4].font.mapPrerenderedFont("systemfont.tft");//ѡ�����������
      w =kag.fore.layers[4].font.getTextWidth(kag.getBookMarkPageName(num));
      pos=(285-w)\2;
  //    kag.fore.layers[4].drawText(pos,160,kag.getBookMarkPageName(num), 0x336600);

      
    if (checkdata(num)==true) //����������ڣ�������ʾ������[��ͼ����Ϸ�н��е��ĵص���]
   {
     //��ʾ��ͼ
kag.fore.layers[5].loadImages(%['storage'=>kag.getBookMarkFileNameAtNum(num),'visible'=>true,'left'=>544,'top'=>199]);
      //��ʾ�ص�[ȡ����Ϸ�����еı�������]
        tf.place=sf.�ص�[num];
        kag.fore.layers[4].font.mapPrerenderedFont("font.tft");//ѡ�����������
	//kag.fore.layers[4].font.height=10;
        w =kag.fore.layers[4].font.getTextWidth(tf.place);
        pos=(480-w)\2;  
        kag.fore.layers[4].drawText(pos,303,tf.place, 0x000000);  //���  
    }
     //�����ϻ�ԭ������ʽ
      kag.fore.layers[4].font.unmapPrerenderedFont();
}
//=========================================================
//���ؽ�ͼ������
function hidesnap()
{

//���ؽ�ͼ
   kag.fore.layers[5].visible=false;
//��������
   kag.fore.layers[4].visible=false;
}
//=========================================================
[endscript]




;16,�·�֧ѡ��
[macro name=�·�֧ѡ��]
[backlay]
[position layer=message4 left=0  top=0 height=640 left=0 width=960 marginl=0 margint=0 marginr=0 marginb=0 opacity=0 page=fore visible=true frame="mingming"]
[current layer=message4 page=fore][er][nowait]
[locate x=295 y=219][emb exp="mp.sele1"]
[locate x=295 y=269][emb exp="mp.sele2"]
[locate x=295 y=319 cond="mp.sele3 != void"][emb exp="mp.sele3" cond="mp.sele3 != void"]

[position layer=message3  top=0 height=640 left=0 width=960 marginl=0 margint=0 marginr=0 marginb=0 opacity=0 page=fore visible=true]
[current layer=message3 page=fore]
[locate x=240 y=200]
@button normal="xuanxiang1" over="xuanxiang2" target=%sel1  enterse="l4" recthit=true enterse="yidong" clickse="dianji"
[locate x=240 y=250]
@button normal="xuanxiang1" over="xuanxiang2" target=%sel2  enterse="l4" recthit=true enterse="yidong" clickse="dianji"
[locate x=240 y=300]
@button normal="xuanxiang1" over="xuanxiang2" target=%sel3  enterse="l4" enterse="yidong" clickse="dianji" recthit=true cond="mp.sele3 != void"
[s]
[endmacro]

;����[�·�֧ѡ�� sele1="�޵�" sel1=*op4 sele2="Ӣ��" sel2=*op5 sele3="ţ��" sel3=*op6]
;*op4
;[ȥ��3��֧ѡ��]
;[iscript]
;sf.zb=sf.zb+1;
;[endscript]
;aaaaaaaa[p]
;[jump target=*xx]
;*op5
;[ȥ��3��֧ѡ��]
;[iscript]
;sf.zb=sf.zb+5;
;[endscript]
;0bbbbbbbb[p]
;[jump target=*xx]
;*op6
;[ȥ��3��֧ѡ��]
;[iscript]
;sf.zb=sf.zb+10;
;[endscript]
;0cccccc[p]
;[jump target=*xx]
;*xx

;[if exp="sf.zb==1"]
;һ·��[p] 
;[elsif exp="sf.zb>1&&sf.zb<6"] 
;��·��[p]
;[else] 
;��·��[p]
;[endif]



;17,�·�֧ѡ�����
[macro name=�·�֧ѡ�����]
[current layer=message6 page=fore][er]
@move layer=message3 time=200 path="(173,600,255)"
@move layer=message4 time=200 path="(173,600,255)"
[wm]
[backlay]
[current layer=message1 page=fore]

[endmacro]




[macro name= �¹��ܼ���]
;�¹��ܼ���

[image layer=0 page=fore storage=yewairi.jpg left=400 top=400 visible=true afx=400 afy=400]

[layopt layer=0 page=fore time=200 zoom=120]
[wait time=1000][er]
[layopt layer=0 page=fore time=200 zoom=140]
[wait time=1000][er]
[layopt layer=0 page=fore time=200 zoom=160]
[wait time=1000][er]
[layopt layer=0 page=fore time=200 zoom=180]
[wait time=1000][er]
[layopt layer=0 page=fore time=200 zoom=160]
[wait time=200][er]
[layopt layer=0 page=fore time=200 zoom=140]
[wait time=200][er]
[layopt layer=0 page=fore time=200 zoom=120]
[wait time=200][er]
[layopt layer=0 page=fore time=200 zoom=100]
[��Ч1ѭ�� s="xiayu" t="500"]
[��ʾ���ֿ� t=200]
[��ʾ����ͼƬ���� s="xiayu" t="200"]
[��ʾ����1 s="qlyteshu1.png" top=25 left=120 t="300"][p]
;[image layer=6 page=fore storage=qlyteshu1.png left=120 top=300 visible=true afx=50 afy=100]


[�������ֽ��� s="xumuqu" t="1000"]
;*label1|��͸��

[layopt layer=6 opacity=200]
;��͸��
[l][r]

;*label2|��ܞ

[layopt layer=6 reset]
[layopt layer=6 rotate=30]
;��ܞ
[l][r]

[layopt layer=6 afx=left afy=top]
;��ܞԭ�����������磩
[l][r]

[layopt layer=6 afx=100 afy=100]
;��ܞԭ����������ָ����
[l][r]

[layopt layer=6 afx=center afy=center]
;��ܞԭ���������󥿩`�ˑ�����
[l][r]


;*label3|����

[layopt layer=6 reset]
[layopt layer=6 zoom=100 afx=center afy=center]
;����
[l][r]

;*label3|����

[layopt layer=6 reset]
[layopt layer=6 zoom=110 afx=center afy=center]
;����
[l][r]


;*label3.1|����

[layopt layer=6 reset]
[layopt layer=6 zoom=120 afx=center afy=center]
;����
[l][r]

;*label4|X����

[layopt layer=6 reset]
[layopt layer=6 zoomx=200]
;X����
[l][r]

;*label5|�ϳɥ�`��

[layopt layer=6 reset]
[layopt layer=6 type=ltPsDifference5]
;�ϳɥ�`��
[l][r]

;*label6|�����֥�

[layopt layer=6 reset]
[action layer=6 module=LayerVibrateActionModule vibration=20 waitTime=50]
;�����֥�
[l][r]

;*label7|�k���

[layopt layer=6 reset]
[action layer=6 module=LayerJumpActionModule vibration=20 cycle=1000]
;�k���
[l][r]

;*label8|����

[layopt layer=6 reset]
[action layer=6 module=LayerWaveActionModule vibration=20 cycle=1000]
;����
[l][r]

;*label9|ָ���ǶȤ�

[layopt layer=6 reset]
[action layer=6 module=LayerToRotateModule angle=30 time=1000]
;ָ���ǶȤ�
[wact]
[action layer=6 module=LayerToRotateModule angle=-50 time=1000]
;�ƄӤ��Ƥߤ�
[wact]
[action layer=6 module=LayerToRotateModule angle=-0 time=1000]
;�ƥ��Ȥ���
[wact]
[l][r]

;*label10|���뤯��ޤ��

[layopt layer=6 reset]
[action layer=6 module=LayerNormalRotateModule angvel=100]
;���뤯��ޤ��
[l][r]

;*label11|������

[layopt layer=6 reset]
[action layer=6 module=LayerNormalZoomModule zoom=150 time=1000]
;�����򥺩`�ࣨ�r�gָ����
[l][r]

;*label12|���`���ܞ

[layopt layer=6 reset]
[action layer=6 module=LayerVRotateZoomModule angvel=100]
;���`������ä�����ܞ�äݤ��ʤˤ�
[l][r]

;*label13|��͸����

[layopt layer=6 reset]
[action layer=6 module=LayerFadeToModeModule opacity=128 time=1000]
;ָ��������͸���Ȥˣ��r�gָ����
[l][r]

;*label14|�ե��`�ɵ��

[layopt layer=6 reset]
[action layer=6 module=LayerFadeModeModule intime=1000 outtime=1000]
;�ե��`�ɵ��
[l][r]

;*label15|�ӻ��쥤��ƥ���

[layopt layer=6 reset]
[image layer=1 movie=test.mpg alpha=2 loop visible=true dafx=center dafy=center left=400 top=300]
;�ӻ���`��
[l][r]

[layopt layer=6 zoom=50 time=1000]
;���`�����
[l][r]

[layopt layer=6 rotate=120 time=1000]
;��ܞ
[l][r]
[endmacro]


[return]

