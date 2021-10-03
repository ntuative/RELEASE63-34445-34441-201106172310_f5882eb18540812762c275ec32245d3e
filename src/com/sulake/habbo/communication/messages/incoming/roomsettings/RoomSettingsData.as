package com.sulake.habbo.communication.messages.incoming.roomsettings
{
   public class RoomSettingsData
   {
      
      public static const const_620:int = 0;
      
      public static const const_209:int = 1;
      
      public static const const_130:int = 2;
      
      public static const const_925:Array = ["open","closed","password"];
       
      
      private var _roomId:int;
      
      private var _name:String;
      
      private var var_2069:String;
      
      private var var_2517:int;
      
      private var var_1448:int;
      
      private var var_2515:int;
      
      private var var_2513:int;
      
      private var var_908:Array;
      
      private var var_2520:Array;
      
      private var var_2522:int;
      
      private var var_2514:Boolean;
      
      private var var_2523:Boolean;
      
      private var var_2521:Boolean;
      
      private var var_2518:Boolean;
      
      private var var_2519:int;
      
      private var var_2516:int;
      
      public function RoomSettingsData()
      {
         super();
      }
      
      public function get allowPets() : Boolean
      {
         return this.var_2514;
      }
      
      public function set allowPets(param1:Boolean) : void
      {
         this.var_2514 = param1;
      }
      
      public function get allowFoodConsume() : Boolean
      {
         return this.var_2523;
      }
      
      public function set allowFoodConsume(param1:Boolean) : void
      {
         this.var_2523 = param1;
      }
      
      public function get allowWalkThrough() : Boolean
      {
         return this.var_2521;
      }
      
      public function set allowWalkThrough(param1:Boolean) : void
      {
         this.var_2521 = param1;
      }
      
      public function get hideWalls() : Boolean
      {
         return this.var_2518;
      }
      
      public function set hideWalls(param1:Boolean) : void
      {
         this.var_2518 = param1;
      }
      
      public function get wallThickness() : int
      {
         return this.var_2519;
      }
      
      public function set wallThickness(param1:int) : void
      {
         this.var_2519 = param1;
      }
      
      public function get floorThickness() : int
      {
         return this.var_2516;
      }
      
      public function set floorThickness(param1:int) : void
      {
         this.var_2516 = param1;
      }
      
      public function get roomId() : int
      {
         return this._roomId;
      }
      
      public function set roomId(param1:int) : void
      {
         this._roomId = param1;
      }
      
      public function get name() : String
      {
         return this._name;
      }
      
      public function set name(param1:String) : void
      {
         this._name = param1;
      }
      
      public function get description() : String
      {
         return this.var_2069;
      }
      
      public function set description(param1:String) : void
      {
         this.var_2069 = param1;
      }
      
      public function get doorMode() : int
      {
         return this.var_2517;
      }
      
      public function set doorMode(param1:int) : void
      {
         this.var_2517 = param1;
      }
      
      public function get categoryId() : int
      {
         return this.var_1448;
      }
      
      public function set categoryId(param1:int) : void
      {
         this.var_1448 = param1;
      }
      
      public function get maximumVisitors() : int
      {
         return this.var_2515;
      }
      
      public function set maximumVisitors(param1:int) : void
      {
         this.var_2515 = param1;
      }
      
      public function get maximumVisitorsLimit() : int
      {
         return this.var_2513;
      }
      
      public function set maximumVisitorsLimit(param1:int) : void
      {
         this.var_2513 = param1;
      }
      
      public function get tags() : Array
      {
         return this.var_908;
      }
      
      public function set tags(param1:Array) : void
      {
         this.var_908 = param1;
      }
      
      public function get controllers() : Array
      {
         return this.var_2520;
      }
      
      public function set controllers(param1:Array) : void
      {
         this.var_2520 = param1;
      }
      
      public function get controllerCount() : int
      {
         return this.var_2522;
      }
      
      public function set controllerCount(param1:int) : void
      {
         this.var_2522 = param1;
      }
   }
}
