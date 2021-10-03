package com.sulake.habbo.communication.messages.parser.catalog
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   import com.sulake.habbo.communication.messages.incoming.catalog.ClubOfferData;
   
   public class HabboExtendClubOfferMessageParser implements IMessageParser
   {
       
      
      private var var_105:ClubOfferData;
      
      private var var_1588:int;
      
      public function HabboExtendClubOfferMessageParser()
      {
         super();
      }
      
      public function flush() : Boolean
      {
         this.var_105 = null;
         this.var_1588 = null;
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this.var_105 = new ClubOfferData(param1);
         this.var_1588 = param1.readInteger();
         return true;
      }
      
      public function offer() : ClubOfferData
      {
         return this.var_105;
      }
      
      public function pageId() : int
      {
         return this.var_1588;
      }
   }
}
