package org.bigbluebutton.common
{
	import mx.controls.HSlider;
	import mx.core.UIComponent;
	
	public class BBBHSlider extends HSlider
	{
		public function BBBHSlider()
		{
			super();
			thumbSetted=false;
		}
		
		private var thumbSetted:Boolean;
		
		override protected function updateDisplayList(unscaledWidth:Number, unscaledHeight:Number):void
		{
			super.updateDisplayList(unscaledWidth, unscaledHeight);
			if(!thumbSetted)
			{
				for (var i:int = 0; i < numChildren; i++) 
				{
					if(getChildAt(i) is UIComponent)
					{
						for (var j:int = 0; j < UIComponent(getChildAt(i)).numChildren; j++) 
						{
							
							if(UIComponent(getChildAt(i)).getChildAt(j)is UIComponent)
							{
								for (var k:int = 0; k < UIComponent(UIComponent(getChildAt(i)).getChildAt(j)).numChildren; k++) 
								{
									if(UIComponent(UIComponent(getChildAt(i)).getChildAt(j)).getChildAt(k).name.indexOf('SliderThumb')==0)
									{
										thumbSetted=true;
										UIComponent(UIComponent(getChildAt(i)).getChildAt(j)).getChildAt(k).height=UIComponent(UIComponent(getChildAt(i)).getChildAt(j)).getChildAt(k).height*1.5;
										UIComponent(UIComponent(getChildAt(i)).getChildAt(j)).getChildAt(k).width=UIComponent(UIComponent(getChildAt(i)).getChildAt(j)).getChildAt(k).height*2;
									}
									
									
								}
							}
							
						}
					}
					
				}
				
				super.updateDisplayList(unscaledWidth, unscaledHeight);
			}
			
		}
		
		
	}
}