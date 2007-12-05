/*
${copyright}
*/
package com.simbdev.easyMVC.business
{
	import mx.rpc.AbstractService;
	import mx.rpc.soap.WebService;
	
	public class ServiceFactory
	{
		private static var serviceFactory:ServiceFactory;
		
		public function ServiceFactory(){
			if (serviceFactory != null)
				throw new Error("This Object can only be instatiated once");
			else
				serviceFactory = this;
		}
		
		public static function getInstance():ServiceFactory{
			if (serviceFactory == null)
				serviceFactory = new ServiceFactory();
			return serviceFactory;
		}
		
		public function getService(service:String):AbstractService{
			if ( this[service] == null ) {
				throw new Error("The service specified could not be found");
			}else{
				if ( this[service] is WebService)
					this[service].loadWSDL();
				return this[service];
			}			
		}
	}
}