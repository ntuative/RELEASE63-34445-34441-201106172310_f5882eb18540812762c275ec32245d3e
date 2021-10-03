package com.sulake.habbo.room.object.visualization.furniture
{
   public class FurnitureBottleVisualization extends AnimatedFurnitureVisualization
   {
      
      private static const const_1044:int = 20;
      
      private static const const_678:int = 9;
      
      private static const const_1452:int = -1;
       
      
      private var var_314:Array;
      
      private var var_867:Boolean = false;
      
      public function FurnitureBottleVisualization()
      {
         this.var_314 = new Array();
         super();
      }
      
      override protected function setAnimation(param1:int) : void
      {
         if(param1 == -1)
         {
            if(!this.var_867)
            {
               this.var_867 = true;
               this.var_314 = new Array();
               this.var_314.push(const_1452);
               return;
            }
         }
         if(param1 >= 0 && param1 <= 7)
         {
            if(this.var_867)
            {
               this.var_867 = false;
               this.var_314 = new Array();
               this.var_314.push(const_1044);
               this.var_314.push(const_678 + param1);
               this.var_314.push(param1);
               return;
            }
            super.setAnimation(param1);
         }
      }
      
      override protected function updateAnimation(param1:Number) : int
      {
         if(super.getLastFramePlayed(0))
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
