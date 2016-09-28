// ActionScript file

package com.roguedevelopment.objectHandles {
	import flash.events.Event;

	public class ObjectHandleEvent extends Event {
		public static const MOUSE_DOWN:String = "objectMouseDown";
		public static const MOUSE_OVER:String = "objectMouseOver";
		public static const MOUSE_OUT:String = "objectMouseOut";
		
		public function ObjectHandleEvent(type:String) {
			super(type);
		}
	}
}