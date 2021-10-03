package com.sulake.habbo.communication.messages.incoming.room.engine
{
   public class ObjectMessageData
   {
       
      
      private var _id:int = 0;
      
      private var _x:Number = 0;
      
      private var var_170:Number = 0;
      
      private var var_169:Number = 0;
      
      private var var_476:int = 0;
      
      private var var_541:int = 0;
      
      private var var_652:int = 0;
      
      private var _type:int = 0;
      
      private var var_3063:String = "";
      
      private var var_1655:int = -1;
      
      private var _state:int = 0;
      
      private var _data:String = "";
      
      private var var_2579:int = 0;
      
      private var var_2580:Boolean;
      
      private var var_2673:String = null;
      
      private var var_196:Boolean = false;
      
      public function ObjectMessageData(param1:int)
      {
         super();
         this._id = param1;
      }
      
      public function setReadOnly() : void
      {
         this.var_196 = true;
      }
      
      public function get id() : int
      {
         return this._id;
      }
      
      public function get x() : Number
      {
         return this._x;
      }
      
      public function set x(param1:Number) : void
      {
         if(!this.var_196)
         {
            this._x = param1;
         }
      }
      
      public function get y() : Number
      {
         return this.var_170;
      }
      
      public function set y(param1:Number) : void
      {
         if(!this.var_196)
         {
            this.var_170 = param1;
         }
      }
      
      public function get z() : Number
      {
         return this.var_169;
      }
      
      public function set z(param1:Number) : void
      {
         if(!this.var_196)
         {
            this.var_169 = param1;
         }
      }
      
      public function get dir() : int
      {
         return this.var_476;
      }
      
      public function set dir(param1:int) : void
      {
         if(!this.var_196)
         {
            this.var_476 = param1;
         }
      }
      
      public function get sizeX() : int
      {
         return this.var_541;
      }
      
      public function set sizeX(param1:int) : void
      {
         if(!this.var_196)
         {
            this.var_541 = param1;
         }
      }
      
      public function get sizeY() : int
      {
         return this.var_652;
      }
      
      public function set sizeY(param1:int) : void
      {
         if(!this.var_196)
         {
            this.var_652 = param1;
         }
      }
      
      public function get type() : int
      {
         return this._type;
      }
      
      public function set type(param1:int) : void
      {
         if(!this.var_196)
         {
            this._type = param1;
         }
      }
      
      public function get state() : int
      {
         return this._state;
      }
      
      public function set state(param1:int) : void
      {
         if(!this.var_196)
         {
            this._state = param1;
         }
      }
      
      public function get data() : String
      {
         return this._data;
      }
      
      public function set data(param1:String) : void
      {
         if(!this.var_196)
         {
            this._data = param1;
         }
      }
      
      public function get staticClass() : String
      {
         return this.var_2673;
      }
      
      public function set staticClass(param1:String) : void
      {
         if(!this.var_196)
         {
            this.var_2673 = param1;
         }
      }
      
      public function get extra() : int
      {
         return this.var_1655;
      }
      
      public function set extra(param1:int) : void
      {
         if(!this.var_196)
         {
            this.var_1655 = param1;
         }
      }
      
      public function get expiryTime() : int
      {
         return this.var_2579;
      }
      
      public function set expiryTime(param1:int) : void
      {
         if(!this.var_196)
         {
            this.var_2579 = param1;
         }
      }
      
      public function get knownAsUsable() : Boolean
      {
         return this.var_2580;
      }
      
      public function set knownAsUsable(param1:Boolean) : void
      {
         this.var_2580 = param1;
      }
   }
}
