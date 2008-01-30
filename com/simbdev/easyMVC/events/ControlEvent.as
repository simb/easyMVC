/*
${copyright}
*/
package com.simbdev.easyMVC.events
{
	import flash.events.Event;
	
	public class ControlEvent extends Event
	{
		public var data:Object;
		public var onSuccess:Function;
		public var onFailure:Function;
		
		public function ControlEvent(type:String, bubbles:Boolean=true, cancelable:Boolean=true){
			super(type, bubbles, cancelable);
		}
		
	}
}