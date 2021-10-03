package com.sulake.habbo.communication.messages.incoming.navigator
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.runtime.IDisposable;
   
   public class RoomEventData implements IDisposable
   {
       
      
      private var var_2099:Boolean;
      
      private var var_2896:int;
      
      private var var_2893:String;
      
      private var var_414:int;
      
      private var var_2892:int;
      
      private var var_1806:String;
      
      private var var_2894:String;
      
      private var var_2895:String;
      
      private var var_908:Array;
      
      private var _disposed:Boolean;
      
      public function RoomEventData(param1:IMessageDataWrapper)
      {
         var _loc5_:* = null;
         this.var_908 = new Array();
         super();
         var _loc2_:String = param1.readString();
         if(_loc2_ == "-1")
         {
            Logger.log("Got null room event");
            this.var_2099 = false;
            return;
         }
         this.var_2099 = true;
         this.var_2896 = int(_loc2_);
         this.var_2893 = param1.readString();
         this.var_414 = int(param1.readString());
         this.var_2892 = param1.readInteger();
         this.var_1806 = param1.readString();
         this.var_2894 = param1.readString();
         this.var_2895 = param1.readString();
         var _loc3_:int = param1.readInteger();
         var _loc4_:int = 0;
         while(_loc4_ < _loc3_)
         {
            _loc5_ = param1.readString();
            this.var_908.push(_loc5_);
            _loc4_++;
         }
      }
      
      public function dispose() : void
      {
         if(this._disposed)
         {
            return;
         }
         this._disposed = true;
         this.var_908 = null;
      }
      
      public function get disposed() : Boolean
      {
         return this._disposed;
      }
      
      public function get ownerAvatarId() : int
      {
         return this.var_2896;
      }
      
      public function get ownerAvatarName() : String
      {
         return this.var_2893;
      }
      
      public function get flatId() : int
      {
         return this.var_414;
      }
      
      public function get eventType() : int
      {
         return this.var_2892;
      }
      
      public function get eventName() : String
      {
         return this.var_1806;
      }
      
      public function get eventDescription() : String
      {
         return this.var_2894;
      }
      
      public function get creationTime() : String
      {
         return this.var_2895;
      }
      
      public function get tags() : Array
      {
         return this.var_908;
      }
      
      public function get exists() : Boolean
      {
         return this.var_2099;
      }
   }
}
