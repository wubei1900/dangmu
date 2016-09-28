
package org.puremvc.as3.flex.view {
	import flash.events.Event;
	
	import mx.effects.AnimateProperty;
	import mx.events.FlexEvent;
	
	import org.puremvc.as3.flex.module.vo.DanmuItemVO;
	import org.puremvc.as3.flex.view.components.DanmuItem;
	import org.puremvc.as3.flex.view.components.VideoShow;
	import org.puremvc.as3.patterns.mediator.Mediator;
	
	public class DanmuItemMediator extends Mediator {
		public static const NAME:String = "DanmuItemMediator";
		public var danmuItem:DanmuItemVO;
		public function DanmuItemMediator(viewComponent:Object, danmuItem:DanmuItemVO) {
			super(NAME, viewComponent);
			this.danmuItem = danmuItem;
//			view.addEventListener( FlexEvent.CREATION_COMPLETE, init );
//			trace("register");
		}
		
		override public function onRegister():void {
			view.addEventListener( FlexEvent.CREATION_COMPLETE, init );
			trace("register");
		}
		
		private function init(event:FlexEvent):void {
			invalidateDanmuItem();
			view.addEventListener(DanmuItem.OBJECT_DOWN, handleOnDown);
			view.addEventListener(DanmuItem.OBJECT_OVER, handleOnOver);
			view.addEventListener(DanmuItem.OBJECT_OUT, handleOnOut);
		}
		
		private function handleOnDown(event:Event):void {
			trace("down");
//			view.dmAnimate.pause();
		}
		
		private function handleOnOver(event:Event):void {
			trace("over");
//			view.dmAnimate.pause();
		}
		
		private function handleOnOut(event:Event):void {
			trace("out");
//			view.dmAnimate.play();
		}
		
		private function invalidateDanmuItem():void {
			
			var videoShow:VideoShow = new VideoShow();
			var msgWidth:Number = view.group.width;
			var vsWidth:Number = videoShow.width;
			var dmWidth:Number = msgWidth + vsWidth;
			
//			view.img.source = danmuItem.source;
			view.lbText.text = danmuItem.text;
			view.lbText.setStyle("fontSize", danmuItem.ftSize);
			view.lbText.setStyle("color", danmuItem.color);
			view.x = dmWidth;
			view.y = danmuItem.positionY;
			trace(view.group.width);
			setAnimate(dmWidth, msgWidth);
		}
		
		private function setAnimate(dmWidth:Number, msgWidth:Number):void {
			view.dmAnimate.fromValue = dmWidth;
			view.dmAnimate.toValue = -msgWidth;
			view.dmAnimate.duration = 10000;
			view.dmAnimate.play();
//			view.automationValue = animate;
		}
		
		public function get view():DanmuItem {
			return viewComponent as DanmuItem;
		}
		
		override public function onRemove():void {
		}
		
		
	}
}