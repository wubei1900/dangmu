
package org.puremvc.as3.flex {
	
	import org.puremvc.as3.flex.controler.StartUpCommand;
	import org.puremvc.as3.patterns.facade.Facade;
	
	public class ApplicationFacade extends Facade {
		public static const START_UP:String = "STARTz_UP";
		
		public static function getInstance():ApplicationFacade {
			if (!instance) {
				instance = new ApplicationFacade();
			}
			return instance as ApplicationFacade;
		}
		
		override protected function initializeController():void {
			super.initializeController();
			registerCommand(START_UP, StartUpCommand);
		}
		
		public function startup(app:danmu):void {
			sendNotification(START_UP, app);
		}
	}
}