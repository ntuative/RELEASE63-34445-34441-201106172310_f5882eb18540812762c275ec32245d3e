package com.sulake.habbo.communication.messages.incoming.moderation
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class ModeratorUserInfoData
   {
       
      
      private var _userId:int;
      
      private var _userName:String;
      
      private var var_2804:int;
      
      private var var_2801:int;
      
      private var var_759:Boolean;
      
      private var var_2800:int;
      
      private var var_2802:int;
      
      private var var_2803:int;
      
      private var var_2805:int;
      
      public function ModeratorUserInfoData(param1:IMessageDataWrapper)
      {
         super();
         this._userId = param1.readInteger();
         this._userName = param1.readString();
         this.var_2804 = param1.readInteger();
         this.var_2801 = param1.readInteger();
         this.var_759 = param1.readBoolean();
         this.var_2800 = param1.readInteger();
         this.var_2802 = param1.readInteger();
         this.var_2803 = param1.readInteger();
         this.var_2805 = param1.readInteger();
      }
      
      public function get userId() : int
      {
         return this._userId;
      }
      
      public function get userName() : String
      {
         return this._userName;
      }
      
      public function get minutesSinceRegistration() : int
      {
         return this.var_2804;
      }
      
      public function get minutesSinceLastLogin() : int
      {
         return this.var_2801;
      }
      
      public function get online() : Boolean
      {
         return this.var_759;
      }
      
      public function get cfhCount() : int
      {
         return this.var_2800;
      }
      
      public function get abusiveCfhCount() : int
      {
         return this.var_2802;
      }
      
      public function get cautionCount() : int
      {
         return this.var_2803;
      }
      
      public function get banCount() : int
      {
         return this.var_2805;
      }
   }
}
