package com.sulake.habbo.communication.messages.parser.marketplace
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class MarketplaceConfigurationParser implements IMessageParser
   {
       
      
      private var var_1573:Boolean;
      
      private var var_2947:int;
      
      private var var_2128:int;
      
      private var var_2129:int;
      
      private var var_2946:int;
      
      private var var_2949:int;
      
      private var var_2948:int;
      
      private var var_2437:int;
      
      public function MarketplaceConfigurationParser()
      {
         super();
      }
      
      public function get isEnabled() : Boolean
      {
         return this.var_1573;
      }
      
      public function get commission() : int
      {
         return this.var_2947;
      }
      
      public function get tokenBatchPrice() : int
      {
         return this.var_2128;
      }
      
      public function get tokenBatchSize() : int
      {
         return this.var_2129;
      }
      
      public function get offerMinPrice() : int
      {
         return this.var_2949;
      }
      
      public function get offerMaxPrice() : int
      {
         return this.var_2946;
      }
      
      public function get expirationHours() : int
      {
         return this.var_2948;
      }
      
      public function get averagePricePeriod() : int
      {
         return this.var_2437;
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this.var_1573 = param1.readBoolean();
         this.var_2947 = param1.readInteger();
         this.var_2128 = param1.readInteger();
         this.var_2129 = param1.readInteger();
         this.var_2949 = param1.readInteger();
         this.var_2946 = param1.readInteger();
         this.var_2948 = param1.readInteger();
         this.var_2437 = param1.readInteger();
         return true;
      }
   }
}
