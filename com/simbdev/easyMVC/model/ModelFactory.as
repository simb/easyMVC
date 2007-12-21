package com.simbdev.easyMVC.model
{
	import com.simbdev.easyMVC.utils.ClassUtil;
	
	import flash.utils.Dictionary;
	
	public class ModelFactory
	{
		private static var models:Dictionary = new Dictionary();
		
		public function ModelFactory() {
			var className:String = ClassUtil.typeOf(this);
			if ( models[className] != null){
				throw new Error("This model: "+ className + " can only be instatiated once");
			}else{
				trace ( className );
				models[className] = this;
			}
		}
		
		public static function getModel(key:String):ModelFactory{
			if ( models[key] == null ) 
				throw new Error("This model: '" + key + "' has not been instatiated yet");
			else
				return models[key]
		}
	}
}