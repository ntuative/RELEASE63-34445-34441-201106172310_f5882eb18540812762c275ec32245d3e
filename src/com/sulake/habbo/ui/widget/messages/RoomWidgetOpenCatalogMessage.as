package com.sulake.habbo.ui.widget.messages
{
   public class RoomWidgetOpenCatalogMessage extends RoomWidgetMessage
   {
      
      public static const const_928:String = "RWGOI_MESSAGE_OPEN_CATALOG";
      
      public static const const_1238:String = "RWOCM_CLUB_MAIN";
      
      public static const const_2159:String = "RWOCM_PIXELS";
      
      public static const const_2277:String = "RWOCM_CREDITS";
      
      public static const const_2181:String = "RWOCM_SHELLS";
       
      
      private var var_2919:String = "";
      
      public function RoomWidgetOpenCatalogMessage(param1:String)
      {
         super(const_928);
         this.var_2919 = param1;
      }
      
      public function get pageKey() : String
      {
         return this.var_2919;
      }
   }
}
