;【セーブサムネイル画像軽量化プラグイン Ver.3.01】
; 2017/5/30更新　by hororo http://hororo.wp.xdomain.jp/
[iscript]
if(mp.format=="jpeg"||mp.format=="webp") var format = mp.format ;
else var format = "jpeg" ;
if(mp.qlty>=0.1||mp.qlty<=1.0) var qlty = mp.qlty ;
else var qlty = 0.7 ;
tf.thumb_saving = {"format" : format , "qlty" : qlty};
[endscript]
[loadjs storage="plugin/thumb_saving/thumb_saving.js"]
[return]
