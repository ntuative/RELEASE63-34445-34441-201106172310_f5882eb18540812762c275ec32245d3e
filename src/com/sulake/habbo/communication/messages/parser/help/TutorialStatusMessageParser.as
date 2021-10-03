package com.sulake.habbo.communication.messages.parser.help
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class TutorialStatusMessageParser implements IMessageParser
   {
       
      
      private var var_1365:Boolean;
      
      private var var_1366:Boolean;
      
      private var var_1651:Boolean;
      
      public function TutorialStatusMessageParser()
      {
         super();
      }
      
      public function get hasChangedLooks() : Boolean
      {
         return this.var_1365;
      }
      
      public function get hasChangedName() : Boolean
      {
         return this.var_1366;
      }
      
      public function get hasCalledGuideBot() : Boolean
      {
         return this.var_1651;
      }
      
      public function flush() : Boolean
      {
         this.var_1365 = false;
         this.var_1366 = false;
         this.var_1651 = false;
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this.var_1365 = param1.readBoolean();
         this.var_1366 = param1.readBoolean();
         this.var_1651 = param1.readBoolean();
         return true;
      }
   }
}
