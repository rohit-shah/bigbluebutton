package org.bigbluebutton.skins
{
	import mx.skins.halo.ProgressTrackSkin;
	import mx.utils.ColorUtil;
	
	public class ProgressTrackRoundedSkin extends ProgressTrackSkin
	{
		public function ProgressTrackRoundedSkin()
		{
			super();
		}
		
		override protected function updateDisplayList(w:Number, h:Number):void
		{
			super.updateDisplayList(w, h);
			
			// User-defined styles
			var borderColor:uint = getStyle("borderColor");
			var fillColors:Array = getStyle("trackColors") as Array;
			styleManager.getColorNames(fillColors);
			
			// ProgressTrack-unique styles
			var borderColorDrk1:Number =
				ColorUtil.adjustBrightness2(borderColor, -30);
			
			graphics.clear();
			
			drawRoundRect(
				0, 0, w, h, 5, 
				[ borderColorDrk1, borderColor ], 1,
				verticalGradientMatrix(0, 0, w, h));
			
			drawRoundRect(
				1, 1, w - 2, h - 2, 5,
				fillColors, 1,
				verticalGradientMatrix(1, 1, w - 2, h - 2));
		}
	}
}