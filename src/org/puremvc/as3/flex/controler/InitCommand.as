
package org.puremvc.as3.flex.controler
{	
	import org.puremvc.as3.flex.module.DanmuProxy;
	import org.puremvc.as3.flex.module.vo.DanmuItemVO;
	import org.puremvc.as3.interfaces.INotification;
	import org.puremvc.as3.patterns.command.SimpleCommand;
	
	/**
	 * Initialize the application by adding a few graphic items 
	 * @author dragos
	 * 
	 */
	public class InitCommand extends SimpleCommand
	{
		override public function execute(note:INotification):void
		{
			var danmuProxy:DanmuProxy 	= facade.retrieveProxy( DanmuProxy.NAME ) as DanmuProxy;
			
			for (var i:uint = 0; i < 2; i++) {
				var di:DanmuItemVO = new DanmuItemVO("11", "111111111111", "red", "16", "assets/images/02_s.jpg", Math.random() * 400, Math.random() * 400);
				danmuProxy.addDanMuItem(di)
			}
			
			//			var di:DanmuItemVO 	= new DanmuItemVO("1", "123", "red", "16", "assets/images/01_s.jpg", Math.random() * 400, Math.random() * 400);
			//			danmuProxy.addDanMuItem(di);
			//			
			//			var di2:DanmuItemVO 	= new DanmuItemVO("2", "456", "red", "16", "assets/images/02_s.jpg", Math.random() * 400, Math.random() * 400);
			//			danmuProxy.addDanMuItem(di2);
			
		}
		
	}
}