package com.sulake.habbo.room.utils
{
   import com.sulake.room.utils.IVector3d;
   import com.sulake.room.utils.Vector3d;
   
   public class RoomCamera
   {
      
      private static const const_1478:Number = 12;
       
      
      private var var_2457:int = -1;
      
      private var var_2465:int = -2;
      
      private var var_218:Vector3d = null;
      
      private var var_1199:Number = 0;
      
      private var var_1479:Number = 0;
      
      private var var_1825:Boolean = false;
      
      private var var_197:Vector3d = null;
      
      private var var_1827:Vector3d;
      
      private var var_2463:Boolean = false;
      
      private var var_2462:Boolean = false;
      
      private var var_2460:Boolean = false;
      
      private var var_2464:Boolean = false;
      
      private var var_2458:int = 0;
      
      private var var_2459:int = 0;
      
      private var _scale:int = 0;
      
      private var var_2456:int = 0;
      
      private var var_2461:int = 0;
      
      private var var_1737:int = -1;
      
      private var var_1824:int = 0;
      
      private var var_1826:Boolean = false;
      
      public function RoomCamera()
      {
         this.var_1827 = new Vector3d();
         super();
      }
      
      public function get location() : IVector3d
      {
         return this.var_197;
      }
      
      public function get targetId() : int
      {
         return this.var_2457;
      }
      
      public function get targetCategory() : int
      {
         return this.var_2465;
      }
      
      public function get targetObjectLoc() : IVector3d
      {
         return this.var_1827;
      }
      
      public function get limitedLocationX() : Boolean
      {
         return this.var_2463;
      }
      
      public function get limitedLocationY() : Boolean
      {
         return this.var_2462;
      }
      
      public function get centeredLocX() : Boolean
      {
         return this.var_2460;
      }
      
      public function get centeredLocY() : Boolean
      {
         return this.var_2464;
      }
      
      public function get screenWd() : int
      {
         return this.var_2458;
      }
      
      public function get screenHt() : int
      {
         return this.var_2459;
      }
      
      public function get scale() : int
      {
         return this._scale;
      }
      
      public function get roomWd() : int
      {
         return this.var_2456;
      }
      
      public function get roomHt() : int
      {
         return this.var_2461;
      }
      
      public function get geometryUpdateId() : int
      {
         return this.var_1737;
      }
      
      public function get isMoving() : Boolean
      {
         if(this.var_218 != null && this.var_197 != null)
         {
            return true;
         }
         return false;
      }
      
      public function set targetId(param1:int) : void
      {
         this.var_2457 = param1;
      }
      
      public function set targetObjectLoc(param1:IVector3d) : void
      {
         this.var_1827.assign(param1);
      }
      
      public function set targetCategory(param1:int) : void
      {
         this.var_2465 = param1;
      }
      
      public function set limitedLocationX(param1:Boolean) : void
      {
         this.var_2463 = param1;
      }
      
      public function set limitedLocationY(param1:Boolean) : void
      {
         this.var_2462 = param1;
      }
      
      public function set centeredLocX(param1:Boolean) : void
      {
         this.var_2460 = param1;
      }
      
      public function set centeredLocY(param1:Boolean) : void
      {
         this.var_2464 = param1;
      }
      
      public function set screenWd(param1:int) : void
      {
         this.var_2458 = param1;
      }
      
      public function set screenHt(param1:int) : void
      {
         this.var_2459 = param1;
      }
      
      public function set scale(param1:int) : void
      {
         if(this._scale != param1)
         {
            this._scale = param1;
            this.var_1826 = true;
         }
      }
      
      public function set roomWd(param1:int) : void
      {
         this.var_2456 = param1;
      }
      
      public function set roomHt(param1:int) : void
      {
         this.var_2461 = param1;
      }
      
      public function set geometryUpdateId(param1:int) : void
      {
         this.var_1737 = param1;
      }
      
      public function set target(param1:IVector3d) : void
      {
         var _loc2_:* = null;
         if(this.var_218 == null)
         {
            this.var_218 = new Vector3d();
         }
         if(this.var_218.x != param1.x || this.var_218.y != param1.y || this.var_218.z != param1.z)
         {
            this.var_218.assign(param1);
            this.var_1824 = 0;
            _loc2_ = Vector3d.dif(this.var_218,this.var_197);
            this.var_1199 = _loc2_.length;
            this.var_1825 = true;
         }
      }
      
      public function dispose() : void
      {
         this.var_218 = null;
         this.var_197 = null;
      }
      
      public function initializeLocation(param1:IVector3d) : void
      {
         if(this.var_197 != null)
         {
            return;
         }
         this.var_197 = new Vector3d();
         this.var_197.assign(param1);
      }
      
      public function resetLocation(param1:IVector3d) : void
      {
         if(this.var_197 == null)
         {
            this.var_197 = new Vector3d();
         }
         this.var_197.assign(param1);
      }
      
      public function update(param1:uint, param2:Number) : void
      {
         var _loc3_:* = null;
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         if(this.var_218 != null && this.var_197 != null)
         {
            ++this.var_1824;
            if(this.var_1826)
            {
               this.var_1826 = false;
               this.var_197 = this.var_218;
               this.var_218 = null;
               return;
            }
            _loc3_ = Vector3d.dif(this.var_218,this.var_197);
            if(_loc3_.length > this.var_1199)
            {
               this.var_1199 = _loc3_.length;
            }
            if(_loc3_.length <= param2)
            {
               this.var_197 = this.var_218;
               this.var_218 = null;
               this.var_1479 = 0;
            }
            else
            {
               _loc4_ = Math.sin(0 * _loc3_.length / this.var_1199);
               _loc5_ = param2 * 0.5;
               _loc6_ = this.var_1199 / const_1478;
               _loc7_ = _loc5_ + (_loc6_ - _loc5_) * _loc4_;
               if(this.var_1825)
               {
                  if(_loc7_ < this.var_1479)
                  {
                     _loc7_ = this.var_1479;
                     if(_loc7_ > _loc3_.length)
                     {
                        _loc7_ = _loc3_.length;
                     }
                  }
                  else
                  {
                     this.var_1825 = false;
                  }
               }
               this.var_1479 = _loc7_;
               _loc3_.div(_loc3_.length);
               _loc3_.mul(_loc7_);
               this.var_197 = Vector3d.sum(this.var_197,_loc3_);
            }
         }
      }
      
      public function reset() : void
      {
         this.var_1737 = -1;
      }
   }
}
