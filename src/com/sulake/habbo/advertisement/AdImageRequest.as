package com.sulake.habbo.advertisement
{
   public class AdImageRequest
   {
       
      
      private var _roomId:int;
      
      private var _roomCategory:int;
      
      private var var_234:int;
      
      private var var_2305:int;
      
      private var var_2834:String;
      
      private var var_2835:String;
      
      public function AdImageRequest(param1:int, param2:int, param3:String = null, param4:String = null, param5:int = -1, param6:int = -1)
      {
         super();
         this._roomId = param1;
         this._roomCategory = param2;
         this.var_234 = param5;
         this.var_2305 = param6;
         this.var_2834 = param3;
         this.var_2835 = param4;
      }
      
      public function get roomId() : int
      {
         return this._roomId;
      }
      
      public function get roomCategory() : int
      {
         return this._roomCategory;
      }
      
      public function get objectId() : int
      {
         return this.var_234;
      }
      
      public function get objectCategory() : int
      {
         return this.var_2305;
      }
      
      public function get imageURL() : String
      {
         return this.var_2834;
      }
      
      public function get clickURL() : String
      {
         return this.var_2835;
      }
   }
}
