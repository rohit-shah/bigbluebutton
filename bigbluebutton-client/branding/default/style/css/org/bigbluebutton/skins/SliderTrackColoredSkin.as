package org.bigbluebutton.skins
{
	import mx.controls.HSlider;
	import mx.events.SliderEvent;
	import mx.skins.halo.ButtonSkin;
	
	public class SliderTrackColoredSkin extends ButtonSkin
	{
		public function SliderTrackColoredSkin()
		{
			super();
			listening=false;
		}
		private var listening:Boolean=false;
		override protected function updateDisplayList(unscaledWidth:Number, unscaledHeight:Number):void
		{
			
			super.updateDisplayList(unscaledWidth, unscaledHeight);
			graphics.clear();
			graphics.beginFill(0xc0c7d5);
			graphics.drawRect(0,unscaledHeight/4,unscaledWidth, unscaledHeight/2);
			graphics.endFill();
			if(this.parent!=null)
			{
				var owner:HSlider=parent.parent as HSlider;
				if(owner!=null)
				{
					if(!listening)
					{
						listening=true;
						owner.addEventListener(SliderEvent.CHANGE, slider_changeHandler);
					}
					graphics.beginFill(0x2ba1fd);
					graphics.drawRect(0,unscaledHeight/4,owner.value/owner.maximum*unscaledWidth, unscaledHeight/2);
					graphics.endFill();
				}
			}
		}
		
		protected function slider_changeHandler(event:SliderEvent):void
		{
			updateDisplayList(width,height);
		}
	}
}