package com.sulake.habbo.communication.messages.incoming.catalog
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class CatalogPageMessageOfferData
   {
       
      
      private var var_1302:int;
      
      private var var_2028:String;
      
      private var var_1305:int;
      
      private var var_1304:int;
      
      private var var_2027:int;
      
      private var var_1832:int;
      
      private var var_1326:Array;
      
      public function CatalogPageMessageOfferData(param1:IMessageDataWrapper)
      {
         super();
         this.var_1302 = param1.readInteger();
         this.var_2028 = param1.readString();
         this.var_1305 = param1.readInteger();
         this.var_1304 = param1.readInteger();
         this.var_2027 = param1.readInteger();
         var _loc2_:int = param1.readInteger();
         this.var_1326 = new Array();
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_)
         {
            this.var_1326.push(new CatalogPageMessageProductData(param1));
            _loc3_++;
         }
         this.var_1832 = param1.readInteger();
      }
      
      public function get offerId() : int
      {
         return this.var_1302;
      }
      
      public function get localizationId() : String
      {
         return this.var_2028;
      }
      
      public function get priceInCredits() : int
      {
         return this.var_1305;
      }
      
      public function get priceInActivityPoints() : int
      {
         return this.var_1304;
      }
      
      public function get products() : Array
      {
         return this.var_1326;
      }
      
      public function get activityPointType() : int
      {
         return this.var_2027;
      }
      
      public function get clubLevel() : int
      {
         return this.var_1832;
      }
   }
}
