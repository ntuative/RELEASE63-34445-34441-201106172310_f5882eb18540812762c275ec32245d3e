package com.sulake.habbo.avatar.structure
{
   import com.sulake.core.Core;
   import com.sulake.core.assets.AssetLoaderStruct;
   import com.sulake.core.assets.IAssetLibrary;
   import com.sulake.core.assets.loaders.AssetLoaderEvent;
   import com.sulake.habbo.utils.HabboWebTools;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.net.URLRequest;
   
   public class AvatarStructureDownload extends EventDispatcher
   {
      
      public static const STRUCTURE_DONE:String = "AVATAR_STRUCTURE_DONE";
       
      
      private var var_2899:IStructureData;
      
      private var var_2100:XML;
      
      private var _assets:IAssetLibrary;
      
      public function AvatarStructureDownload(param1:IAssetLibrary, param2:String, param3:IStructureData)
      {
         super();
         this._assets = param1;
         this.var_2899 = param3;
         var _loc4_:String = param2;
         if(this._assets.hasAsset(_loc4_))
         {
            Logger.log("[AvatarStructureDownload] reload data for url: " + param2);
         }
         var _loc5_:URLRequest = new URLRequest(param2);
         var _loc6_:AssetLoaderStruct = this._assets.loadAssetFromFile(_loc4_,_loc5_,"text/plain");
         _loc6_.addEventListener(AssetLoaderEvent.ASSET_LOADER_EVENT_COMPLETE,this.onDataComplete);
         _loc6_.addEventListener(AssetLoaderEvent.const_41,this.onDataFailed);
      }
      
      private function onDataComplete(param1:Event) : void
      {
         var data:String = null;
         var event:Event = param1;
         var loaderStruct:AssetLoaderStruct = event.target as AssetLoaderStruct;
         if(loaderStruct == null || loaderStruct.assetLoader == null)
         {
            return;
         }
         try
         {
            data = loaderStruct.assetLoader.content as String;
            if(data == null || data.length == 0)
            {
               Core.error("Could not load avatar structure, got empty data from URL " + loaderStruct.assetLoader.url + " data length = " + data.length + ".",false,Core.const_201);
            }
            this.var_2100 = new XML(data);
         }
         catch(e:Error)
         {
            Logger.log("[AvatarStructureDownload] Error: " + e.message);
            return;
         }
         if(this.var_2100 == null)
         {
            Logger.log("[AvatarStructureDownload] XML error: " + loaderStruct + " not valid XML");
            return;
         }
         this.var_2899.appendXML(this.var_2100);
         dispatchEvent(new Event(AvatarStructureDownload.STRUCTURE_DONE));
      }
      
      private function onDataFailed(param1:Event) : void
      {
         var _loc2_:AssetLoaderStruct = param1.target as AssetLoaderStruct;
         var _loc3_:String = "";
         if(_loc2_ != null && _loc2_.assetLoader != null)
         {
            _loc3_ = _loc2_.assetLoader.url;
         }
         HabboWebTools.logEventLog("figurepartlist download error " + _loc3_);
         Core.error("Could not load avatar structure. Failed to get data from URL " + _loc3_,false,Core.const_201);
      }
   }
}
