package com.sulake.habbo.communication.messages.incoming.room.engine
{
   public class UserUpdateMessageData
   {
       
      
      private var _id:int = 0;
      
      private var _x:Number = 0;
      
      private var var_170:Number = 0;
      
      private var var_169:Number = 0;
      
      private var var_2473:Number = 0;
      
      private var var_2474:Number = 0;
      
      private var var_2472:Number = 0;
      
      private var var_2470:Number = 0;
      
      private var var_476:int = 0;
      
      private var var_2471:int = 0;
      
      private var var_353:Array;
      
      private var var_2469:Boolean = false;
      
      public function UserUpdateMessageData(param1:int, param2:Number, param3:Number, param4:Number, param5:Number, param6:int, param7:int, param8:Number, param9:Number, param10:Number, param11:Boolean, param12:Array)
      {
         this.var_353 = [];
         super();
         this._id = param1;
         this._x = param2;
         this.var_170 = param3;
         this.var_169 = param4;
         this.var_2473 = param5;
         this.var_476 = param6;
         this.var_2471 = param7;
         this.var_2474 = param8;
         this.var_2472 = param9;
         this.var_2470 = param10;
         this.var_2469 = param11;
         this.var_353 = param12;
      }
      
      public function get id() : int
      {
         return this._id;
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
      
      public function get localZ() : Number
      {
         return this.var_2473;
      }
      
      public function get targetX() : Number
      {
         return this.var_2474;
      }
      
      public function get targetY() : Number
      {
         return this.var_2472;
      }
      
      public function get targetZ() : Number
      {
         return this.var_2470;
      }
      
      public function get dir() : int
      {
         return this.var_476;
      }
      
      public function get dirHead() : int
      {
         return this.var_2471;
      }
      
      public function get isMoving() : Boolean
      {
         return this.var_2469;
      }
      
      public function get actions() : Array
      {
         return this.var_353.slice();
      }
   }
}
