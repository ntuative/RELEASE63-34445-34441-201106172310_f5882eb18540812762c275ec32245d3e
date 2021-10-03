package com.sulake.habbo.communication.messages.parser.handshake
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class InitCryptoMessageParser implements IMessageParser
   {
       
      
      protected var var_3052:Boolean;
      
      protected var var_2993:Boolean;
      
      protected var var_1411:String;
      
      public function InitCryptoMessageParser()
      {
         super();
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this.var_1411 = param1.readString();
         var _loc2_:int = param1.readInteger();
         this.var_2993 = _loc2_ > 0 ? true : false;
         return true;
      }
      
      public function get token() : String
      {
         return this.var_1411;
      }
      
      public function get isServerEncrypted() : Boolean
      {
         return this.var_2993;
      }
      
      public function get isClientEncrypted() : Boolean
      {
         return this.var_3052;
      }
   }
}
