package com.sulake.habbo.communication.messages.parser.navigator
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   import com.sulake.habbo.communication.messages.incoming.navigator.OfficialRoomsData;
   
   public class OfficialRoomsMessageParser implements IMessageParser
   {
       
      
      private var _data:OfficialRoomsData;
      
      public function OfficialRoomsMessageParser()
      {
         super();
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this._data = new OfficialRoomsData(param1);
         return true;
      }
      
      public function get data() : OfficialRoomsData
      {
         return this._data;
      }
   }
}
