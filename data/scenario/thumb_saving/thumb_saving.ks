;【セーブサムネイル画像軽量化プラグイン】
; by hororo http://hororo.wp.xdomain.jp/
;
; ＜機能＞
;　　セーブ時のキャプチャ画像を軽量化します。
;　　
; ＜注意点＞
;　　スクリプトのエンジン本体を改造していますので、他verでの動作は保証できません。
;　　ブラウザやOSにによっては使えない可能性があります。
;
;　　動作確認
;　　ティラノスクリプトVer420
;　　Widows10、Android 6.0/4.2.2、いずれも Google Chrome 51.0
;
; ＜使い方＞
;  　最初にthumb_saving.ksファイルを読み込んでください。
;  　[call storage="thumb_saving/thumb_saving.ks"]
;
;
[iscript]

// ◆ サムネイル画像の圧縮率(0.0～1.0) 小さいほど画像が軽く粗くなります。
tf.thumb_saving = 0.7;

[endscript]
[loadjs storage="thumb_saving/thumb_saving.js"]
[return]
