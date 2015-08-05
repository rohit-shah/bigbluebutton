package org.bigbluebutton.skins
{
	import mx.skins.halo.ButtonSkin;
	
	public class UploadButtonIconSkin extends ButtonSkin
	{
		public function UploadButtonIconSkin()
		{
			super();
		}
		
		override protected function updateDisplayList(w:Number, h:Number):void
		{
			
			super.updateDisplayList(w, h);
			w=h;
			graphics.clear();
			graphics.beginFill(0xffffff);
			graphics.moveTo(0,h);
			graphics.lineTo(0,h-0.25*h);
			graphics.lineTo(0.125*h,h-0.25*h);
			graphics.lineTo(0.125*h,h-0.125*h);
			graphics.lineTo(w-0.125*h,h-0.125*h);
			graphics.lineTo(w-0.125*h,h-0.25*h);
			graphics.lineTo(w,h-0.25*h);
			graphics.lineTo(w,h);
			graphics.moveTo(0.25*w,h-0.25*h);
			graphics.lineTo(0.75*w,h-0.25*h);
			graphics.lineTo(0.75*w,0.3*h);
			graphics.lineTo(0.75*w+0.2*h,0.3*h);
			graphics.lineTo(w/2,0);
			graphics.lineTo(0.25*w-0.2*h,0.3*h);
			graphics.lineTo(0.25*w,0.3*h);
			graphics.lineTo(0.25*w,h-0.25*h);

			graphics.endFill();
		}
		
	}
}