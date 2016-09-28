// ActionScript file

package com.roguedevelopment.objectHandles {
	import flash.events.Event;
	import flash.events.MouseEvent;
	
	import mx.containers.Canvas;
	import mx.core.UIComponent;
	import mx.events.FlexEvent;
	
	[Event(name="objectMouseDown", type="com.roguedevelopment.objectHandles.ObjectHandleEvent")]
	[Event(name="objectMouseOver", type="com.roguedevelopment.objectHandles.ObjectHandleEvent")]
	[Event(name="objectMouseOut", type="com.roguedevelopment.objectHandles.ObjectHandleEvent")]
	
	public class ObjectHandle extends Canvas {
		public function ObjectHandle() {
			addEventListener(FlexEvent.CREATION_COMPLETE, init);
		}
		
		protected function init(event:FlexEvent):void {
			addEventListener(MouseEvent.MOUSE_DOWN, handleMouseDown);
			addEventListener(MouseEvent.MOUSE_OVER, handleMouseOver);
			addEventListener(MouseEvent.MOUSE_OUT, handleMouseOut);
		}
		
		protected function handleMouseDown(event:Event):void {
			dispatchEvent(new ObjectHandleEvent(ObjectHandleEvent.MOUSE_DOWN));
		}
		
		protected function handleMouseOver(event:Event):void {
			dispatchEvent(new ObjectHandleEvent(ObjectHandleEvent.MOUSE_OVER));
		}
		
		protected function handleMouseOut(event:Event):void {
			dispatchEvent(new ObjectHandleEvent(ObjectHandleEvent.MOUSE_OUT));
		}
		
	}
}