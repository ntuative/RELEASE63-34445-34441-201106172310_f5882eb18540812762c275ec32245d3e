package com.sulake.habbo.catalog.viewer
{
   import com.sulake.habbo.catalog.IPurchasableOffer;
   import com.sulake.habbo.session.furniture.IFurnitureData;
   import com.sulake.habbo.session.product.IProductData;
   
   public class Offer implements IPurchasableOffer
   {
      
      public static const const_1843:String = "pricing_model_unknown";
      
      public static const const_404:String = "pricing_model_single";
      
      public static const const_420:String = "pricing_model_multi";
      
      public static const const_559:String = "pricing_model_bundle";
      
      public static const const_1868:String = "price_type_none";
      
      public static const const_739:String = "price_type_credits";
      
      public static const const_1175:String = "price_type_activitypoints";
      
      public static const const_1174:String = "price_type_credits_and_activitypoints";
       
      
      private var var_868:String;
      
      private var var_1303:String;
      
      private var var_1302:int;
      
      private var var_2028:String;
      
      private var var_1305:int;
      
      private var var_1304:int;
      
      private var var_2027:int;
      
      private var var_408:ICatalogPage;
      
      private var var_690:IProductContainer;
      
      private var _disposed:Boolean = false;
      
      private var var_1832:int = 0;
      
      private var var_2812:int;
      
      public function Offer(param1:int, param2:String, param3:int, param4:int, param5:int, param6:int, param7:Array, param8:ICatalogPage)
      {
         super();
         this.var_1302 = param1;
         this.var_2028 = param2;
         this.var_1305 = param3;
         this.var_1304 = param4;
         this.var_2027 = param5;
         this.var_408 = param8;
         this.var_1832 = param6;
         this.analyzePricingModel(param7);
         this.analyzePriceType();
         this.createProductContainer(param7);
      }
      
      public function get clubLevel() : int
      {
         return this.var_1832;
      }
      
      public function get page() : ICatalogPage
      {
         return this.var_408;
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
      
      public function get activityPointType() : int
      {
         return this.var_2027;
      }
      
      public function get productContainer() : IProductContainer
      {
         return this.var_690;
      }
      
      public function get pricingModel() : String
      {
         return this.var_868;
      }
      
      public function get priceType() : String
      {
         return this.var_1303;
      }
      
      public function get previewCallbackId() : int
      {
         return this.var_2812;
      }
      
      public function set previewCallbackId(param1:int) : void
      {
         this.var_2812 = param1;
      }
      
      public function dispose() : void
      {
         if(this.disposed)
         {
            return;
         }
         this._disposed = true;
         this.var_1302 = 0;
         this.var_2028 = "";
         this.var_1305 = 0;
         this.var_1304 = 0;
         this.var_2027 = 0;
         this.var_408 = null;
         if(this.var_690 != null)
         {
            this.var_690.dispose();
            this.var_690 = null;
         }
      }
      
      public function get disposed() : Boolean
      {
         return this._disposed;
      }
      
      private function createProductContainer(param1:Array) : void
      {
         switch(this.var_868)
         {
            case const_404:
               this.var_690 = new SingleProductContainer(this,param1);
               break;
            case const_420:
               this.var_690 = new MultiProductContainer(this,param1);
               break;
            case const_559:
               this.var_690 = new BundleProductContainer(this,param1);
               break;
            default:
               Logger.log("[Offer] Unknown pricing model" + this.var_868);
         }
      }
      
      private function analyzePricingModel(param1:Array) : void
      {
         var _loc2_:* = null;
         if(param1.length == 1)
         {
            _loc2_ = param1[0];
            if(_loc2_.productCount == 1)
            {
               this.var_868 = const_404;
            }
            else
            {
               this.var_868 = const_420;
            }
         }
         else if(param1.length > 1)
         {
            this.var_868 = const_559;
         }
         else
         {
            this.var_868 = const_1843;
         }
      }
      
      private function analyzePriceType() : void
      {
         if(this.var_1305 > 0 && this.var_1304 > 0)
         {
            this.var_1303 = const_1174;
         }
         else if(this.var_1305 > 0)
         {
            this.var_1303 = const_739;
         }
         else if(this.var_1304 > 0)
         {
            this.var_1303 = const_1175;
         }
         else
         {
            this.var_1303 = const_1868;
         }
      }
      
      public function clone() : Offer
      {
         var _loc3_:* = null;
         var _loc4_:* = null;
         var _loc5_:* = null;
         var _loc1_:Array = new Array();
         var _loc2_:IProductData = this.var_408.viewer.catalog.getProductData(this.localizationId);
         for each(_loc3_ in this.var_690.products)
         {
            _loc4_ = this.var_408.viewer.catalog.getFurnitureData(_loc3_.productClassId,_loc3_.productType);
            _loc5_ = new Product(_loc3_.productType,_loc3_.productClassId,_loc3_.extraParam,_loc3_.productCount,_loc3_.expiration,_loc2_,_loc4_);
            _loc1_.push(_loc5_);
         }
         return new Offer(this.offerId,this.localizationId,this.priceInCredits,this.priceInActivityPoints,this.activityPointType,this.clubLevel,_loc1_,this.page);
      }
   }
}
