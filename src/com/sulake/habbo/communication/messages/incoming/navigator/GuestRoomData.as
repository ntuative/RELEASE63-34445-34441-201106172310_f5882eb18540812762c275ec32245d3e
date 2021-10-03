package com.sulake.habbo.communication.messages.incoming.navigator
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.runtime.IDisposable;
   
   public class GuestRoomData implements IDisposable
   {
       
      
      private var var_414:int;
      
      private var var_870:Boolean;
      
      private var var_967:String;
      
      private var _ownerName:String;
      
      private var var_2517:int;
      
      private var var_2509:int;
      
      private var var_2578:int;
      
      private var var_2069:String;
      
      private var var_2575:int;
      
      private var var_2532:Boolean;
      
      private var var_841:int;
      
      private var var_1448:int;
      
      private var var_2577:String;
      
      private var var_908:Array;
      
      private var var_2576:RoomThumbnailData;
      
      private var var_2514:Boolean;
      
      private var var_2574:Boolean;
      
      private var _disposed:Boolean;
      
      public function GuestRoomData(param1:IMessageDataWrapper)
      {
         var _loc4_:* = null;
         this.var_908 = new Array();
         super();
         this.var_414 = param1.readInteger();
         this.var_870 = param1.readBoolean();
         this.var_967 = param1.readString();
         this._ownerName = param1.readString();
         this.var_2517 = param1.readInteger();
         this.var_2509 = param1.readInteger();
         this.var_2578 = param1.readInteger();
         this.var_2069 = param1.readString();
         this.var_2575 = param1.readInteger();
         this.var_2532 = param1.readBoolean();
         this.var_841 = param1.readInteger();
         this.var_1448 = param1.readInteger();
         this.var_2577 = param1.readString();
         var _loc2_:int = param1.readInteger();
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_)
         {
            _loc4_ = param1.readString();
            this.var_908.push(_loc4_);
            _loc3_++;
         }
         this.var_2576 = new RoomThumbnailData(param1);
         this.var_2514 = param1.readBoolean();
         this.var_2574 = param1.readBoolean();
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
      
      public function get flatId() : int
      {
         return this.var_414;
      }
      
      public function get event() : Boolean
      {
         return this.var_870;
      }
      
      public function get roomName() : String
      {
         return this.var_967;
      }
      
      public function get ownerName() : String
      {
         return this._ownerName;
      }
      
      public function get doorMode() : int
      {
         return this.var_2517;
      }
      
      public function get userCount() : int
      {
         return this.var_2509;
      }
      
      public function get maxUserCount() : int
      {
         return this.var_2578;
      }
      
      public function get description() : String
      {
         return this.var_2069;
      }
      
      public function get srchSpecPrm() : int
      {
         return this.var_2575;
      }
      
      public function get allowTrading() : Boolean
      {
         return this.var_2532;
      }
      
      public function get score() : int
      {
         return this.var_841;
      }
      
      public function get categoryId() : int
      {
         return this.var_1448;
      }
      
      public function get eventCreationTime() : String
      {
         return this.var_2577;
      }
      
      public function get tags() : Array
      {
         return this.var_908;
      }
      
      public function get thumbnail() : RoomThumbnailData
      {
         return this.var_2576;
      }
      
      public function get allowPets() : Boolean
      {
         return this.var_2514;
      }
      
      public function get displayRoomEntryAd() : Boolean
      {
         return this.var_2574;
      }
   }
}
