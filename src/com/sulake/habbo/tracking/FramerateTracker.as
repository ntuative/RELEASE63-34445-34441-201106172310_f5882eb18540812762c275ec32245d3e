package com.sulake.habbo.tracking
{
   import com.sulake.habbo.configuration.IHabboConfigurationManager;
   
   public class FramerateTracker
   {
       
      
      private var var_1731:int;
      
      private var var_2367:int;
      
      private var var_742:int;
      
      private var var_524:Number;
      
      private var var_2368:Boolean;
      
      private var var_2369:int;
      
      private var var_1756:int;
      
      public function FramerateTracker()
      {
         super();
      }
      
      public function get frameRate() : int
      {
         return Math.round(1000 / this.var_524);
      }
      
      public function configure(param1:IHabboConfigurationManager) : void
      {
         this.var_2367 = int(param1.getKey("tracking.framerate.reportInterval.seconds","300")) * 1000;
         this.var_2369 = int(param1.getKey("tracking.framerate.maximumEvents","5"));
         this.var_2368 = true;
      }
      
      public function trackUpdate(param1:uint, param2:IHabboTracking, param3:int) : void
      {
         var _loc4_:Number = NaN;
         ++this.var_742;
         if(this.var_742 == 1)
         {
            this.var_524 = param1;
            this.var_1731 = param3;
         }
         else
         {
            _loc4_ = Number(this.var_742);
            this.var_524 = this.var_524 * (_loc4_ - 1) / _loc4_ + Number(param1) / _loc4_;
         }
         if(this.var_2368 && param3 - this.var_1731 >= this.var_2367)
         {
            this.var_742 = 0;
            if(this.var_1756 < this.var_2369)
            {
               param2.trackGoogle("performance","averageFramerate",this.frameRate);
               ++this.var_1756;
               this.var_1731 = param3;
            }
         }
      }
      
      public function dispose() : void
      {
      }
   }
}
