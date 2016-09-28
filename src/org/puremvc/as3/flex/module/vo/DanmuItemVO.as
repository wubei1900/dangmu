
package org.puremvc.as3.flex.module.vo {
	public class DanmuItemVO {
		public var uid:String;
		public var text:String;
		public var color:Object;
		public var ftSize:String;
		public var source:String;
		public var positionX:Number;
		public var positionY:Number;
		
		public function DanmuItemVO(uid:String, text:String, color:Object, ftSize:String, source:String, positionX:Number, positionY:Number) {
			this.uid = uid;
			this.text = text;
			this.color = color;
			this.ftSize = ftSize;
			this.source = source;
			this.positionX = positionX;
			this.positionY = positionY;			
		}
	}
}