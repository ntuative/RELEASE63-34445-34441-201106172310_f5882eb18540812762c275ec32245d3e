package com.sulake.habbo.friendlist.domain
{
   import com.sulake.habbo.friendlist.FriendRequestsView;
   import com.sulake.habbo.friendlist.FriendsView;
   import com.sulake.habbo.friendlist.SearchView;
   
   public class FriendListTabs
   {
       
      
      private var var_491:IFriendListTabsDeps;
      
      private var var_460:Array;
      
      private var var_1925:FriendListTab;
      
      private var var_1255:int = 200;
      
      private var var_2648:int = 200;
      
      private var var_1924:int = 200;
      
      public function FriendListTabs(param1:IFriendListTabsDeps)
      {
         this.var_460 = new Array();
         super();
         this.var_491 = param1;
         this.var_460.push(new FriendListTab(this.var_491.getFriendList(),FriendListTab.const_109,new FriendsView(),"${friendlist.friends}","friends_footer","hdr_friends"));
         this.var_460.push(new FriendListTab(this.var_491.getFriendList(),FriendListTab.const_91,new FriendRequestsView(),"${friendlist.tab.friendrequests}","friend_requests_footer","hdr_friend_requests"));
         this.var_460.push(new FriendListTab(this.var_491.getFriendList(),FriendListTab.const_450,new SearchView(),"${generic.search}","search_footer","hdr_search"));
         this.toggleSelected(null);
      }
      
      public function getTabs() : Array
      {
         return this.var_460;
      }
      
      public function findTab(param1:int) : FriendListTab
      {
         var _loc2_:* = null;
         for each(_loc2_ in this.var_460)
         {
            if(_loc2_.id == param1)
            {
               return _loc2_;
            }
         }
         return null;
      }
      
      public function clearSelections() : void
      {
         var _loc1_:* = null;
         for each(_loc1_ in this.var_460)
         {
            _loc1_.setSelected(false);
         }
      }
      
      public function findSelectedTab() : FriendListTab
      {
         var _loc1_:* = null;
         for each(_loc1_ in this.var_460)
         {
            if(_loc1_.selected)
            {
               return _loc1_;
            }
         }
         return null;
      }
      
      public function toggleSelected(param1:FriendListTab) : void
      {
         var _loc2_:FriendListTab = this.findSelectedTab();
         if(_loc2_ == null)
         {
            this.var_1255 = this.var_2648;
            this.setSelected(this.determineDisplayedTab(param1),true);
         }
         else if(_loc2_ == param1 || param1 == null)
         {
            this.var_2648 = this.var_1255;
            this.var_1255 = 0;
            this.clearSelections();
         }
         else
         {
            this.setSelected(this.determineDisplayedTab(param1),true);
         }
      }
      
      private function setSelected(param1:FriendListTab, param2:Boolean) : void
      {
         var _loc3_:FriendListTab = this.findSelectedTab();
         this.clearSelections();
         param1.setSelected(param2);
         if(param2)
         {
            this.var_1925 = param1;
         }
      }
      
      private function determineDisplayedTab(param1:FriendListTab) : FriendListTab
      {
         if(param1 != null)
         {
            return param1;
         }
         if(this.var_1925 != null)
         {
            return this.var_1925;
         }
         return this.var_460[0];
      }
      
      public function get tabContentHeight() : int
      {
         return this.var_1255;
      }
      
      public function get windowWidth() : int
      {
         return this.var_1924;
      }
      
      public function get tabContentWidth() : int
      {
         return this.var_1924 - 2;
      }
      
      public function set tabContentHeight(param1:int) : void
      {
         this.var_1255 = param1;
      }
      
      public function set windowWidth(param1:int) : void
      {
         this.var_1924 = param1;
      }
   }
}
