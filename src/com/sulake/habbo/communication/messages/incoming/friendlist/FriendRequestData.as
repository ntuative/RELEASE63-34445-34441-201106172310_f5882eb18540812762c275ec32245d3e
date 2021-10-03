package com.sulake.habbo.communication.messages.incoming.friendlist
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class FriendRequestData
   {
       
      
      private var var_1336:int;
      
      private var var_2414:String;
      
      private var var_2416:int;
      
      private var var_2415:String;
      
      public function FriendRequestData(param1:IMessageDataWrapper)
      {
         super();
         this.var_1336 = param1.readInteger();
         this.var_2414 = param1.readString();
         this.var_2415 = param1.readString();
         this.var_2416 = this.var_1336;
      }
      
      public function get requestId() : int
      {
         return this.var_1336;
      }
      
      public function get requesterName() : String
      {
         return this.var_2414;
      }
      
      public function get requesterUserId() : int
      {
         return this.var_2416;
      }
      
      public function get figureString() : String
      {
         return this.var_2415;
      }
   }
}
