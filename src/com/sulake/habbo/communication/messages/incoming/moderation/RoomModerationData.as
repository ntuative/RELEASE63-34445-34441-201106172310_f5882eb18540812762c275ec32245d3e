package com.sulake.habbo.communication.messages.incoming.moderation
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.runtime.IDisposable;
   
   public class RoomModerationData implements IDisposable
   {
       
      
      private var var_414:int;
      
      private var var_2509:int;
      
      private var var_2806:Boolean;
      
      private var var_2650:int;
      
      private var _ownerName:String;
      
      private var var_130:RoomData;
      
      private var var_870:RoomData;
      
      private var _disposed:Boolean;
      
      public function RoomModerationData(param1:IMessageDataWrapper)
      {
         super();
         this.var_414 = param1.readInteger();
         this.var_2509 = param1.readInteger();
         this.var_2806 = param1.readBoolean();
         this.var_2650 = param1.readInteger();
         this._ownerName = param1.readString();
         this.var_130 = new RoomData(param1);
         this.var_870 = new RoomData(param1);
      }
      
      public function get disposed() : Boolean
      {
         return this._disposed;
      }
      
      public function dispose() : void
      {
         if(this._disposed)
         {
            return;
         }
         this._disposed = true;
         if(this.var_130 != null)
         {
            this.var_130.dispose();
            this.var_130 = null;
         }
         if(this.var_870 != null)
         {
            this.var_870.dispose();
            this.var_870 = null;
         }
      }
      
      public function get flatId() : int
      {
         return this.var_414;
      }
      
      public function get userCount() : int
      {
         return this.var_2509;
      }
      
      public function get ownerInRoom() : Boolean
      {
         return this.var_2806;
      }
      
      public function get ownerId() : int
      {
         return this.var_2650;
      }
      
      public function get ownerName() : String
      {
         return this._ownerName;
      }
      
      public function get room() : RoomData
      {
         return this.var_130;
      }
      
      public function get event() : RoomData
      {
         return this.var_870;
      }
   }
}
