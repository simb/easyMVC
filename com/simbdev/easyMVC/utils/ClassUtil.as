package com.simbdev.easyMVC.utils
{
	import mx.utils.ObjectUtil;
	import flash.utils.describeType;
	
	public class ClassUtil
	{
		
		public static function typeOf(obj:Object):String{
			var desc:String = flash.utils.getQualifiedClassName(obj);
			var a:Array = desc.split(/::/);
			return a[a.length-1];
		}
	}
}