package com.sulake.habbo.tracking
{
   import com.sulake.habbo.configuration.IHabboConfigurationManager;
   
   public class ToolbarClickTracker
   {
       
      
      private var var_1409:IHabboTracking;
      
      private var var_1802:Boolean = false;
      
      private var var_2770:int = 0;
      
      private var var_1988:int = 0;
      
      public function ToolbarClickTracker(param1:IHabboTracking)
      {
         super();
         this.var_1409 = param1;
      }
      
      public function dispose() : void
      {
         this.var_1409 = null;
      }
      
      public function configure(param1:IHabboConfigurationManager) : void
      {
         this.var_1802 = Boolean(parseInt(param1.getKey("toolbar.tracking.enabled","1")));
         this.var_2770 = parseInt(param1.getKey("toolbar.tracking.max.events","100"));
      }
      
      public function track(param1:String) : void
      {
         if(!this.var_1802)
         {
            return;
         }
         ++this.var_1988;
         if(this.var_1988 <= this.var_2770)
         {
            this.var_1409.trackGoogle("toolbar",param1);
         }
      }
   }
}
