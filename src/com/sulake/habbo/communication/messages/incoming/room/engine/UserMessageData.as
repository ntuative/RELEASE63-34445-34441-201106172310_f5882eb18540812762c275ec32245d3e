package com.sulake.habbo.communication.messages.incoming.room.engine
{
   public class UserMessageData
   {
      
      public static const const_1281:String = "M";
      
      public static const const_1941:String = "F";
       
      
      private var _id:int = 0;
      
      private var _x:Number = 0;
      
      private var var_170:Number = 0;
      
      private var var_169:Number = 0;
      
      private var var_476:int = 0;
      
      private var _name:String = "";
      
      private var var_1681:int = 0;
      
      private var var_954:String = "";
      
      private var _figure:String = "";
      
      private var var_2429:String = "";
      
      private var var_2343:int;
      
      private var var_2345:int = 0;
      
      private var var_2427:String = "";
      
      private var var_2430:int = 0;
      
      private var var_2342:int = 0;
      
      private var var_2428:String = "";
      
      private var var_196:Boolean = false;
      
      public function UserMessageData(param1:int)
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
      
      public function get name() : String
      {
         return this._name;
      }
      
      public function set name(param1:String) : void
      {
         if(!this.var_196)
         {
            this._name = param1;
         }
      }
      
      public function get userType() : int
      {
         return this.var_1681;
      }
      
      public function set userType(param1:int) : void
      {
         if(!this.var_196)
         {
            this.var_1681 = param1;
         }
      }
      
      public function get sex() : String
      {
         return this.var_954;
      }
      
      public function set sex(param1:String) : void
      {
         if(!this.var_196)
         {
            this.var_954 = param1;
         }
      }
      
      public function get figure() : String
      {
         return this._figure;
      }
      
      public function set figure(param1:String) : void
      {
         if(!this.var_196)
         {
            this._figure = param1;
         }
      }
      
      public function get custom() : String
      {
         return this.var_2429;
      }
      
      public function set custom(param1:String) : void
      {
         if(!this.var_196)
         {
            this.var_2429 = param1;
         }
      }
      
      public function get achievementScore() : int
      {
         return this.var_2343;
      }
      
      public function set achievementScore(param1:int) : void
      {
         if(!this.var_196)
         {
            this.var_2343 = param1;
         }
      }
      
      public function get webID() : int
      {
         return this.var_2345;
      }
      
      public function set webID(param1:int) : void
      {
         if(!this.var_196)
         {
            this.var_2345 = param1;
         }
      }
      
      public function get groupID() : String
      {
         return this.var_2427;
      }
      
      public function set groupID(param1:String) : void
      {
         if(!this.var_196)
         {
            this.var_2427 = param1;
         }
      }
      
      public function get groupStatus() : int
      {
         return this.var_2430;
      }
      
      public function set groupStatus(param1:int) : void
      {
         if(!this.var_196)
         {
            this.var_2430 = param1;
         }
      }
      
      public function get xp() : int
      {
         return this.var_2342;
      }
      
      public function set xp(param1:int) : void
      {
         if(!this.var_196)
         {
            this.var_2342 = param1;
         }
      }
      
      public function get subType() : String
      {
         return this.var_2428;
      }
      
      public function set subType(param1:String) : void
      {
         if(!this.var_196)
         {
            this.var_2428 = param1;
         }
      }
   }
}
