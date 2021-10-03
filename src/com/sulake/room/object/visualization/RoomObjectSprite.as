package com.sulake.room.object.visualization
{
   import flash.display.BitmapData;
   import flash.display.BlendMode;
   import flash.geom.Point;
   
   public final class RoomObjectSprite implements IRoomObjectSprite
   {
      
      private static var var_1265:int = 0;
       
      
      private var var_492:BitmapData = null;
      
      private var var_2637:String = "";
      
      private var var_318:Boolean = true;
      
      private var var_2405:String = "";
      
      private var var_2588:int = 255;
      
      private var _color:int = 16777215;
      
      private var var_2071:String;
      
      private var var_1585:Boolean = false;
      
      private var var_1586:Boolean = false;
      
      private var _offset:Point;
      
      private var var_283:int = 0;
      
      private var _height:int = 0;
      
      private var var_1307:Number = 0;
      
      private var var_2406:Boolean = false;
      
      private var var_2856:Boolean = true;
      
      private var var_2404:Boolean = false;
      
      private var _updateID:int = 0;
      
      private var var_2704:int = 0;
      
      private var var_2857:Array = null;
      
      public function RoomObjectSprite()
      {
         this.var_2071 = BlendMode.NORMAL;
         this._offset = new Point(0,0);
         super();
         this.var_2704 = var_1265++;
      }
      
      public function dispose() : void
      {
         this.var_492 = null;
         this.var_283 = 0;
         this._height = 0;
      }
      
      public function get asset() : BitmapData
      {
         return this.var_492;
      }
      
      public function get assetName() : String
      {
         return this.var_2637;
      }
      
      public function get visible() : Boolean
      {
         return this.var_318;
      }
      
      public function get tag() : String
      {
         return this.var_2405;
      }
      
      public function get alpha() : int
      {
         return this.var_2588;
      }
      
      public function get color() : int
      {
         return this._color;
      }
      
      public function get blendMode() : String
      {
         return this.var_2071;
      }
      
      public function get flipV() : Boolean
      {
         return this.var_1586;
      }
      
      public function get flipH() : Boolean
      {
         return this.var_1585;
      }
      
      public function get offsetX() : int
      {
         return this._offset.x;
      }
      
      public function get offsetY() : int
      {
         return this._offset.y;
      }
      
      public function get width() : int
      {
         return this.var_283;
      }
      
      public function get height() : int
      {
         return this._height;
      }
      
      public function get relativeDepth() : Number
      {
         return this.var_1307;
      }
      
      public function get varyingDepth() : Boolean
      {
         return this.var_2406;
      }
      
      public function get capturesMouse() : Boolean
      {
         return this.var_2856;
      }
      
      public function get clickHandling() : Boolean
      {
         return this.var_2404;
      }
      
      public function get instanceId() : int
      {
         return this.var_2704;
      }
      
      public function get updateId() : int
      {
         return this._updateID;
      }
      
      public function get filters() : Array
      {
         return this.var_2857;
      }
      
      public function set asset(param1:BitmapData) : void
      {
         if(param1 != null)
         {
            this.var_283 = param1.width;
            this._height = param1.height;
         }
         this.var_492 = param1;
         ++this._updateID;
      }
      
      public function set assetName(param1:String) : void
      {
         this.var_2637 = param1;
         ++this._updateID;
      }
      
      public function set visible(param1:Boolean) : void
      {
         this.var_318 = param1;
         ++this._updateID;
      }
      
      public function set tag(param1:String) : void
      {
         this.var_2405 = param1;
         ++this._updateID;
      }
      
      public function set alpha(param1:int) : void
      {
         param1 &= 255;
         this.var_2588 = param1;
         ++this._updateID;
      }
      
      public function set color(param1:int) : void
      {
         param1 &= 16777215;
         this._color = param1;
         ++this._updateID;
      }
      
      public function set blendMode(param1:String) : void
      {
         this.var_2071 = param1;
         ++this._updateID;
      }
      
      public function set filters(param1:Array) : void
      {
         this.var_2857 = param1;
         ++this._updateID;
      }
      
      public function set flipH(param1:Boolean) : void
      {
         this.var_1585 = param1;
         ++this._updateID;
      }
      
      public function set flipV(param1:Boolean) : void
      {
         this.var_1586 = param1;
         ++this._updateID;
      }
      
      public function set offsetX(param1:int) : void
      {
         this._offset.x = param1;
         ++this._updateID;
      }
      
      public function set offsetY(param1:int) : void
      {
         this._offset.y = param1;
         ++this._updateID;
      }
      
      public function set relativeDepth(param1:Number) : void
      {
         this.var_1307 = param1;
         ++this._updateID;
      }
      
      public function set varyingDepth(param1:Boolean) : void
      {
         this.var_2406 = param1;
         ++this._updateID;
      }
      
      public function set capturesMouse(param1:Boolean) : void
      {
         this.var_2856 = param1;
         ++this._updateID;
      }
      
      public function set clickHandling(param1:Boolean) : void
      {
         this.var_2404 = param1;
         ++this._updateID;
      }
   }
}
