package com.sulake.habbo.room.object.visualization.data
{
   public class LayerData
   {
      
      public static const const_932:String = "";
      
      public static const const_446:int = 0;
      
      public static const const_618:int = 255;
      
      public static const const_777:Boolean = false;
      
      public static const const_662:int = 0;
      
      public static const const_608:int = 0;
      
      public static const const_421:int = 0;
      
      public static const const_1304:int = 1;
      
      public static const const_1300:int = 2;
      
      public static const INK_DARKEN:int = 3;
       
      
      private var var_2405:String = "";
      
      private var var_1851:int = 0;
      
      private var var_2588:int = 255;
      
      private var var_2943:Boolean = false;
      
      private var var_2944:int = 0;
      
      private var var_2941:int = 0;
      
      private var var_2942:Number = 0;
      
      public function LayerData()
      {
         super();
      }
      
      public function set tag(param1:String) : void
      {
         this.var_2405 = param1;
      }
      
      public function get tag() : String
      {
         return this.var_2405;
      }
      
      public function set ink(param1:int) : void
      {
         this.var_1851 = param1;
      }
      
      public function get ink() : int
      {
         return this.var_1851;
      }
      
      public function set alpha(param1:int) : void
      {
         this.var_2588 = param1;
      }
      
      public function get alpha() : int
      {
         return this.var_2588;
      }
      
      public function set ignoreMouse(param1:Boolean) : void
      {
         this.var_2943 = param1;
      }
      
      public function get ignoreMouse() : Boolean
      {
         return this.var_2943;
      }
      
      public function set xOffset(param1:int) : void
      {
         this.var_2944 = param1;
      }
      
      public function get xOffset() : int
      {
         return this.var_2944;
      }
      
      public function set yOffset(param1:int) : void
      {
         this.var_2941 = param1;
      }
      
      public function get yOffset() : int
      {
         return this.var_2941;
      }
      
      public function set zOffset(param1:Number) : void
      {
         this.var_2942 = param1;
      }
      
      public function get zOffset() : Number
      {
         return this.var_2942;
      }
      
      public function copyValues(param1:LayerData) : void
      {
         if(param1 != null)
         {
            this.tag = param1.tag;
            this.ink = param1.ink;
            this.alpha = param1.alpha;
            this.ignoreMouse = param1.ignoreMouse;
            this.xOffset = param1.xOffset;
            this.yOffset = param1.yOffset;
            this.zOffset = param1.zOffset;
         }
      }
   }
}
