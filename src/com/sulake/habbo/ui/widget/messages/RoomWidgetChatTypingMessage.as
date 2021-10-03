package com.sulake.habbo.ui.widget.messages
{
   public class RoomWidgetChatTypingMessage extends RoomWidgetMessage
   {
      
      public static const const_903:String = "RWCTM_TYPING_STATUS";
       
      
      private var var_660:Boolean;
      
      public function RoomWidgetChatTypingMessage(param1:Boolean)
      {
         super(const_903);
         this.var_660 = param1;
      }
      
      public function get isTyping() : Boolean
      {
         return this.var_660;
      }
   }
}
