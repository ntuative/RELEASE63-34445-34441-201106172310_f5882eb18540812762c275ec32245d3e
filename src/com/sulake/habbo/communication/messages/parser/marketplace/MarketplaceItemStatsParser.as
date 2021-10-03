package com.sulake.habbo.communication.messages.parser.marketplace
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class MarketplaceItemStatsParser implements IMessageParser
   {
       
      
      private var var_2264:int;
      
      private var var_2403:int;
      
      private var var_2400:int;
      
      private var _dayOffsets:Array;
      
      private var var_1998:Array;
      
      private var var_1997:Array;
      
      private var var_2401:int;
      
      private var var_2402:int;
      
      public function MarketplaceItemStatsParser()
      {
         super();
      }
      
      public function get averagePrice() : int
      {
         return this.var_2264;
      }
      
      public function get offerCount() : int
      {
         return this.var_2403;
      }
      
      public function get historyLength() : int
      {
         return this.var_2400;
      }
      
      public function get dayOffsets() : Array
      {
         return this._dayOffsets;
      }
      
      public function get averagePrices() : Array
      {
         return this.var_1998;
      }
      
      public function get soldAmounts() : Array
      {
         return this.var_1997;
      }
      
      public function get furniTypeId() : int
      {
         return this.var_2401;
      }
      
      public function get furniCategoryId() : int
      {
         return this.var_2402;
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this.var_2264 = param1.readInteger();
         this.var_2403 = param1.readInteger();
         this.var_2400 = param1.readInteger();
         var _loc2_:int = param1.readInteger();
         this._dayOffsets = [];
         this.var_1998 = [];
         this.var_1997 = [];
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_)
         {
            this._dayOffsets.push(param1.readInteger());
            this.var_1998.push(param1.readInteger());
            this.var_1997.push(param1.readInteger());
            _loc3_++;
         }
         this.var_2402 = param1.readInteger();
         this.var_2401 = param1.readInteger();
         return true;
      }
   }
}
