package org.bigbluebutton.skins
{
	import mx.skins.halo.ButtonSkin;
	
	public class SliderThumbRoundedSkin extends ButtonSkin
	{
		public function SliderThumbRoundedSkin()
		{
			super();
		}
		
		
		
		
		override protected function updateDisplayList(unscaledWidth:Number, unscaledHeight:Number):void
		{
			//unscaledWidth=unscaledHeight*2;
			super.updateDisplayList(unscaledWidth, unscaledHeight);
			graphics.clear();
			graphics.beginFill(0xdfe3ea);
			graphics.drawRoundRect(0,0,unscaledWidth,unscaledHeight,unscaledHeight,unscaledHeight);
			graphics.endFill();
			graphics.beginFill(0xffffff);
			graphics.drawRoundRect(1,1,unscaledWidth-2,unscaledHeight-2,unscaledHeight,unscaledHeight);
			graphics.endFill();			
			graphics.beginFill(0x0f5489);
			graphics.drawRect(unscaledWidth/2-0.5,unscaledHeight/4,1,unscaledHeight/2);
			graphics.drawRect(unscaledWidth/2-2.5,unscaledHeight/4+unscaledHeight/2*0.2,1,unscaledHeight/2*0.6);
			graphics.drawRect(unscaledWidth/2+1.5,unscaledHeight/4+unscaledHeight/2*0.2,1,unscaledHeight/2*0.6);

			graphics.endFill();
		}
		
	}
}