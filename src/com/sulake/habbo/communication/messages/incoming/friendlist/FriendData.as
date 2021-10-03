package com.sulake.habbo.communication.messages.incoming.friendlist
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class FriendData
   {
       
      
      private var _id:int;
      
      private var _name:String;
      
      private var var_1043:int;
      
      private var var_759:Boolean;
      
      private var var_1812:Boolean;
      
      private var _figure:String;
      
      private var var_1448:int;
      
      private var var_1913:String;
      
      private var var_1755:String;
      
      private var var_1754:String;
      
      private var var_2410:String;
      
      public function FriendData(param1:IMessageDataWrapper)
      {
         super();
         this._id = param1.readInteger();
         this._name = param1.readString();
         this.var_1043 = param1.readInteger();
         this.var_759 = param1.readBoolean();
         this.var_1812 = param1.readBoolean();
         this._figure = param1.readString();
         this.var_1448 = param1.readInteger();
         this.var_1913 = param1.readString();
         this.var_1755 = param1.readString();
         this.var_1754 = param1.readString();
         this.var_2410 = param1.readString();
      }
      
      public function get id() : int
      {
         return this._id;
      }
      
      public function get name() : String
      {
         return this._name;
      }
      
      public function get gender() : int
      {
         return this.var_1043;
      }
      
      public function get online() : Boolean
      {
         return this.var_759;
      }
      
      public function get followingAllowed() : Boolean
      {
         return this.var_1812;
      }
      
      public function get figure() : String
      {
         return this._figure;
      }
      
      public function get categoryId() : int
      {
         return this.var_1448;
      }
      
      public function get motto() : String
      {
         return this.var_1913;
      }
      
      public function get lastAccess() : String
      {
         return this.var_1755;
      }
      
      public function get realName() : String
      {
         return this.var_1754;
      }
      
      public function get facebookId() : String
      {
         return this.var_2410;
      }
   }
}
