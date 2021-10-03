package com.sulake.habbo.inventory.purse
{
   public class Purse
   {
       
      
      private var var_1688:int = 0;
      
      private var var_1687:int = 0;
      
      private var var_2394:int = 0;
      
      private var var_2395:Boolean = false;
      
      private var var_2236:Boolean = false;
      
      public function Purse()
      {
         super();
      }
      
      public function set clubDays(param1:int) : void
      {
         this.var_1688 = Math.max(0,param1);
      }
      
      public function set clubPeriods(param1:int) : void
      {
         this.var_1687 = Math.max(0,param1);
      }
      
      public function set clubPastPeriods(param1:int) : void
      {
         this.var_2394 = Math.max(0,param1);
      }
      
      public function set clubHasEverBeenMember(param1:Boolean) : void
      {
         this.var_2395 = param1;
      }
      
      public function set isVIP(param1:Boolean) : void
      {
         this.var_2236 = param1;
      }
      
      public function get clubDays() : int
      {
         return this.var_1688;
      }
      
      public function get clubPeriods() : int
      {
         return this.var_1687;
      }
      
      public function get clubPastPeriods() : int
      {
         return this.var_2394;
      }
      
      public function get clubHasEverBeenMember() : Boolean
      {
         return this.var_2395;
      }
      
      public function get isVIP() : Boolean
      {
         return this.var_2236;
      }
   }
}
