package com.sulake.habbo.communication.messages.incoming.catalog
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class ChargeInfo
   {
       
      
      private var var_2311:int;
      
      private var var_2639:int;
      
      private var var_1305:int;
      
      private var var_1304:int;
      
      private var var_2027:int;
      
      private var var_2638:int;
      
      public function ChargeInfo(param1:IMessageDataWrapper)
      {
         super();
         this.var_2311 = param1.readInteger();
         this.var_2639 = param1.readInteger();
         this.var_1305 = param1.readInteger();
         this.var_1304 = param1.readInteger();
         this.var_2027 = param1.readInteger();
         this.var_2638 = param1.readInteger();
      }
      
      public function get stuffId() : int
      {
         return this.var_2311;
      }
      
      public function get charges() : int
      {
         return this.var_2639;
      }
      
      public function get priceInCredits() : int
      {
         return this.var_1305;
      }
      
      public function get priceInActivityPoints() : int
      {
         return this.var_1304;
      }
      
      public function get chargePatchSize() : int
      {
         return this.var_2638;
      }
      
      public function get activityPointType() : int
      {
         return this.var_2027;
      }
   }
}
