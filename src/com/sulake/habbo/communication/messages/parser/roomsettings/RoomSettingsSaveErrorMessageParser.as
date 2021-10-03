package com.sulake.habbo.communication.messages.parser.roomsettings
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class RoomSettingsSaveErrorMessageParser implements IMessageParser
   {
      
      public static const const_2092:int = 1;
      
      public static const const_2180:int = 2;
      
      public static const const_2295:int = 3;
      
      public static const const_2126:int = 4;
      
      public static const const_1966:int = 5;
      
      public static const const_2224:int = 6;
      
      public static const const_1889:int = 7;
      
      public static const const_1936:int = 8;
      
      public static const const_2239:int = 9;
      
      public static const const_1787:int = 10;
      
      public static const const_1879:int = 11;
      
      public static const const_1981:int = 12;
       
      
      private var _roomId:int;
      
      private var var_1761:int;
      
      private var var_713:String;
      
      public function RoomSettingsSaveErrorMessageParser()
      {
         super();
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this._roomId = param1.readInteger();
         this.var_1761 = param1.readInteger();
         this.var_713 = param1.readString();
         return true;
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function get roomId() : int
      {
         return this._roomId;
      }
      
      public function get errorCode() : int
      {
         return this.var_1761;
      }
      
      public function get info() : String
      {
         return this.var_713;
      }
   }
}
