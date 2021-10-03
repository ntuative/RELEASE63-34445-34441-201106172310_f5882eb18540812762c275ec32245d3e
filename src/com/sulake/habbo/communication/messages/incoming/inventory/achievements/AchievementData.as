package com.sulake.habbo.communication.messages.incoming.inventory.achievements
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class AchievementData
   {
       
      
      private var _type:int;
      
      private var var_1284:int;
      
      private var var_2147:String;
      
      private var var_1898:int;
      
      private var var_2240:int;
      
      private var var_2238:int;
      
      private var var_1899:int;
      
      private var var_1897:Boolean;
      
      private var _category:String;
      
      private var var_2621:int;
      
      public function AchievementData(param1:IMessageDataWrapper)
      {
         super();
         this._type = param1.readInteger();
         this.var_1284 = param1.readInteger();
         this.var_2147 = param1.readString();
         this.var_1898 = Math.max(1,param1.readInteger());
         this.var_2240 = param1.readInteger();
         this.var_2238 = param1.readInteger();
         this.var_1899 = param1.readInteger();
         this.var_1897 = param1.readBoolean();
         this._category = param1.readString();
         this.var_2621 = param1.readInteger();
      }
      
      public function get type() : int
      {
         return this._type;
      }
      
      public function get badgeId() : String
      {
         return this.var_2147;
      }
      
      public function get level() : int
      {
         return this.var_1284;
      }
      
      public function get scoreLimit() : int
      {
         return this.var_1898;
      }
      
      public function get levelRewardPoints() : int
      {
         return this.var_2240;
      }
      
      public function get levelRewardPointType() : int
      {
         return this.var_2238;
      }
      
      public function get currentPoints() : int
      {
         return this.var_1899;
      }
      
      public function get finalLevel() : Boolean
      {
         return this.var_1897;
      }
      
      public function get category() : String
      {
         return this._category;
      }
      
      public function get levelCount() : int
      {
         return this.var_2621;
      }
      
      public function get firstLevelAchieved() : Boolean
      {
         return this.var_1284 > 1 || this.var_1897;
      }
      
      public function setMaxProgress() : void
      {
         this.var_1899 = this.var_1898;
      }
   }
}
