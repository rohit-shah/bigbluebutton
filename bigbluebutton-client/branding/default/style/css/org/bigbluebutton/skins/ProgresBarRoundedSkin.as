package org.bigbluebutton.skins
{
	import mx.skins.halo.ProgressBarSkin;
	import mx.utils.ColorUtil;
	
	public class ProgresBarRoundedSkin extends ProgressBarSkin
	{
		public function ProgresBarRoundedSkin()
		{
			super();
		}
		
		override protected function updateDisplayList(w:Number, h:Number):void
		{
			super.updateDisplayList(w, h);
			
			// User-defined styles
			var barColorStyle:* = getStyle("barColor");
			var barColor:uint = styleManager.isValidStyleValue(barColorStyle) ?
				barColorStyle :
				getStyle("themeColor");
			
			var barColor0:Number = ColorUtil.adjustBrightness2(barColor, 40);
			
			// default fill color for halo uses theme color
			var fillColors:Array = [ barColor0, barColor ]; 
			
			graphics.clear();
			
			// glow
			drawRoundRect(
				0, 0, w, h, 5,
				fillColors, 0.5,
				verticalGradientMatrix(0, 0, w - 2, h - 2));
			
			// fill
			drawRoundRect(
				1, 1, w - 2, h - 2, 5,
				fillColors, 1,
				verticalGradientMatrix(0, 0, w - 2, h - 2));
		}
	}
}