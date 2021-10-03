package com.sulake.habbo.ui.widget.messages
{
   public class RoomWidgetStoreSettingsMessage extends RoomWidgetMessage
   {
      
      public static const const_1901:String = "RWSSM_STORE_SETTINGS";
      
      public static const const_951:String = "RWSSM_STORE_SOUND";
      
      public static const const_984:String = "RWSSM_PREVIEW_SOUND";
       
      
      private var var_942:Number;
      
      public function RoomWidgetStoreSettingsMessage(param1:String)
      {
         super(param1);
      }
      
      public function get volume() : Number
      {
         return this.var_942;
      }
      
      public function set volume(param1:Number) : void
      {
         this.var_942 = param1;
      }
   }
}
