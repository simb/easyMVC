/*
this file is meant to be a template for your own modellocator in your applciation.  feel free to copy this over and start adding your variables.
*/
package com.simbdev.easyMVC.model
{
	import mx.collections.ArrayCollection;
	
	public class ModelLocator
	{
		private static var modelLocator:ModelLocator;
		
		public function ModelLocator(){
			if (modelLocator != null)
				throw new Error("This Object can only be instatiated once");
		}
		
		public static function getInstance():ModelLocator{
			if ( modelLocator == null )
				modelLocator = new ModelLocator();
			return modelLocator;
		}
		
		/*In our modellocator we keep track of our application wide data.
		[Bindable]
		public var someData:ArrayCollection;
		*/
	}
}
