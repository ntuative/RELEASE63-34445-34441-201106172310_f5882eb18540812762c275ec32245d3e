package com.sulake.habbo.ui.widget.messages
{
   public class RoomWidgetPetCommandMessage extends RoomWidgetMessage
   {
      
      public static const const_848:String = "RWPCM_REQUEST_PET_COMMANDS";
      
      public static const const_541:String = "RWPCM_PET_COMMAND";
       
      
      private var var_1927:int = 0;
      
      private var var_201:String;
      
      public function RoomWidgetPetCommandMessage(param1:String, param2:int, param3:String = null)
      {
         super(param1);
         this.var_1927 = param2;
         this.var_201 = param3;
      }
      
      public function get petId() : int
      {
         return this.var_1927;
      }
      
      public function get value() : String
      {
         return this.var_201;
      }
   }
}
