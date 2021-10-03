package com.sulake.habbo.room.events
{
   public class RoomEngineObjectPlacedEvent extends RoomEngineObjectEvent
   {
       
      
      private var var_1696:String = "";
      
      private var _x:Number = 0;
      
      private var var_170:Number = 0;
      
      private var var_169:Number = 0;
      
      private var _direction:int = 0;
      
      private var var_2987:Boolean = false;
      
      private var var_2986:Boolean = false;
      
      private var var_2988:Boolean = false;
      
      private var var_2700:String = null;
      
      public function RoomEngineObjectPlacedEvent(param1:String, param2:int, param3:int, param4:int, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:int, param11:Boolean, param12:Boolean, param13:Boolean, param14:String, param15:Boolean = false, param16:Boolean = false)
      {
         super(param1,param2,param3,param4,param5,param15,param16);
         this.var_1696 = param6;
         this._x = param7;
         this.var_170 = param8;
         this.var_169 = param9;
         this._direction = param10;
         this.var_2987 = param11;
         this.var_2986 = param12;
         this.var_2988 = param13;
         this.var_2700 = param14;
      }
      
      public function get wallLocation() : String
      {
         return this.var_1696;
      }
      
      public function get x() : Number
      {
         return this._x;
      }
      
      public function get y() : Number
      {
         return this.var_170;
      }
      
      public function get z() : Number
      {
         return this.var_169;
      }
      
      public function get direction() : int
      {
         return this._direction;
      }
      
      public function get placedInRoom() : Boolean
      {
         return this.var_2987;
      }
      
      public function get placedOnFloor() : Boolean
      {
         return this.var_2986;
      }
      
      public function get placedOnWall() : Boolean
      {
         return this.var_2988;
      }
      
      public function get instanceData() : String
      {
         return this.var_2700;
      }
   }
}
