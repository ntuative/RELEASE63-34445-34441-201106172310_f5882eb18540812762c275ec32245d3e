package com.sulake.habbo.navigator.domain
{
   import com.sulake.habbo.communication.messages.incoming.navigator.FlatCategory;
   import com.sulake.habbo.communication.messages.incoming.navigator.GuestRoomData;
   import com.sulake.habbo.communication.messages.incoming.navigator.GuestRoomSearchResultData;
   import com.sulake.habbo.communication.messages.incoming.navigator.MsgWithRequestId;
   import com.sulake.habbo.communication.messages.incoming.navigator.OfficialRoomsData;
   import com.sulake.habbo.communication.messages.incoming.navigator.PopularRoomTagsData;
   import com.sulake.habbo.communication.messages.incoming.navigator.PublicRoomShortData;
   import com.sulake.habbo.communication.messages.incoming.navigator.RoomEventData;
   import com.sulake.habbo.communication.messages.parser.navigator.FavouritesMessageParser;
   import com.sulake.habbo.communication.messages.parser.room.engine.RoomEntryInfoMessageParser;
   import com.sulake.habbo.navigator.HabboNavigator;
   import flash.utils.Dictionary;
   
   public class NavigatorData
   {
      
      private static const const_2059:int = 10;
       
      
      private var _navigator:HabboNavigator;
      
      private var var_222:MsgWithRequestId;
      
      private var var_665:RoomEventData;
      
      private var var_2660:Boolean;
      
      private var var_2664:Boolean;
      
      private var _currentRoomOwner:Boolean;
      
      private var var_2370:int;
      
      private var var_287:GuestRoomData;
      
      private var var_1018:PublicRoomShortData;
      
      private var var_2667:int;
      
      private var var_2669:Boolean;
      
      private var var_2663:int;
      
      private var var_2670:Boolean;
      
      private var var_1936:int;
      
      private var var_2662:Boolean;
      
      private var var_1542:Array;
      
      private var var_1541:Array;
      
      private var var_2668:int;
      
      private var var_1540:int;
      
      private var _favouriteIds:Dictionary;
      
      private var var_1260:Boolean;
      
      private var var_2661:int;
      
      private var var_2665:Boolean;
      
      private var var_2666:int = 0;
      
      public function NavigatorData(param1:HabboNavigator)
      {
         this.var_1542 = new Array();
         this.var_1541 = new Array();
         this._favouriteIds = new Dictionary();
         super();
         this._navigator = param1;
      }
      
      public function get canAddFavourite() : Boolean
      {
         return this.var_287 != null && !this._currentRoomOwner;
      }
      
      public function get canEditRoomSettings() : Boolean
      {
         return this.var_287 != null && this._currentRoomOwner;
      }
      
      public function onRoomEnter(param1:RoomEntryInfoMessageParser) : void
      {
         this.var_1018 = null;
         this.var_287 = null;
         this._currentRoomOwner = false;
         if(param1.privateRoom)
         {
            this._currentRoomOwner = param1.owner;
         }
         else
         {
            this.var_1018 = param1.publicSpace;
            this.var_665 = null;
         }
      }
      
      public function onRoomExit() : void
      {
         if(this.var_665 != null)
         {
            this.var_665.dispose();
            this.var_665 = null;
         }
         if(this.var_1018 != null)
         {
            this.var_1018.dispose();
            this.var_1018 = null;
         }
         if(this.var_287 != null)
         {
            this.var_287.dispose();
            this.var_287 = null;
         }
         this._currentRoomOwner = false;
      }
      
      public function set enteredRoom(param1:GuestRoomData) : void
      {
         if(this.var_287 != null)
         {
            this.var_287.dispose();
         }
         this.var_287 = param1;
      }
      
      public function set roomEventData(param1:RoomEventData) : void
      {
         if(this.var_665 != null)
         {
            this.var_665.dispose();
         }
         this.var_665 = param1;
      }
      
      public function get popularTagsArrived() : Boolean
      {
         return this.var_222 != null && this.var_222 as PopularRoomTagsData != null;
      }
      
      public function get guestRoomSearchArrived() : Boolean
      {
         return this.var_222 != null && this.var_222 as GuestRoomSearchResultData != null;
      }
      
      public function get officialRoomsArrived() : Boolean
      {
         return this.var_222 != null && this.var_222 as OfficialRoomsData != null;
      }
      
      public function set guestRoomSearchResults(param1:GuestRoomSearchResultData) : void
      {
         this.disposeCurrentMsg();
         this.var_222 = param1;
         this.var_1260 = false;
      }
      
      public function set popularTags(param1:PopularRoomTagsData) : void
      {
         this.disposeCurrentMsg();
         this.var_222 = param1;
         this.var_1260 = false;
      }
      
      public function set officialRooms(param1:OfficialRoomsData) : void
      {
         this.disposeCurrentMsg();
         this.var_222 = param1;
         this.var_1260 = false;
      }
      
      private function disposeCurrentMsg() : void
      {
         if(this.var_222 == null)
         {
            return;
         }
         this.var_222.dispose();
         this.var_222 = null;
      }
      
      public function get guestRoomSearchResults() : GuestRoomSearchResultData
      {
         return this.var_222 as GuestRoomSearchResultData;
      }
      
      public function get popularTags() : PopularRoomTagsData
      {
         return this.var_222 as PopularRoomTagsData;
      }
      
      public function get officialRooms() : OfficialRoomsData
      {
         return this.var_222 as OfficialRoomsData;
      }
      
      public function get roomEventData() : RoomEventData
      {
         return this.var_665;
      }
      
      public function get avatarId() : int
      {
         return this.var_2370;
      }
      
      public function get eventMod() : Boolean
      {
         return this.var_2660;
      }
      
      public function get roomPicker() : Boolean
      {
         return this.var_2664;
      }
      
      public function get currentRoomOwner() : Boolean
      {
         return this._currentRoomOwner;
      }
      
      public function get enteredGuestRoom() : GuestRoomData
      {
         return this.var_287;
      }
      
      public function get enteredPublicSpace() : PublicRoomShortData
      {
         return this.var_1018;
      }
      
      public function get hcMember() : Boolean
      {
         return this.var_2669;
      }
      
      public function get createdFlatId() : int
      {
         return this.var_2663;
      }
      
      public function get homeRoomId() : int
      {
         return this.var_1936;
      }
      
      public function get hotRoomPopupOpen() : Boolean
      {
         return this.var_2670;
      }
      
      public function get currentRoomRating() : int
      {
         return this.var_2661;
      }
      
      public function get publicSpaceNodeId() : int
      {
         return this.var_2667;
      }
      
      public function get settingsReceived() : Boolean
      {
         return this.var_2662;
      }
      
      public function get adIndex() : int
      {
         return this.var_2666;
      }
      
      public function get currentRoomIsStaffPick() : Boolean
      {
         return this.var_2665;
      }
      
      public function set avatarId(param1:int) : void
      {
         this.var_2370 = param1;
      }
      
      public function set createdFlatId(param1:int) : void
      {
         this.var_2663 = param1;
      }
      
      public function set hcMember(param1:Boolean) : void
      {
         this.var_2669 = param1;
      }
      
      public function set eventMod(param1:Boolean) : void
      {
         this.var_2660 = param1;
      }
      
      public function set roomPicker(param1:Boolean) : void
      {
         this.var_2664 = param1;
      }
      
      public function set hotRoomPopupOpen(param1:Boolean) : void
      {
         this.var_2670 = param1;
      }
      
      public function set homeRoomId(param1:int) : void
      {
         this.var_1936 = param1;
      }
      
      public function set currentRoomRating(param1:int) : void
      {
         this.var_2661 = param1;
      }
      
      public function set publicSpaceNodeId(param1:int) : void
      {
         this.var_2667 = param1;
      }
      
      public function set settingsReceived(param1:Boolean) : void
      {
         this.var_2662 = param1;
      }
      
      public function set adIndex(param1:int) : void
      {
         this.var_2666 = param1;
      }
      
      public function set currentRoomIsStaffPick(param1:Boolean) : void
      {
         this.var_2665 = param1;
      }
      
      public function set categories(param1:Array) : void
      {
         var _loc2_:* = null;
         this.var_1542 = param1;
         this.var_1541 = new Array();
         for each(_loc2_ in this.var_1542)
         {
            if(_loc2_.visible)
            {
               this.var_1541.push(_loc2_);
            }
         }
      }
      
      public function get allCategories() : Array
      {
         return this.var_1542;
      }
      
      public function get visibleCategories() : Array
      {
         return this.var_1541;
      }
      
      public function onFavourites(param1:FavouritesMessageParser) : void
      {
         var _loc2_:int = 0;
         this.var_2668 = param1.limit;
         this.var_1540 = param1.favouriteRoomIds.length;
         this._favouriteIds = new Dictionary();
         for each(_loc2_ in param1.favouriteRoomIds)
         {
            this._favouriteIds[_loc2_] = "yes";
         }
      }
      
      public function favouriteChanged(param1:int, param2:Boolean) : void
      {
         this._favouriteIds[param1] = !!param2 ? "yes" : null;
         this.var_1540 += !!param2 ? 1 : -1;
      }
      
      public function isCurrentRoomFavourite() : Boolean
      {
         var _loc1_:int = this.var_287.flatId;
         return this._favouriteIds[_loc1_] != null;
      }
      
      public function isCurrentRoomHome() : Boolean
      {
         if(this.var_287 == null)
         {
            return false;
         }
         var _loc1_:int = this.var_287.flatId;
         return this.var_1936 == _loc1_;
      }
      
      public function isRoomFavourite(param1:int) : Boolean
      {
         return this._favouriteIds[param1] != null;
      }
      
      public function isFavouritesFull() : Boolean
      {
         return this.var_1540 >= this.var_2668;
      }
      
      public function startLoading() : void
      {
         this.var_1260 = true;
      }
      
      public function isLoading() : Boolean
      {
         return this.var_1260;
      }
   }
}
