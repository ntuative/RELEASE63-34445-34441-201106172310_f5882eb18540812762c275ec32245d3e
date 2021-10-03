package com.sulake.habbo.communication.messages.incoming.inventory.furni
{
   public class FurniData
   {
       
      
      private var var_2306:int;
      
      private var var_1563:String;
      
      private var _objId:int;
      
      private var var_1926:int;
      
      private var _category:int;
      
      private var var_2211:String;
      
      private var var_2902:Boolean;
      
      private var var_2901:Boolean;
      
      private var var_2903:Boolean;
      
      private var var_2489:Boolean;
      
      private var var_2579:int;
      
      private var var_1655:int;
      
      private var var_1993:String = "";
      
      private var var_1861:int = -1;
      
      public function FurniData(param1:int, param2:String, param3:int, param4:int, param5:int, param6:String, param7:Boolean, param8:Boolean, param9:Boolean, param10:Boolean, param11:int)
      {
         super();
         this.var_2306 = param1;
         this.var_1563 = param2;
         this._objId = param3;
         this.var_1926 = param4;
         this._category = param5;
         this.var_2211 = param6;
         this.var_2902 = param7;
         this.var_2901 = param8;
         this.var_2903 = param9;
         this.var_2489 = param10;
         this.var_2579 = param11;
      }
      
      public function setExtraData(param1:String, param2:int) : void
      {
         this.var_1993 = param1;
         this.var_1655 = param2;
      }
      
      public function get stripId() : int
      {
         return this.var_2306;
      }
      
      public function get itemType() : String
      {
         return this.var_1563;
      }
      
      public function get objId() : int
      {
         return this._objId;
      }
      
      public function get classId() : int
      {
         return this.var_1926;
      }
      
      public function get category() : int
      {
         return this._category;
      }
      
      public function get stuffData() : String
      {
         return this.var_2211;
      }
      
      public function get isGroupable() : Boolean
      {
         return this.var_2902;
      }
      
      public function get isRecyclable() : Boolean
      {
         return this.var_2901;
      }
      
      public function get isTradeable() : Boolean
      {
         return this.var_2903;
      }
      
      public function get isSellable() : Boolean
      {
         return this.var_2489;
      }
      
      public function get expiryTime() : int
      {
         return this.var_2579;
      }
      
      public function get slotId() : String
      {
         return this.var_1993;
      }
      
      public function get songId() : int
      {
         return this.var_1861;
      }
      
      public function get extra() : int
      {
         return this.var_1655;
      }
   }
}
