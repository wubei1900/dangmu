// ActionScript file

package org.puremvc.as3.flex.controler {
	import org.puremvc.as3.flex.view.VideoShowMediator;
	import org.puremvc.as3.interfaces.INotification;
	import org.puremvc.as3.patterns.command.SimpleCommand;
	
	public class PrepViewCommand extends SimpleCommand {
		override public function execute(notification:INotification):void {
			var app:danmu = notification.getBody() as danmu;
			facade.registerMediator(new VideoShowMediator(app.VideoShow));
		}
	}
}

