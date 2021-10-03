package com.sulake.habbo.communication.messages.incoming.moderation
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class CfhChatlogData
   {
       
      
      private var var_2063:int;
      
      private var var_2838:int;
      
      private var var_1557:int;
      
      private var var_2270:int;
      
      private var var_130:RoomChatlogData;
      
      public function CfhChatlogData(param1:IMessageDataWrapper)
      {
         super();
         this.var_2063 = param1.readInteger();
         this.var_2838 = param1.readInteger();
         this.var_1557 = param1.readInteger();
         this.var_2270 = param1.readInteger();
         this.var_130 = new RoomChatlogData(param1);
         Logger.log("READ CFHCHATLOGDATA: callId: " + this.var_2063);
      }
      
      public function get callId() : int
      {
         return this.var_2063;
      }
      
      public function get callerUserId() : int
      {
         return this.var_2838;
      }
      
      public function get reportedUserId() : int
      {
         return this.var_1557;
      }
      
      public function get chatRecordId() : int
      {
         return this.var_2270;
      }
      
      public function get room() : RoomChatlogData
      {
         return this.var_130;
      }
   }
}
