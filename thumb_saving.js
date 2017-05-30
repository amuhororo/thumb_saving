tyrano.plugin.kag.menu.snapSave = function(title, call_back,flag_thumb) {
	
	var that = this;
	
	var thumb_saving = this.kag.variable.tf.thumb_saving; //◆設定呼び出し
	 
	var _current_order_index = that.kag.ftag.current_order_index - 1;
	var _stat = $.extend(true, {}, $.cloneObject(that.kag.stat));
	
	if (typeof flag_thumb == "undefined")flag_thumb = this.kag.config.configThumbnail;
	
	if (flag_thumb == "false") {
		var img_code = "";
		var data = {};
		data.title               = title;
		data.stat                = _stat;
		data.current_order_index = _current_order_index;
		data.save_date           = $.getNowDate() + "\u3000" + $.getNowTime();
		data.img_data            = img_code;
		
		var layer_obj = that.kag.layer.getLayeyHtml();
		data.layer = layer_obj;
		
		that.snap  = $.extend(true, {}, $.cloneObject(data));
		
		if (call_back) call_back()
		
	} else {
		
		$("#tyrano_base").find(".layer_blend_mode").css("display", "none");
		
		setTimeout(function () {
			var completeImage = function (img_code) {
				var data = {};
				data.title               = title;
				data.stat                = _stat;
				data.current_order_index = _current_order_index;
				data.save_date           = $.getNowDate() + "\u3000" + $.getNowTime();
				data.img_data            = img_code;
				var layer_obj = that.kag.layer.getLayeyHtml();
				data.layer = layer_obj;
				that.snap  = $.extend(true, {}, $.cloneObject(data));
				
				if (call_back)call_back()
			};
			
			if (that.kag.stat.save_img != "") {
				var img = new Image;
				img.src    = _stat.save_img;
				img.onload = function () {
					var canvas = document.createElement("canvas");
					canvas.width  = that.kag.config.scWidth;
					canvas.height = that.kag.config.scHeight;
					var ctx = canvas.getContext("2d");
					ctx.drawImage(img, 0, 0);
					var img_code = canvas.toDataURL("image/"+thumb_saving.format,thumb_saving.quality); //◆画像圧縮
				}
			} else
				html2canvas($("#tyrano_base").get(0), {
					onrendered: function (canvas) {
						$("#tyrano_base").find(".layer_blend_mode").css("display", "");
						var img_code = canvas.toDataURL("image/"+thumb_saving.format,thumb_saving.quality); //◆画像圧縮
						completeImage(img_code)
					}
				})
		}, 20)
	}
};
