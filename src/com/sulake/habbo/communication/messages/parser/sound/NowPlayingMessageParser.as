package com.sulake.habbo.communication.messages.parser.sound
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class NowPlayingMessageParser implements IMessageParser
   {
       
      
      private var var_1720:int;
      
      private var _currentPosition:int;
      
      private var var_1722:int;
      
      private var var_1721:int;
      
      private var var_1723:int;
      
      public function NowPlayingMessageParser()
      {
         super();
      }
      
      public function get currentSongId() : int
      {
         return this.var_1720;
      }
      
      public function get currentPosition() : int
      {
         return this._currentPosition;
      }
      
      public function get nextSongId() : int
      {
         return this.var_1722;
      }
      
      public function get nextPosition() : int
      {
         return this.var_1721;
      }
      
      public function get syncCount() : int
      {
         return this.var_1723;
      }
      
      public function flush() : Boolean
      {
         this.var_1720 = -1;
         this._currentPosition = -1;
         this.var_1722 = -1;
         this.var_1721 = -1;
         this.var_1723 = -1;
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this.var_1720 = param1.readInteger();
         this._currentPosition = param1.readInteger();
         this.var_1722 = param1.readInteger();
         this.var_1721 = param1.readInteger();
         this.var_1723 = param1.readInteger();
         return true;
      }
   }
}
