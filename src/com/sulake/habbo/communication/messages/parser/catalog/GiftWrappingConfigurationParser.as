package com.sulake.habbo.communication.messages.parser.catalog
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class GiftWrappingConfigurationParser implements IMessageParser
   {
       
      
      private var var_2777:Boolean;
      
      private var var_2778:int;
      
      private var var_1995:Array;
      
      private var var_861:Array;
      
      private var var_862:Array;
      
      public function GiftWrappingConfigurationParser()
      {
         super();
      }
      
      public function get isWrappingEnabled() : Boolean
      {
         return this.var_2777;
      }
      
      public function get wrappingPrice() : int
      {
         return this.var_2778;
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
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         var _loc2_:int = 0;
         this.var_1995 = [];
         this.var_861 = [];
         this.var_862 = [];
         this.var_2777 = param1.readBoolean();
         this.var_2778 = param1.readInteger();
         var _loc3_:int = param1.readInteger();
         _loc2_ = 0;
         while(_loc2_ < _loc3_)
         {
            this.var_1995.push(param1.readInteger());
            _loc2_++;
         }
         _loc3_ = param1.readInteger();
         _loc2_ = 0;
         while(_loc2_ < _loc3_)
         {
            this.var_861.push(param1.readInteger());
            _loc2_++;
         }
         _loc3_ = param1.readInteger();
         _loc2_ = 0;
         while(_loc2_ < _loc3_)
         {
            this.var_862.push(param1.readInteger());
            _loc2_++;
         }
         return true;
      }
   }
}
