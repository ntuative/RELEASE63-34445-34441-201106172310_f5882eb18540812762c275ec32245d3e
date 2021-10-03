package com.sulake.habbo.ui.widget.messages
{
   public class RoomWidgetOpenInventoryMessage extends RoomWidgetMessage
   {
      
      public static const const_872:String = "RWGOI_MESSAGE_OPEN_INVENTORY";
      
      public static const const_1815:String = "inventory_effects";
      
      public static const const_1193:String = "inventory_badges";
      
      public static const const_2001:String = "inventory_clothes";
      
      public static const const_1800:String = "inventory_furniture";
       
      
      private var var_2374:String;
      
      public function RoomWidgetOpenInventoryMessage(param1:String)
      {
         super(const_872);
         this.var_2374 = param1;
      }
      
      public function get inventoryType() : String
      {
         return this.var_2374;
      }
   }
}
