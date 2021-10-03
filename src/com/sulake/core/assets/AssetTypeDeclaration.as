package com.sulake.core.assets
{
   public class AssetTypeDeclaration
   {
       
      
      private var var_2299:String;
      
      private var var_2297:Class;
      
      private var var_2298:Class;
      
      private var var_1712:Array;
      
      public function AssetTypeDeclaration(param1:String, param2:Class, param3:Class, ... rest)
      {
         super();
         this.var_2299 = param1;
         this.var_2297 = param2;
         this.var_2298 = param3;
         if(rest == null)
         {
            this.var_1712 = new Array();
         }
         else
         {
            this.var_1712 = rest;
         }
      }
      
      public function get mimeType() : String
      {
         return this.var_2299;
      }
      
      public function get assetClass() : Class
      {
         return this.var_2297;
      }
      
      public function get loaderClass() : Class
      {
         return this.var_2298;
      }
      
      public function get fileTypes() : Array
      {
         return this.var_1712;
      }
   }
}
