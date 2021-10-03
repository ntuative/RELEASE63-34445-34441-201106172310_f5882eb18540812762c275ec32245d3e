package com.sulake.habbo.room.object
{
   public class RoomPlaneMaskData
   {
       
      
      private var var_2869:Number = 0.0;
      
      private var var_2867:Number = 0.0;
      
      private var var_2868:Number = 0.0;
      
      private var var_2870:Number = 0.0;
      
      public function RoomPlaneMaskData(param1:Number, param2:Number, param3:Number, param4:Number)
      {
         super();
         this.var_2869 = param1;
         this.var_2867 = param2;
         this.var_2868 = param3;
         this.var_2870 = param4;
      }
      
      public function get leftSideLoc() : Number
      {
         return this.var_2869;
      }
      
      public function get rightSideLoc() : Number
      {
         return this.var_2867;
      }
      
      public function get leftSideLength() : Number
      {
         return this.var_2868;
      }
      
      public function get rightSideLength() : Number
      {
         return this.var_2870;
      }
   }
}
