package com.sulake.habbo.communication.messages.parser.notifications
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class PetLevelNotificationParser implements IMessageParser
   {
       
      
      private var var_1927:int;
      
      private var var_2839:String;
      
      private var var_1284:int;
      
      private var var_1141:int;
      
      private var var_1713:int;
      
      private var _color:String;
      
      public function PetLevelNotificationParser()
      {
         super();
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this.var_1927 = param1.readInteger();
         this.var_2839 = param1.readString();
         this.var_1284 = param1.readInteger();
         this.var_1141 = param1.readInteger();
         this.var_1713 = param1.readInteger();
         this._color = param1.readString();
         return true;
      }
      
      public function get petId() : int
      {
         return this.var_1927;
      }
      
      public function get petName() : String
      {
         return this.var_2839;
      }
      
      public function get level() : int
      {
         return this.var_1284;
      }
      
      public function get petType() : int
      {
         return this.var_1141;
      }
      
      public function get breed() : int
      {
         return this.var_1713;
      }
      
      public function get color() : String
      {
         return this._color;
      }
   }
}
