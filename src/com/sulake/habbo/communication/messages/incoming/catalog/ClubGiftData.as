package com.sulake.habbo.communication.messages.incoming.catalog
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class ClubGiftData
   {
       
      
      private var var_1302:int;
      
      private var var_2841:Boolean;
      
      private var var_2251:Boolean;
      
      private var var_2840:int;
      
      public function ClubGiftData(param1:IMessageDataWrapper)
      {
         super();
         this.var_1302 = param1.readInteger();
         this.var_2841 = param1.readBoolean();
         this.var_2840 = param1.readInteger();
         this.var_2251 = param1.readBoolean();
      }
      
      public function get offerId() : int
      {
         return this.var_1302;
      }
      
      public function get isVip() : Boolean
      {
         return this.var_2841;
      }
      
      public function get isSelectable() : Boolean
      {
         return this.var_2251;
      }
      
      public function get daysRequired() : int
      {
         return this.var_2840;
      }
   }
}
