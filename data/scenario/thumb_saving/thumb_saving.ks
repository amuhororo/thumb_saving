;【セーブサムネイル画像軽量化プラグイン Ver.2】2016/7/18 更新
; by hororo http://hororo.wp.xdomain.jp/
;
; ＜機能＞
;　　セーブ時のキャプチャ画像フォーマットを変更し、セーブデータを軽量化します。
;　　
; ＜注意点＞
;　　スクリプトのエンジン本体を改造していますので、他verでの動作は保証できません。
;　　ブラウザやOSにによっては使えない可能性があります。
;
;　　動作確認
;　　ティラノスクリプトVer421
;　　Widows10、Android 6.0/4.2.2、いずれも Google Chrome 51.0
;
; ＜使い方＞
;  　最初にthumb_saving.ksファイルを読み込んでください。
;  　[call storage="thumb_saving/thumb_saving.ks"]
;
;
[iscript]
tf.thumb_saving = {

// ◆ サムネイル画像のフォーマット。"jpeg" or "webp" ※webpはGoogleChrome、Windows版のみ対応です。
"format" : "jpeg"
,
// ◆ サムネイル画像の圧縮率(0.0～1.0) 小さいほど画像が軽く粗くなります。
"quality" : 0.7

};
tf.thumb_saving = thumb_saving；
[endscript]
[loadjs storage="thumb_saving/thumb_saving.js"]
[return]
