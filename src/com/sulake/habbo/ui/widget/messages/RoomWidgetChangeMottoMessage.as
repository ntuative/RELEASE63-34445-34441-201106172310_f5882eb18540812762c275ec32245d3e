package com.sulake.habbo.ui.widget.messages
{
   public class RoomWidgetChangeMottoMessage extends RoomWidgetMessage
   {
      
      public static const const_858:String = "RWVM_CHANGE_MOTTO_MESSAGE";
       
      
      private var var_1913:String;
      
      public function RoomWidgetChangeMottoMessage(param1:String)
      {
         super(const_858);
         this.var_1913 = param1;
      }
      
      public function get motto() : String
      {
         return this.var_1913;
      }
   }
}
