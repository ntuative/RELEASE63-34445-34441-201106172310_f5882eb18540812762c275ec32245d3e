package com.sulake.habbo.catalog.purse
{
   import flash.utils.Dictionary;
   
   public class Purse implements IPurse
   {
       
      
      private var var_2235:int = 0;
      
      private var var_1410:Dictionary;
      
      private var var_1688:int = 0;
      
      private var var_1687:int = 0;
      
      private var var_2236:Boolean = false;
      
      private var var_2234:int = 0;
      
      private var var_2237:int = 0;
      
      public function Purse()
      {
         this.var_1410 = new Dictionary();
         super();
      }
      
      public function get credits() : int
      {
         return this.var_2235;
      }
      
      public function set credits(param1:int) : void
      {
         this.var_2235 = param1;
      }
      
      public function get clubDays() : int
      {
         return this.var_1688;
      }
      
      public function set clubDays(param1:int) : void
      {
         this.var_1688 = param1;
      }
      
      public function get clubPeriods() : int
      {
         return this.var_1687;
      }
      
      public function set clubPeriods(param1:int) : void
      {
         this.var_1687 = param1;
      }
      
      public function get hasClubLeft() : Boolean
      {
         return this.var_1688 > 0 || this.var_1687 > 0;
      }
      
      public function get isVIP() : Boolean
      {
         return this.var_2236;
      }
      
      public function set isVIP(param1:Boolean) : void
      {
         this.var_2236 = param1;
      }
      
      public function get pastClubDays() : int
      {
         return this.var_2234;
      }
      
      public function set pastClubDays(param1:int) : void
      {
         this.var_2234 = param1;
      }
      
      public function get pastVipDays() : int
      {
         return this.var_2237;
      }
      
      public function set pastVipDays(param1:int) : void
      {
         this.var_2237 = param1;
      }
      
      public function get activityPoints() : Dictionary
      {
         return this.var_1410;
      }
      
      public function set activityPoints(param1:Dictionary) : void
      {
         this.var_1410 = param1;
      }
      
      public function getActivityPointsForType(param1:int) : int
      {
         return this.var_1410[param1];
      }
   }
}
