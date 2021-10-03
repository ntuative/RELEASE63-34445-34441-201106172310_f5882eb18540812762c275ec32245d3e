package com.sulake.habbo.ui.widget.events
{
   public class RoomWidgetTeaserDataUpdateEvent extends RoomWidgetUpdateEvent
   {
      
      public static const const_510:String = "RWTDUE_TEASER_DATA";
      
      public static const const_876:String = "RWTDUE_GIFT_DATA";
      
      public static const const_1001:String = "RWTDUE_GIFT_RECEIVED";
       
      
      private var var_234:int;
      
      private var _data:String;
      
      private var var_423:int;
      
      private var var_203:String;
      
      private var var_2475:String;
      
      private var var_2477:Boolean;
      
      private var var_1591:int = 0;
      
      private var var_2476:String;
      
      public function RoomWidgetTeaserDataUpdateEvent(param1:String, param2:Boolean = false, param3:Boolean = false)
      {
         super(param1,param2,param3);
      }
      
      public function get objectId() : int
      {
         return this.var_234;
      }
      
      public function get data() : String
      {
         return this._data;
      }
      
      public function get status() : int
      {
         return this.var_423;
      }
      
      public function get firstClickUserName() : String
      {
         return this.var_2475;
      }
      
      public function get giftWasReceived() : Boolean
      {
         return this.var_2477;
      }
      
      public function get ownRealName() : String
      {
         return this.var_2476;
      }
      
      public function get itemCategory() : int
      {
         return this.var_1591;
      }
      
      public function set status(param1:int) : void
      {
         this.var_423 = param1;
      }
      
      public function set data(param1:String) : void
      {
         this._data = param1;
      }
      
      public function set firstClickUserName(param1:String) : void
      {
         this.var_2475 = param1;
      }
      
      public function set giftWasReceived(param1:Boolean) : void
      {
         this.var_2477 = param1;
      }
      
      public function set ownRealName(param1:String) : void
      {
         this.var_2476 = param1;
      }
      
      public function set objectId(param1:int) : void
      {
         this.var_234 = param1;
      }
      
      public function get campaignID() : String
      {
         return this.var_203;
      }
      
      public function set campaignID(param1:String) : void
      {
         this.var_203 = param1;
      }
      
      public function set itemCategory(param1:int) : void
      {
         this.var_1591 = param1;
      }
   }
}
