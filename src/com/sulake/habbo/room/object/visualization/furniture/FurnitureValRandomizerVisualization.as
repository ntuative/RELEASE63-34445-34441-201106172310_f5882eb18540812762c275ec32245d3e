package com.sulake.habbo.room.object.visualization.furniture
{
   public class FurnitureValRandomizerVisualization extends AnimatedFurnitureVisualization
   {
      
      private static const const_1044:int = 20;
      
      private static const const_678:int = 10;
      
      private static const const_1453:int = 31;
      
      private static const const_1452:int = 32;
      
      private static const const_677:int = 30;
       
      
      private var var_314:Array;
      
      private var var_867:Boolean = false;
      
      public function FurnitureValRandomizerVisualization()
      {
         this.var_314 = new Array();
         super();
         super.setAnimation(const_677);
      }
      
      override protected function setAnimation(param1:int) : void
      {
         if(param1 == 0)
         {
            if(!this.var_867)
            {
               this.var_867 = true;
               this.var_314 = new Array();
               this.var_314.push(const_1453);
               this.var_314.push(const_1452);
               return;
            }
         }
         if(param1 > 0 && param1 <= const_678)
         {
            if(this.var_867)
            {
               this.var_867 = false;
               this.var_314 = new Array();
               if(direction == 2)
               {
                  this.var_314.push(const_1044 + 5 - param1);
                  this.var_314.push(const_678 + 5 - param1);
               }
               else
               {
                  this.var_314.push(const_1044 + param1);
                  this.var_314.push(const_678 + param1);
               }
               this.var_314.push(const_677);
               return;
            }
            super.setAnimation(const_677);
         }
      }
      
      override protected function updateAnimation(param1:Number) : int
      {
         if(super.getLastFramePlayed(11))
         {
            if(this.var_314.length > 0)
            {
               super.setAnimation(this.var_314.shift());
            }
         }
         return super.updateAnimation(param1);
      }
   }
}
