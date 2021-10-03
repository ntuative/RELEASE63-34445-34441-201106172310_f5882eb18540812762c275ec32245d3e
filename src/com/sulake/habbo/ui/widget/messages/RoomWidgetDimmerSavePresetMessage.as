package com.sulake.habbo.ui.widget.messages
{
   public class RoomWidgetDimmerSavePresetMessage extends RoomWidgetMessage
   {
      
      public static const const_767:String = "RWSDPM_SAVE_PRESET";
       
      
      private var var_2434:int;
      
      private var var_2432:int;
      
      private var _color:uint;
      
      private var var_1369:int;
      
      private var var_2955:Boolean;
      
      public function RoomWidgetDimmerSavePresetMessage(param1:int, param2:int, param3:uint, param4:int, param5:Boolean)
      {
         super(const_767);
         this.var_2434 = param1;
         this.var_2432 = param2;
         this._color = param3;
         this.var_1369 = param4;
         this.var_2955 = param5;
      }
      
      public function get presetNumber() : int
      {
         return this.var_2434;
      }
      
      public function get effectTypeId() : int
      {
         return this.var_2432;
      }
      
      public function get color() : uint
      {
         return this._color;
      }
      
      public function get brightness() : int
      {
         return this.var_1369;
      }
      
      public function get apply() : Boolean
      {
         return this.var_2955;
      }
   }
}
