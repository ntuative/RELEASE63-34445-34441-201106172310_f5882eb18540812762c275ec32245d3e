package com.sulake.habbo.communication.messages.incoming.notifications
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class AchievementLevelUpData
   {
       
      
      private var _type:int;
      
      private var var_1284:int;
      
      private var var_2097:int;
      
      private var var_2240:int;
      
      private var var_2238:int;
      
      private var var_2239:int;
      
      private var var_2147:int;
      
      private var var_2241:String = "";
      
      private var var_2243:String = "";
      
      private var var_2242:int;
      
      private var _category:String;
      
      public function AchievementLevelUpData(param1:IMessageDataWrapper)
      {
         super();
         this._type = param1.readInteger();
         this.var_1284 = param1.readInteger();
         this.var_2147 = param1.readInteger();
         this.var_2241 = param1.readString();
         this.var_2097 = param1.readInteger();
         this.var_2240 = param1.readInteger();
         this.var_2238 = param1.readInteger();
         this.var_2239 = param1.readInteger();
         this.var_2242 = param1.readInteger();
         this.var_2243 = param1.readString();
         this._category = param1.readString();
      }
      
      public function get type() : int
      {
         return this._type;
      }
      
      public function get level() : int
      {
         return this.var_1284;
      }
      
      public function get points() : int
      {
         return this.var_2097;
      }
      
      public function get levelRewardPoints() : int
      {
         return this.var_2240;
      }
      
      public function get levelRewardPointType() : int
      {
         return this.var_2238;
      }
      
      public function get bonusPoints() : int
      {
         return this.var_2239;
      }
      
      public function get badgeId() : int
      {
         return this.var_2147;
      }
      
      public function get badgeCode() : String
      {
         return this.var_2241;
      }
      
      public function get removedBadgeCode() : String
      {
         return this.var_2243;
      }
      
      public function get achievementID() : int
      {
         return this.var_2242;
      }
      
      public function get category() : String
      {
         return this._category;
      }
   }
}
