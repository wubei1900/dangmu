
package org.puremvc.as3.flex.module {
	
	import org.puremvc.as3.flex.module.vo.DanmuItemVO;
	import org.puremvc.as3.patterns.proxy.Proxy;
	
	public class DanmuProxy extends Proxy {
		public static const NAME:String = "DanmuProxy";
		public static const DANMU_ITEM_ADD:String = NAME + "DANMU_ITEM_ADD";
		
		public function DanmuProxy(data:Object = null) {
			super(NAME, data);
		}
		
		public function addDanMuItem(danmuItemVO:DanmuItemVO):void {
			sendNotification(DANMU_ITEM_ADD, danmuItemVO);
		}
	}
}