package com.sulake.habbo.room.object.visualization.furniture
{
   public class FurnitureQueueTileVisualization extends AnimatedFurnitureVisualization
   {
      
      private static const const_1452:int = 3;
      
      private static const const_1483:int = 2;
      
      private static const const_1482:int = 1;
      
      private static const const_1481:int = 15;
       
      
      private var var_314:Array;
      
      private var var_1208:int;
      
      public function FurnitureQueueTileVisualization()
      {
         this.var_314 = new Array();
         super();
      }
      
      override protected function setAnimation(param1:int) : void
      {
         if(param1 == const_1483)
         {
            this.var_314 = new Array();
            this.var_314.push(const_1482);
            this.var_1208 = const_1481;
         }
         super.setAnimation(param1);
      }
      
      override protected function updateAnimation(param1:Number) : int
      {
         if(this.var_1208 > 0)
         {
            --this.var_1208;
         }
         if(this.var_1208 == 0)
         {
            if(this.var_314.length > 0)
            {
               super.setAnimation(this.var_314.shift());
            }
         }
         return super.updateAnimation(param1);
      }
      
      override protected function usesAnimationResetting() : Boolean
      {
         return true;
      }
   }
}
