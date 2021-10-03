package com.sulake.habbo.communication.messages.incoming.friendlist
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class HabboSearchResultData
   {
       
      
      private var var_2370:int;
      
      private var var_1753:String;
      
      private var var_2366:String;
      
      private var var_2754:Boolean;
      
      private var var_2751:Boolean;
      
      private var var_2753:int;
      
      private var var_2365:String;
      
      private var var_2752:String;
      
      private var var_1754:String;
      
      public function HabboSearchResultData(param1:IMessageDataWrapper)
      {
         super();
         this.var_2370 = param1.readInteger();
         this.var_1753 = param1.readString();
         this.var_2366 = param1.readString();
         this.var_2754 = param1.readBoolean();
         this.var_2751 = param1.readBoolean();
         param1.readString();
         this.var_2753 = param1.readInteger();
         this.var_2365 = param1.readString();
         this.var_2752 = param1.readString();
         this.var_1754 = param1.readString();
      }
      
      public function get avatarId() : int
      {
         return this.var_2370;
      }
      
      public function get avatarName() : String
      {
         return this.var_1753;
      }
      
      public function get avatarMotto() : String
      {
         return this.var_2366;
      }
      
      public function get isAvatarOnline() : Boolean
      {
         return this.var_2754;
      }
      
      public function get canFollow() : Boolean
      {
         return this.var_2751;
      }
      
      public function get avatarGender() : int
      {
         return this.var_2753;
      }
      
      public function get avatarFigure() : String
      {
         return this.var_2365;
      }
      
      public function get lastOnlineDate() : String
      {
         return this.var_2752;
      }
      
      public function get realName() : String
      {
         return this.var_1754;
      }
   }
}
