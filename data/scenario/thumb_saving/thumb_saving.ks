;【セーブサムネイル画像軽量化プラグイン】
; by hororo http://hororo.wp.xdomain.jp/
;
; ＜機能＞
;　　セーブ時のキャプチャ画像を軽量化します。。
;　　
;
; ＜注意点＞
;　　スクリプトのエンジン本体を改造していますので、他verでの動作は保証できません。
;　　ブラウザによっては反映されない可能性があります。
;
;　　ティラノスクリプトVer420 で動作確認。
;
; ＜使い方＞
;  　最初にthumb_saving.ksファイルを読み込んでください。
;  　[call storage="thumb_saving/thumb_saving.ks"]
;
;
[iscript]


// ◆ サムネイル画像の圧縮率(0.0～1.0) 小さいほど画像が軽く粗くなります。
tf.thumbcomp = 0.6;

[endscript]
[loadjs storage="thumb_saving/thumb_saving.js"]
[return]