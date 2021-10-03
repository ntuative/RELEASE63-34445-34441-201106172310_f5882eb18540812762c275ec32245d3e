package com.sulake.habbo.communication.messages.incoming.catalog
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class CatalogPageMessageProductData
   {
      
      public static const const_64:String = "i";
      
      public static const const_72:String = "s";
      
      public static const const_181:String = "e";
       
      
      private var var_1656:String;
      
      private var var_2549:int;
      
      private var var_1113:String;
      
      private var var_1657:int;
      
      private var var_2131:int;
      
      public function CatalogPageMessageProductData(param1:IMessageDataWrapper)
      {
         super();
         this.var_1656 = param1.readString();
         this.var_2549 = param1.readInteger();
         this.var_1113 = param1.readString();
         this.var_1657 = param1.readInteger();
         this.var_2131 = param1.readInteger();
      }
      
      public function get productType() : String
      {
         return this.var_1656;
      }
      
      public function get furniClassId() : int
      {
         return this.var_2549;
      }
      
      public function get extraParam() : String
      {
         return this.var_1113;
      }
      
      public function get productCount() : int
      {
         return this.var_1657;
      }
      
      public function get expiration() : int
      {
         return this.var_2131;
      }
   }
}
