package com.sulake.core.runtime
{
   class ComponentInterfaceQueue implements IDisposable
   {
       
      
      private var var_1798:IID;
      
      private var var_1129:Boolean;
      
      private var var_1181:Array;
      
      function ComponentInterfaceQueue(param1:IID)
      {
         super();
         this.var_1798 = param1;
         this.var_1181 = new Array();
         this.var_1129 = false;
      }
      
      public function get identifier() : IID
      {
         return this.var_1798;
      }
      
      public function get disposed() : Boolean
      {
         return this.var_1129;
      }
      
      public function get receivers() : Array
      {
         return this.var_1181;
      }
      
      public function dispose() : void
      {
         if(!this.var_1129)
         {
            this.var_1129 = true;
            this.var_1798 = null;
            while(this.var_1181.length > 0)
            {
               this.var_1181.pop();
            }
            this.var_1181 = null;
         }
      }
   }
}
