package com.sulake.habbo.communication.messages.parser.handshake
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class UserRightsMessageParser implements IMessageParser
   {
       
      
      private var var_1832:int;
      
      private var var_1833:int;
      
      public function UserRightsMessageParser()
      {
         super();
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this.var_1832 = param1.readInteger();
         this.var_1833 = param1.readInteger();
         return true;
      }
      
      public function get clubLevel() : int
      {
         return this.var_1832;
      }
      
      public function get securityLevel() : int
      {
         return this.var_1833;
      }
   }
}
