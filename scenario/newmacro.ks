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
[position layer=message5 left=200 top=200  width=424 height=201 opacity=0 visible=true page=back frame=cdjm]
[current layer="message5" page="back"]
[nowait]
[font color="0x000000" shadow="false" bold=true size=18]
[locate x=10 y=70] 
;mp.text�൱��һ���%text����Ϊexp���Դ�����TJSʽ����˱����д������
[emb exp="mp.text"]
[locate x=200 y=170]
[button normal=shi storage=%storage target="%ok" over="shiB" enterse="yidong" clickse="dianji"  entersebuf=3  clicksebuf=3 ]
[locate x=250 y=170]
[button normal=fou storage=%storage target="%cancel" over="fouB" enterse="yidong" clickse="dianji"  entersebuf=3  clicksebuf=3 ]
[endnowait]
[trans method="crossfade" time=200]
[wt]
;backlay,trans�Ͱ�ť���÷��Ͳ�������˵�ˣ��Ƶ�first.ks�ｲ�ɡ�
[endmacro]


;-------------------------------------------------------------------------------------------------------------------------------------

[iscript]
function onLeftClick()
{
  kag.process("youjian.ks", "*youjian2");
}

function onLeftClick1()
{
  kag.process("youjian.ks", "*youjianquanping2");
}

function checkdata(num)
{
var cd = Storages.isExistentStorage(kag.saveDataLocation+'/data'+num+'.bmp');
return cd;
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

[endscript]
[return]