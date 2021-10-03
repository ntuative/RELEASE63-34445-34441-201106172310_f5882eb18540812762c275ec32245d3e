package com.sulake.habbo.communication.messages.outgoing.tracking
{
   import com.sulake.core.communication.messages.IMessageComposer;
   
   public class LatencyPingReportMessageComposer implements IMessageComposer
   {
       
      
      private var var_2761:int;
      
      private var var_2762:int;
      
      private var var_2763:int;
      
      public function LatencyPingReportMessageComposer(param1:int, param2:int, param3:int)
      {
         super();
         this.var_2761 = param1;
         this.var_2762 = param2;
         this.var_2763 = param3;
      }
      
      public function getMessageArray() : Array
      {
         return [this.var_2761,this.var_2762,this.var_2763];
      }
      
      public function dispose() : void
      {
      }
   }
}
