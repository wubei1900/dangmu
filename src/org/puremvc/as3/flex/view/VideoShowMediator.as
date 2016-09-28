
package org.puremvc.as3.flex.view {
	
	import org.puremvc.as3.flex.module.DanmuProxy;
	import org.puremvc.as3.flex.module.vo.DanmuItemVO;
	import org.puremvc.as3.flex.view.components.DanmuItem;
	import org.puremvc.as3.flex.view.components.VideoShow;
	import org.puremvc.as3.interfaces.INotification;
	import org.puremvc.as3.patterns.mediator.Mediator;
	import org.puremvc.as3.flex.view.DanmuItemMediator;
	
	public class VideoShowMediator extends Mediator {
		public static const NAME:String = "VideoShowMediator";
		public function VideoShowMediator(viewComponent:Object = null) {
			super(NAME, viewComponent);
		}
		
		override public function listNotificationInterests():Array {
			return [DanmuProxy.DANMU_ITEM_ADD];
		}
		
		override public function handleNotification(note:INotification):void {
			switch(note.getName()) 	{
				case DanmuProxy.DANMU_ITEM_ADD: {
					var di:DanmuItemVO = note.getBody() as DanmuItemVO;
					var diView:DanmuItem = new DanmuItem();
					var diMediator:DanmuItemMediator = new DanmuItemMediator(diView, di);
					trace(diMediator, diView, di.source);
					facade.registerMediator(diMediator);
					videoShow.addElement(diView);
				}break;
			}
		}
		
		public function get videoShow():VideoShow {
			return viewComponent as VideoShow;
		}	
	}
}