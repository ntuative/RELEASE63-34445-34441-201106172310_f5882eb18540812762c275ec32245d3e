package com.sulake.habbo.communication.messages.incoming.navigator
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.runtime.IDisposable;
   
   public class PublicRoomData implements IDisposable
   {
       
      
      private var var_2451:String;
      
      private var var_2273:int;
      
      private var var_2267:int;
      
      private var var_2450:String;
      
      private var var_2452:int;
      
      private var var_1994:int;
      
      private var _disposed:Boolean;
      
      public function PublicRoomData(param1:IMessageDataWrapper)
      {
         super();
         this.var_2451 = param1.readString();
         this.var_2273 = param1.readInteger();
         this.var_2267 = param1.readInteger();
         this.var_2450 = param1.readString();
         this.var_2452 = param1.readInteger();
         this.var_1994 = param1.readInteger();
      }
      
      public function dispose() : void
      {
         if(this._disposed)
         {
            return;
         }
         this._disposed = true;
      }
      
      public function get disposed() : Boolean
      {
         return this._disposed;
      }
      
      public function get unitPropertySet() : String
      {
         return this.var_2451;
      }
      
      public function get unitPort() : int
      {
         return this.var_2273;
      }
      
      public function get worldId() : int
      {
         return this.var_2267;
      }
      
      public function get castLibs() : String
      {
         return this.var_2450;
      }
      
      public function get maxUsers() : int
      {
         return this.var_2452;
      }
      
      public function get nodeId() : int
      {
         return this.var_1994;
      }
   }
}
