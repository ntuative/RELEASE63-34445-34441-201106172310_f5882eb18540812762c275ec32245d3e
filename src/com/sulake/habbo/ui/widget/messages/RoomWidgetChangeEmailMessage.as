package com.sulake.habbo.ui.widget.messages
{
   public class RoomWidgetChangeEmailMessage extends RoomWidgetMessage
   {
      
      public static const const_722:String = "rwcem_change_email";
       
      
      private var var_2385:String;
      
      public function RoomWidgetChangeEmailMessage(param1:String)
      {
         super(const_722);
         this.var_2385 = param1;
      }
      
      public function get newEmail() : String
      {
         return this.var_2385;
      }
   }
}
