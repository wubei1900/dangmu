// ActionScript file

package org.puremvc.as3.flex.controler {
	import org.puremvc.as3.flex.module.DanmuProxy;
	import org.puremvc.as3.interfaces.INotification;
	import org.puremvc.as3.patterns.command.SimpleCommand;
	
	public class PrepModelCommand extends SimpleCommand {
		override public function execute(notification:INotification):void {
			facade.registerProxy(new DanmuProxy());
		}
	}
}