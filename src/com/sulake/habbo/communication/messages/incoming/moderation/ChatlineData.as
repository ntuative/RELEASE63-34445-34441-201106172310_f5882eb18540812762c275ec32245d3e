package com.sulake.habbo.communication.messages.incoming.moderation
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class ChatlineData
   {
       
      
      private var var_2965:int;
      
      private var var_2966:int;
      
      private var var_2967:int;
      
      private var var_2964:String;
      
      private var var_1766:String;
      
      public function ChatlineData(param1:IMessageDataWrapper)
      {
         super();
         this.var_2965 = param1.readInteger();
         this.var_2966 = param1.readInteger();
         this.var_2967 = param1.readInteger();
         this.var_2964 = param1.readString();
         this.var_1766 = param1.readString();
      }
      
      public function get hour() : int
      {
         return this.var_2965;
      }
      
      public function get minute() : int
      {
         return this.var_2966;
      }
      
      public function get chatterId() : int
      {
         return this.var_2967;
      }
      
      public function get chatterName() : String
      {
         return this.var_2964;
      }
      
      public function get msg() : String
      {
         return this.var_1766;
      }
   }
}
