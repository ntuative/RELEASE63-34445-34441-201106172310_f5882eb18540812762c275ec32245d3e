package com.sulake.room.renderer.cache
{
   public class RoomObjectCacheItem
   {
       
      
      private var var_478:RoomObjectLocationCacheItem = null;
      
      private var var_231:RoomObjectSortableSpriteCacheItem = null;
      
      public function RoomObjectCacheItem(param1:String)
      {
         super();
         this.var_478 = new RoomObjectLocationCacheItem(param1);
         this.var_231 = new RoomObjectSortableSpriteCacheItem();
      }
      
      public function get location() : RoomObjectLocationCacheItem
      {
         return this.var_478;
      }
      
      public function get sprites() : RoomObjectSortableSpriteCacheItem
      {
         return this.var_231;
      }
      
      public function dispose() : void
      {
         if(this.var_478 != null)
         {
            this.var_478.dispose();
            this.var_478 = null;
         }
         if(this.var_231 != null)
         {
            this.var_231.dispose();
            this.var_231 = null;
         }
      }
   }
}
