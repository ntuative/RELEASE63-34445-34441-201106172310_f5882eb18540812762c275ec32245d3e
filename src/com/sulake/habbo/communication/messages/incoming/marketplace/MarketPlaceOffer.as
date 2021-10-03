package com.sulake.habbo.communication.messages.incoming.marketplace
{
   public class MarketPlaceOffer
   {
       
      
      private var var_1302:int;
      
      private var _furniId:int;
      
      private var var_2265:int;
      
      private var var_2211:String;
      
      private var var_1763:int;
      
      private var var_423:int;
      
      private var var_2263:int = -1;
      
      private var var_2264:int;
      
      private var var_1762:int;
      
      public function MarketPlaceOffer(param1:int, param2:int, param3:int, param4:String, param5:int, param6:int, param7:int, param8:int, param9:int = -1)
      {
         super();
         this.var_1302 = param1;
         this._furniId = param2;
         this.var_2265 = param3;
         this.var_2211 = param4;
         this.var_1763 = param5;
         this.var_423 = param6;
         this.var_2263 = param7;
         this.var_2264 = param8;
         this.var_1762 = param9;
      }
      
      public function get offerId() : int
      {
         return this.var_1302;
      }
      
      public function get furniId() : int
      {
         return this._furniId;
      }
      
      public function get furniType() : int
      {
         return this.var_2265;
      }
      
      public function get stuffData() : String
      {
         return this.var_2211;
      }
      
      public function get price() : int
      {
         return this.var_1763;
      }
      
      public function get status() : int
      {
         return this.var_423;
      }
      
      public function get timeLeftMinutes() : int
      {
         return this.var_2263;
      }
      
      public function get averagePrice() : int
      {
         return this.var_2264;
      }
      
      public function get offerCount() : int
      {
         return this.var_1762;
      }
   }
}
