/*
${copyright}
*/
package com.simbdev.easyMVC.business
{
	import mx.rpc.IResponder;
	
	public class RemoteMediator implements IResponder
	{
		private var _caller:Object;
		private var _result:Function;
		private var _fault:Function;
		
		public function RemoteMediator(caller:Object, result:Function, fault:Function){
			_caller = caller;
			_result = result;
			_fault = fault;
		}
		
		public function result(data:Object):void{
			_result.call(_caller,data)
		}
		public function fault(data:Object):void{
			_fault.call(_caller,data);
		}
	}
}