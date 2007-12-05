/*
${copyright}
*/
package com.simbdev.easyMVC.control {
	import mx.core.Application;
	import com.simbdev.easyMVC.utils.ClassUtil;
	import flash.utils.Dictionary;
	
	public class ControllerFactory {
		
		private static var controllers:Dictionary = new Dictionary();
	
		public function ControllerFactory(){
			var className:String = ClassUtil.typeOf(this);
			if ( controllers[className] != null){
				throw new Error("This Object can only be instatiated once");
			}else{
				trace ( className );
				controllers[className] = this;
			}
		}
		
		public static function getController(key:String):ControllerFactory{
			if ( controllers[key] == null ) 
				throw new Error("This Object '" + key + "' has not been instatiated yet");
			else
				return controllers[key]
		}
		
		protected function addEventHandler(event:String, func:Function):void{
			Application.application.addEventListener(event,func);
		}
		
	}
}