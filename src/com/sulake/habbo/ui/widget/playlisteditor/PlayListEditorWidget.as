package com.sulake.habbo.ui.widget.playlisteditor
{
   import com.sulake.core.assets.AssetLoaderStruct;
   import com.sulake.core.assets.BitmapDataAsset;
   import com.sulake.core.assets.IAssetLibrary;
   import com.sulake.core.assets.loaders.AssetLoaderEvent;
   import com.sulake.core.window.IWindow;
   import com.sulake.core.window.events.WindowEvent;
   import com.sulake.habbo.catalog.IHabboCatalog;
   import com.sulake.habbo.catalog.enum.CatalogPageName;
   import com.sulake.habbo.configuration.IHabboConfigurationManager;
   import com.sulake.habbo.localization.IHabboLocalizationManager;
   import com.sulake.habbo.sound.HabboMusicPrioritiesEnum;
   import com.sulake.habbo.sound.IHabboSoundManager;
   import com.sulake.habbo.sound.IPlayListController;
   import com.sulake.habbo.sound.ISongInfo;
   import com.sulake.habbo.ui.IRoomWidgetHandler;
   import com.sulake.habbo.ui.widget.RoomWidgetBase;
   import com.sulake.habbo.ui.widget.events.RoomWidgetPlayListEditorEvent;
   import com.sulake.habbo.ui.widget.events.RoomWidgetPlayListEditorNowPlayingEvent;
   import com.sulake.habbo.ui.widget.messages.RoomWidgetPlayListModificationMessage;
   import com.sulake.habbo.ui.widget.messages.RoomWidgetPlayListPlayStateMessage;
   import com.sulake.habbo.ui.widget.messages.RoomWidgetPlayListUserActionMessage;
   import com.sulake.habbo.window.IHabboWindowManager;
   import com.sulake.habbo.window.utils.IAlertDialog;
   import flash.display.BitmapData;
   import flash.events.IEventDispatcher;
   import flash.geom.ColorTransform;
   import flash.net.URLRequest;
   
   public class PlayListEditorWidget extends RoomWidgetBase
   {
      
      private static const const_1530:int = 130;
      
      private static const const_1534:int = 100;
      
      private static const const_1532:int = 130;
      
      private static const const_1529:int = 100;
      
      private static const const_1531:int = 130;
      
      private static const const_1533:int = 100;
       
      
      private var _catalog:IHabboCatalog;
      
      private var var_173:IHabboConfigurationManager;
      
      private var _soundManager:IHabboSoundManager;
      
      private var var_17:MainWindowHandler;
      
      private var _furniId:int;
      
      public function PlayListEditorWidget(param1:IRoomWidgetHandler, param2:IHabboWindowManager, param3:IHabboSoundManager, param4:IAssetLibrary, param5:IHabboLocalizationManager, param6:IHabboConfigurationManager, param7:IHabboCatalog)
      {
         super(param1,param2,param4,param5);
         this._soundManager = param3;
         this.var_173 = param6;
         this._catalog = param7;
         this.var_17 = null;
      }
      
      override public function dispose() : void
      {
         if(!disposed)
         {
            if(this.var_17)
            {
               this.var_17.destroy();
               this.var_17 = null;
            }
            this._soundManager = null;
            super.dispose();
         }
      }
      
      override public function get mainWindow() : IWindow
      {
         if(this.var_17 == null)
         {
            return null;
         }
         return this.var_17.window;
      }
      
      override public function registerUpdateEvents(param1:IEventDispatcher) : void
      {
         param1.addEventListener(RoomWidgetPlayListEditorEvent.const_918,this.onShowPlayListEditorEvent);
         param1.addEventListener(RoomWidgetPlayListEditorEvent.const_849,this.onHidePlayListEditorEvent);
         param1.addEventListener(RoomWidgetPlayListEditorEvent.const_810,this.onInventoryUpdatedEvent);
         param1.addEventListener(RoomWidgetPlayListEditorEvent.const_917,this.onSongDiskInventoryUpdatedEvent);
         param1.addEventListener(RoomWidgetPlayListEditorEvent.const_105,this.onPlayListUpdatedEvent);
         param1.addEventListener(RoomWidgetPlayListEditorEvent.const_166,this.onPlayListFullEvent);
         param1.addEventListener(RoomWidgetPlayListEditorNowPlayingEvent.const_103,this.onNowPlayingChangedEvent);
         param1.addEventListener(RoomWidgetPlayListEditorNowPlayingEvent.const_134,this.onNowPlayingChangedEvent);
         param1.addEventListener(RoomWidgetPlayListEditorNowPlayingEvent.const_125,this.onNowPlayingChangedEvent);
      }
      
      override public function unregisterUpdateEvents(param1:IEventDispatcher) : void
      {
         param1.removeEventListener(RoomWidgetPlayListEditorEvent.const_918,this.onShowPlayListEditorEvent);
         param1.removeEventListener(RoomWidgetPlayListEditorEvent.const_849,this.onHidePlayListEditorEvent);
         param1.removeEventListener(RoomWidgetPlayListEditorEvent.const_810,this.onInventoryUpdatedEvent);
         param1.removeEventListener(RoomWidgetPlayListEditorEvent.const_917,this.onSongDiskInventoryUpdatedEvent);
         param1.removeEventListener(RoomWidgetPlayListEditorEvent.const_105,this.onPlayListUpdatedEvent);
         param1.removeEventListener(RoomWidgetPlayListEditorEvent.const_166,this.onPlayListFullEvent);
         param1.removeEventListener(RoomWidgetPlayListEditorNowPlayingEvent.const_103,this.onNowPlayingChangedEvent);
         param1.removeEventListener(RoomWidgetPlayListEditorNowPlayingEvent.const_134,this.onNowPlayingChangedEvent);
         param1.removeEventListener(RoomWidgetPlayListEditorNowPlayingEvent.const_125,this.onNowPlayingChangedEvent);
      }
      
      public function get mainWindowHandler() : MainWindowHandler
      {
         return this.var_17;
      }
      
      public function getDiskColorTransformFromSongData(param1:String) : ColorTransform
      {
         var _loc2_:* = 0;
         var _loc3_:* = 0;
         var _loc4_:* = 0;
         var _loc5_:int = 0;
         while(_loc5_ < param1.length)
         {
            switch(_loc5_ % 3)
            {
               case 0:
                  _loc2_ += param1.charCodeAt(_loc5_) * 37 as int;
                  break;
               case 1:
                  _loc3_ += param1.charCodeAt(_loc5_) * 37 as int;
                  break;
               case 2:
                  _loc4_ += param1.charCodeAt(_loc5_) * 37 as int;
                  break;
            }
            _loc5_++;
         }
         _loc2_ = uint(_loc2_ % const_1534 + const_1530);
         _loc3_ = uint(_loc3_ % const_1529 + const_1532);
         _loc4_ = uint(_loc4_ % const_1533 + const_1531);
         return new ColorTransform(_loc2_ / 255,_loc3_ / 255,_loc4_ / 255);
      }
      
      public function sendAddToPlayListMessage(param1:int) : void
      {
         var _loc3_:int = 0;
         var _loc4_:* = null;
         var _loc2_:IPlayListController = this._soundManager.musicController.getRoomItemPlaylist();
         if(_loc2_ != null)
         {
            _loc3_ = _loc2_.length;
            _loc4_ = new RoomWidgetPlayListModificationMessage(RoomWidgetPlayListModificationMessage.const_963,_loc3_,param1);
            if(messageListener != null)
            {
               messageListener.processWidgetMessage(_loc4_);
            }
         }
      }
      
      public function sendRemoveFromPlayListMessage(param1:int) : void
      {
         var _loc2_:RoomWidgetPlayListModificationMessage = new RoomWidgetPlayListModificationMessage(RoomWidgetPlayListModificationMessage.const_973,param1);
         if(messageListener != null)
         {
            messageListener.processWidgetMessage(_loc2_);
         }
      }
      
      public function sendTogglePlayPauseStateMessage() : void
      {
         var _loc1_:int = 0;
         if(this.var_17 != null && this.var_17.playListEditorView != null)
         {
            _loc1_ = this.var_17.playListEditorView.selectedItemIndex != -1 ? int(this.var_17.playListEditorView.selectedItemIndex) : 0;
         }
         var _loc2_:RoomWidgetPlayListPlayStateMessage = new RoomWidgetPlayListPlayStateMessage(RoomWidgetPlayListPlayStateMessage.const_965,this._furniId,_loc1_);
         if(messageListener != null)
         {
            messageListener.processWidgetMessage(_loc2_);
         }
      }
      
      public function playUserSong(param1:int) : void
      {
         var _loc3_:* = null;
         var _loc2_:int = this._soundManager.musicController.getSongIdPlayingAtPriority(HabboMusicPrioritiesEnum.const_122);
         if(_loc2_ != -1)
         {
            _loc3_ = this._soundManager.musicController.getSongInfo(_loc2_);
            if(_loc3_.soundObject != null)
            {
               _loc3_.soundObject.fadeOutSeconds = 0;
            }
         }
         this._soundManager.musicController.playSong(param1,HabboMusicPrioritiesEnum.const_449,0,0,0,0);
      }
      
      public function stopUserSong() : void
      {
         this._soundManager.musicController.stop(HabboMusicPrioritiesEnum.const_449);
      }
      
      public function getImageGalleryAssetBitmap(param1:String) : BitmapData
      {
         var _loc3_:* = null;
         var _loc2_:BitmapDataAsset = this.assets.getAssetByName(param1) as BitmapDataAsset;
         if(_loc2_ == null)
         {
            return null;
         }
         _loc3_ = _loc2_.content as BitmapData;
         return _loc3_.clone();
      }
      
      public function retrieveWidgetImage(param1:String) : void
      {
         var _loc2_:String = this.var_173.getKey("image.library.playlist.url");
         var _loc3_:* = _loc2_ + param1 + ".gif";
         Logger.log("[PlayListEditorWidget]  : " + _loc3_);
         var _loc4_:URLRequest = new URLRequest(_loc3_);
         var _loc5_:AssetLoaderStruct = this.assets.loadAssetFromFile(param1,_loc4_,"image/gif");
         _loc5_.addEventListener(AssetLoaderEvent.ASSET_LOADER_EVENT_COMPLETE,this.onWidgetImageReady);
      }
      
      public function openSongDiskShopCataloguePage() : void
      {
         var _loc1_:RoomWidgetPlayListUserActionMessage = new RoomWidgetPlayListUserActionMessage(RoomWidgetPlayListUserActionMessage.const_913);
         if(messageListener != null)
         {
            messageListener.processWidgetMessage(_loc1_);
         }
         this._catalog.openCatalogPage(CatalogPageName.const_1832,true);
      }
      
      public function alertPlayListFull() : void
      {
         this.windowManager.alert("${playlist.editor.alert.playlist.full.title}","${playlist.editor.alert.playlist.full}",0,this.alertHandler);
      }
      
      private function alertHandler(param1:IAlertDialog, param2:WindowEvent) : void
      {
         param1.dispose();
      }
      
      private function onShowPlayListEditorEvent(param1:RoomWidgetPlayListEditorEvent) : void
      {
         var _loc2_:* = null;
         this._furniId = param1.furniId;
         if(!this.var_17)
         {
            this.var_17 = new MainWindowHandler(this,this._soundManager.musicController);
            this.var_17.window.visible = false;
         }
         if(!this.var_17.window.visible)
         {
            this.var_17.show();
            this._soundManager.musicController.requestUserSongDisks();
            _loc2_ = this._soundManager.musicController.getRoomItemPlaylist();
            if(_loc2_ != null)
            {
               _loc2_.requestPlayList();
            }
         }
      }
      
      private function onHidePlayListEditorEvent(param1:RoomWidgetPlayListEditorEvent) : void
      {
         if(this.var_17 != null)
         {
            if(this.var_17.window.visible)
            {
               this.var_17.hide();
            }
         }
      }
      
      private function onInventoryUpdatedEvent(param1:RoomWidgetPlayListEditorEvent) : void
      {
         if(!this.var_17)
         {
            return;
         }
         if(this.var_17.window.visible)
         {
            this._soundManager.musicController.requestUserSongDisks();
         }
      }
      
      private function onWidgetImageReady(param1:AssetLoaderEvent) : void
      {
         var _loc2_:* = null;
         if(param1.type == AssetLoaderEvent.ASSET_LOADER_EVENT_COMPLETE)
         {
            _loc2_ = param1.target as AssetLoaderStruct;
            if(_loc2_ != null)
            {
               if(this.var_17 != null)
               {
                  this.var_17.refreshLoadableAsset(_loc2_.assetName);
               }
            }
         }
      }
      
      private function onSongDiskInventoryUpdatedEvent(param1:RoomWidgetPlayListEditorEvent) : void
      {
         if(this.var_17)
         {
            this.var_17.onSongDiskInventoryReceived();
         }
      }
      
      private function onPlayListUpdatedEvent(param1:RoomWidgetPlayListEditorEvent) : void
      {
         if(this.var_17)
         {
            this.var_17.onPlayListUpdated();
         }
      }
      
      private function onPlayListFullEvent(param1:RoomWidgetPlayListEditorEvent) : void
      {
         this.alertPlayListFull();
      }
      
      private function onNowPlayingChangedEvent(param1:RoomWidgetPlayListEditorNowPlayingEvent) : void
      {
         if(this.var_17)
         {
            this.var_17.onNowPlayingChanged(param1);
         }
      }
   }
}
