*start
[rclick enabled="true" jump="true" storage="history.ks" target=*return]
[history enabled=false output=false]
[backlay]
[layopt layer=message5 page=fore visible=true  opacity=0]
[image layer=9 page="back" storage="bjlog" visible="true" left=0 top=0]
[layopt layer=message1 visible=false page=back]
[layopt layer=message2 visible=false page=back]
[layopt layer="message5" visible="true" page="back" left=0 top=0]

;����������ʾλ��

[position layer=message5 page=back visible=true opacity=255 top=0 height=640 left=0 width=960  marginl=45 margint=121 marginr=0 marginb=0 frame="bjlog"]
[current layer="message5" page="back"]
[er]

;����ҳ��
[eval exp="tf.����=kag.historyLayer.dataPos-1"]
[eval exp="tf.ҳ��=tf.����\10"]
[eval exp="tf.ҳ��++" cond="tf.����%10>0"]
[eval exp="tf.ѭ��=10"]

[eval exp="tf.��ǰҳ=tf.ҳ��"]

;��ʱ��ʾ���һҳ
*ѭ��һ
[nowait]
;��ʷ��¼����ͷ����ʾ
[if exp="kag.historyLayer.dataPos-tf.ѭ��>=0"]
;һ��Ի�����
;[font  color="0x000000" shadow="false"]
;������ʾ����
;[font color="0x000000" shadow="false" cond="kag.historyLayer.data[kag.historyLayer.dataPos-tf.ѭ��].substring(0,1)=='��'"]
;@link exp="kag.historyLayer.actionInfo[0][0][0].action.exp"
[emb exp="kag.historyLayer.data[kag.historyLayer.dataPos-tf.ѭ��]"]
;[endlink]
[r]
[endif]
[eval exp="tf.ѭ��--"]

[jump target=*ѭ��һ cond="tf.ѭ��>0"]
[endnowait]
[locate x=761 y=3]
[button normal=shang target=*ˢ�»��� exp="tf.��ǰҳ--" cond="tf.��ǰҳ>1"]
[locate x=781 y=460]

[button normal=back1 over=back2 storage="history.ks" target=*return]
[trans method="crossfade" time=200]
[wt]
[s]

*ˢ�»���
[current layer="message5" page="fore"]
[er]
[eval exp="tf.ѭ��=10"]

*ѭ����
[nowait]

;--------------------------------------------------------
;���ǵ�һҳ�����
[if exp="tf.��ǰҳ!=1"]

;��ʷ��¼����ͷ����ʾ
[if exp="kag.historyLayer.dataPos-tf.ѭ��-(tf.ҳ��-tf.��ǰҳ)*10>=0"]
;һ��Ի�����
;[font  color="0x000000" shadow="false"]
;������ʾ����
;[font color="0x000000" shadow="false" cond="kag.historyLayer.data[kag.historyLayer.dataPos-tf.ѭ��-(tf.ҳ��-tf.��ǰҳ)*10].substring(0,1)=='��'"]
[emb exp="kag.historyLayer.data[kag.historyLayer.dataPos-tf.ѭ��-(tf.ҳ��-tf.��ǰҳ)*10]"][r]
[endif]

[endif]
;--------------------------------------------------------
;��һҳ�����
[if exp="tf.��ǰҳ==1"]
;һ��Ի�����
;[font color="0x000000" shadow="false"]
;[font color="0x000000" shadow="false"  cond="kag.historyLayer.data[10-tf.ѭ��].substring(0,1)=='��'"]
[emb exp="kag.historyLayer.data[10-tf.ѭ��]"][r]
[endif]
;--------------------------------------------------------


[eval exp="tf.ѭ��--"]

[jump target=*ѭ���� cond="tf.ѭ��>0"]
[endnowait]

[locate x=761 y=3]
[button normal=shang target=*ˢ�»��� exp="tf.��ǰҳ--" cond="tf.��ǰҳ>1"]
[locate x=761 y=387]
[button normal=xia target=*ˢ�»��� exp="tf.��ǰҳ++" cond="tf.��ǰҳ<tf.ҳ��"]
[locate x=781 y=460]
[button normal=back1 over=back2 storage="history.ks" target=*return]
[s]



*return
[history enabled=true output=true]
[backlay]
[freeimage layer=9 page=back]
[layopt layer="message5" visible="false" page="back"]
[layopt layer=message2 visible=true page=back]
[layopt layer=message1 visible=true page=back]
[locklink]
[stoptrans]
[trans method="crossfade" time=500]
[wt]
[current layer="message1" page="fore"]
[rclick enabled="true" call="true" storage="youjian.ks" target=*youjian1]
;����ͼ����ȡ��
;��������ϵͳ(SAVE,LOAD,OPTION)�ķ��ض�������*return��ǩ���������ȡ��ֻҪ�趨һ��
;����������ȡ��������һһ��Ӧ�ģ����������趨�˶��˷�����Ϸ�ı�ǩ��ÿ����ĩβ��Ҫȡ������
;������һ���ٽ������˵��ͻ����
[return]