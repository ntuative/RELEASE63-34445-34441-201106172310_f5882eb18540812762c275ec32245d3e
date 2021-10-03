package com.sulake.room.events
{
   public class RoomObjectMouseEvent extends RoomObjectEvent
   {
      
      public static const const_151:String = "ROE_MOUSE_CLICK";
      
      public static const const_185:String = "ROE_MOUSE_ENTER";
      
      public static const const_527:String = "ROE_MOUSE_MOVE";
      
      public static const const_173:String = "ROE_MOUSE_LEAVE";
      
      public static const const_2192:String = "ROE_MOUSE_DOUBLE_CLICK";
      
      public static const const_493:String = "ROE_MOUSE_DOWN";
       
      
      private var var_1708:String = "";
      
      private var var_2329:Boolean;
      
      private var var_2330:Boolean;
      
      private var var_2327:Boolean;
      
      private var var_2328:Boolean;
      
      public function RoomObjectMouseEvent(param1:String, param2:String, param3:int, param4:String, param5:Boolean = false, param6:Boolean = false, param7:Boolean = false, param8:Boolean = false, param9:Boolean = false, param10:Boolean = false)
      {
         super(param1,param3,param4,param9,param10);
         this.var_1708 = param2;
         this.var_2329 = param5;
         this.var_2330 = param6;
         this.var_2327 = param7;
         this.var_2328 = param8;
      }
      
      public function get eventId() : String
      {
         return this.var_1708;
      }
      
      public function get altKey() : Boolean
      {
         return this.var_2329;
      }
      
      public function get ctrlKey() : Boolean
      {
         return this.var_2330;
      }
      
      public function get shiftKey() : Boolean
      {
         return this.var_2327;
      }
      
      public function get buttonDown() : Boolean
      {
         return this.var_2328;
      }
   }
}
