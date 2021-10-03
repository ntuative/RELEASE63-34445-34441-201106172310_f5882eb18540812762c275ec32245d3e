package com.sulake.habbo.communication.messages.incoming.inventory.trading
{
   public class ItemDataStructure
   {
       
      
      private var var_2261:int;
      
      private var var_1563:String;
      
      private var var_2608:int;
      
      private var var_2611:int;
      
      private var _category:int;
      
      private var var_2211:String;
      
      private var var_1655:int;
      
      private var var_2607:int;
      
      private var var_2609:int;
      
      private var var_2606:int;
      
      private var var_2610:int;
      
      private var var_2612:Boolean;
      
      private var var_3062:int;
      
      public function ItemDataStructure(param1:int, param2:String, param3:int, param4:int, param5:int, param6:String, param7:int, param8:int, param9:int, param10:int, param11:int, param12:Boolean)
      {
         super();
         this.var_2261 = param1;
         this.var_1563 = param2;
         this.var_2608 = param3;
         this.var_2611 = param4;
         this._category = param5;
         this.var_2211 = param6;
         this.var_1655 = param7;
         this.var_2607 = param8;
         this.var_2609 = param9;
         this.var_2606 = param10;
         this.var_2610 = param11;
         this.var_2612 = param12;
      }
      
      public function get itemID() : int
      {
         return this.var_2261;
      }
      
      public function get itemType() : String
      {
         return this.var_1563;
      }
      
      public function get roomItemID() : int
      {
         return this.var_2608;
      }
      
      public function get itemTypeID() : int
      {
         return this.var_2611;
      }
      
      public function get category() : int
      {
         return this._category;
      }
      
      public function get stuffData() : String
      {
         return this.var_2211;
      }
      
      public function get extra() : int
      {
         return this.var_1655;
      }
      
      public function get timeToExpiration() : int
      {
         return this.var_2607;
      }
      
      public function get creationDay() : int
      {
         return this.var_2609;
      }
      
      public function get creationMonth() : int
      {
         return this.var_2606;
      }
      
      public function get creationYear() : int
      {
         return this.var_2610;
      }
      
      public function get groupable() : Boolean
      {
         return this.var_2612;
      }
      
      public function get songID() : int
      {
         return this.var_1655;
      }
   }
}
