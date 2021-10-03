package com.sulake.habbo.sound.music
{
   import flash.utils.getTimer;
   
   public class SongStartRequestData
   {
       
      
      private var var_1861:int;
      
      private var var_2121:Number;
      
      private var var_2938:Number;
      
      private var var_2937:int;
      
      private var var_2935:Number;
      
      private var var_2936:Number;
      
      public function SongStartRequestData(param1:int, param2:Number, param3:Number, param4:Number = 2.0, param5:Number = 1.0)
      {
         super();
         this.var_1861 = param1;
         this.var_2121 = param2;
         this.var_2938 = param3;
         this.var_2935 = param4;
         this.var_2936 = param5;
         this.var_2937 = getTimer();
      }
      
      public function get songId() : int
      {
         return this.var_1861;
      }
      
      public function get startPos() : Number
      {
         if(this.var_2121 < 0)
         {
            return 0;
         }
         return this.var_2121 + (getTimer() - this.var_2937) / 1000;
      }
      
      public function get playLength() : Number
      {
         return this.var_2938;
      }
      
      public function get fadeInSeconds() : Number
      {
         return this.var_2935;
      }
      
      public function get fadeOutSeconds() : Number
      {
         return this.var_2936;
      }
   }
}
