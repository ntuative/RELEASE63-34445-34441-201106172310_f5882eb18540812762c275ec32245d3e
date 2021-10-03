package com.sulake.habbo.communication.messages.parser.handshake
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class UserObjectMessageParser implements IMessageParser
   {
       
      
      private var _id:int;
      
      private var _name:String;
      
      private var _figure:String;
      
      private var var_954:String;
      
      private var var_2794:String;
      
      private var var_1754:String;
      
      private var var_2792:int;
      
      private var var_2791:String;
      
      private var var_2793:int;
      
      private var var_2795:int;
      
      private var var_2258:int;
      
      private var var_1204:int;
      
      private var var_787:int;
      
      private var var_2468:int;
      
      public function UserObjectMessageParser()
      {
         super();
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this._id = int(param1.readString());
         this._name = param1.readString();
         this._figure = param1.readString();
         this.var_954 = param1.readString();
         this.var_2794 = param1.readString();
         this.var_1754 = param1.readString();
         this.var_2792 = param1.readInteger();
         this.var_2791 = param1.readString();
         this.var_2793 = param1.readInteger();
         this.var_2795 = param1.readInteger();
         this.var_2258 = param1.readInteger();
         this.var_1204 = param1.readInteger();
         this.var_787 = param1.readInteger();
         this.var_2468 = param1.readInteger();
         return true;
      }
      
      public function get id() : int
      {
         return this._id;
      }
      
      public function get name() : String
      {
         return this._name;
      }
      
      public function get figure() : String
      {
         return this._figure;
      }
      
      public function get sex() : String
      {
         return this.var_954;
      }
      
      public function get customData() : String
      {
         return this.var_2794;
      }
      
      public function get realName() : String
      {
         return this.var_1754;
      }
      
      public function get tickets() : int
      {
         return this.var_2792;
      }
      
      public function get poolFigure() : String
      {
         return this.var_2791;
      }
      
      public function get photoFilm() : int
      {
         return this.var_2793;
      }
      
      public function get directMail() : int
      {
         return this.var_2795;
      }
      
      public function get respectTotal() : int
      {
         return this.var_2258;
      }
      
      public function get respectLeft() : int
      {
         return this.var_1204;
      }
      
      public function get petRespectLeft() : int
      {
         return this.var_787;
      }
      
      public function get identityId() : int
      {
         return this.var_2468;
      }
   }
}
