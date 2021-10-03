package com.sulake.habbo.catalog.purchase
{
   import com.sulake.habbo.communication.messages.incoming.catalog.GiftWrappingConfigurationEvent;
   import com.sulake.habbo.communication.messages.parser.catalog.GiftWrappingConfigurationParser;
   
   public class GiftWrappingConfiguration
   {
       
      
      private var var_1573:Boolean = false;
      
      private var var_1763:int;
      
      private var var_1995:Array;
      
      private var var_861:Array;
      
      private var var_862:Array;
      
      public function GiftWrappingConfiguration(param1:GiftWrappingConfigurationEvent)
      {
         super();
         if(param1 == null)
         {
            return;
         }
         var _loc2_:GiftWrappingConfigurationParser = param1.getParser();
         if(_loc2_ == null)
         {
            return;
         }
         this.var_1573 = _loc2_.isWrappingEnabled;
         this.var_1763 = _loc2_.wrappingPrice;
         this.var_1995 = _loc2_.stuffTypes;
         this.var_861 = _loc2_.boxTypes;
         this.var_862 = _loc2_.ribbonTypes;
      }
      
      public function get isEnabled() : Boolean
      {
         return this.var_1573;
      }
      
      public function get price() : int
      {
         return this.var_1763;
      }
      
      public function get stuffTypes() : Array
      {
         return this.var_1995;
      }
      
      public function get boxTypes() : Array
      {
         return this.var_861;
      }
      
      public function get ribbonTypes() : Array
      {
         return this.var_862;
      }
   }
}
