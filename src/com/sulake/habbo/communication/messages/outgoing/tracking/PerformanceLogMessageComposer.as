package com.sulake.habbo.communication.messages.outgoing.tracking
{
   import com.sulake.core.communication.messages.IMessageComposer;
   
   public class PerformanceLogMessageComposer implements IMessageComposer
   {
       
      
      private var var_2357:int = 0;
      
      private var var_1433:String = "";
      
      private var var_1729:String = "";
      
      private var var_2320:String = "";
      
      private var var_2356:String = "";
      
      private var var_1744:int = 0;
      
      private var var_2354:int = 0;
      
      private var var_2355:int = 0;
      
      private var var_1435:int = 0;
      
      private var var_2358:int = 0;
      
      private var var_1434:int = 0;
      
      public function PerformanceLogMessageComposer(param1:int, param2:String, param3:String, param4:String, param5:String, param6:Boolean, param7:int, param8:int, param9:int, param10:int, param11:int)
      {
         super();
         this.var_2357 = param1;
         this.var_1433 = param2;
         this.var_1729 = param3;
         this.var_2320 = param4;
         this.var_2356 = param5;
         if(param6)
         {
            this.var_1744 = 1;
         }
         else
         {
            this.var_1744 = 0;
         }
         this.var_2354 = param7;
         this.var_2355 = param8;
         this.var_1435 = param9;
         this.var_2358 = param10;
         this.var_1434 = param11;
      }
      
      public function dispose() : void
      {
      }
      
      public function getMessageArray() : Array
      {
         return [this.var_2357,this.var_1433,this.var_1729,this.var_2320,this.var_2356,this.var_1744,this.var_2354,this.var_2355,this.var_1435,this.var_2358,this.var_1434];
      }
   }
}
