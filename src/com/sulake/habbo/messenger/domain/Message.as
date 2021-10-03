package com.sulake.habbo.messenger.domain
{
   public class Message
   {
      
      public static const const_829:int = 1;
      
      public static const const_940:int = 2;
      
      public static const const_1011:int = 3;
      
      public static const const_1225:int = 4;
      
      public static const const_888:int = 5;
      
      public static const const_1279:int = 6;
       
      
      private var _type:int;
      
      private var var_1247:int;
      
      private var var_2392:String;
      
      private var var_2391:String;
      
      public function Message(param1:int, param2:int, param3:String, param4:String)
      {
         super();
         this._type = param1;
         this.var_1247 = param2;
         this.var_2392 = param3;
         this.var_2391 = param4;
      }
      
      public function get messageText() : String
      {
         return this.var_2392;
      }
      
      public function get time() : String
      {
         return this.var_2391;
      }
      
      public function get senderId() : int
      {
         return this.var_1247;
      }
      
      public function get type() : int
      {
         return this._type;
      }
   }
}
