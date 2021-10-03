package com.sulake.habbo.communication.messages.incoming.navigator
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.runtime.IDisposable;
   
   public class OfficialRoomEntryData implements IDisposable
   {
      
      public static const const_1212:int = 1;
      
      public static const const_759:int = 2;
      
      public static const const_812:int = 3;
      
      public static const const_1721:int = 4;
       
      
      private var _index:int;
      
      private var var_2504:String;
      
      private var var_2506:String;
      
      private var var_2505:Boolean;
      
      private var var_2508:String;
      
      private var var_1112:String;
      
      private var var_2507:int;
      
      private var var_2509:int;
      
      private var _type:int;
      
      private var var_2405:String;
      
      private var var_978:GuestRoomData;
      
      private var var_979:PublicRoomData;
      
      private var _open:Boolean;
      
      private var _disposed:Boolean;
      
      public function OfficialRoomEntryData(param1:IMessageDataWrapper)
      {
         super();
         this._index = param1.readInteger();
         this.var_2504 = param1.readString();
         this.var_2506 = param1.readString();
         this.var_2505 = param1.readInteger() == 1;
         this.var_2508 = param1.readString();
         this.var_1112 = param1.readString();
         this.var_2507 = param1.readInteger();
         this.var_2509 = param1.readInteger();
         this._type = param1.readInteger();
         if(this._type == const_1212)
         {
            this.var_2405 = param1.readString();
         }
         else if(this._type == const_812)
         {
            this.var_979 = new PublicRoomData(param1);
         }
         else if(this._type == const_759)
         {
            this.var_978 = new GuestRoomData(param1);
         }
         else
         {
            this._open = param1.readBoolean();
         }
      }
      
      public function dispose() : void
      {
         if(this._disposed)
         {
            return;
         }
         this._disposed = true;
         if(this.var_978 != null)
         {
            this.var_978.dispose();
            this.var_978 = null;
         }
         if(this.var_979 != null)
         {
            this.var_979.dispose();
            this.var_979 = null;
         }
      }
      
      public function get disposed() : Boolean
      {
         return this._disposed;
      }
      
      public function get type() : int
      {
         return this._type;
      }
      
      public function get index() : int
      {
         return this._index;
      }
      
      public function get popupCaption() : String
      {
         return this.var_2504;
      }
      
      public function get popupDesc() : String
      {
         return this.var_2506;
      }
      
      public function get showDetails() : Boolean
      {
         return this.var_2505;
      }
      
      public function get picText() : String
      {
         return this.var_2508;
      }
      
      public function get picRef() : String
      {
         return this.var_1112;
      }
      
      public function get folderId() : int
      {
         return this.var_2507;
      }
      
      public function get tag() : String
      {
         return this.var_2405;
      }
      
      public function get userCount() : int
      {
         return this.var_2509;
      }
      
      public function get guestRoomData() : GuestRoomData
      {
         return this.var_978;
      }
      
      public function get publicRoomData() : PublicRoomData
      {
         return this.var_979;
      }
      
      public function get open() : Boolean
      {
         return this._open;
      }
      
      public function toggleOpen() : void
      {
         this._open = !this._open;
      }
      
      public function get maxUsers() : int
      {
         if(this.type == const_1212)
         {
            return 0;
         }
         if(this.type == const_759)
         {
            return this.var_978.maxUserCount;
         }
         if(this.type == const_812)
         {
            return this.var_979.maxUsers;
         }
         return 0;
      }
   }
}
