package com.sulake.habbo.avatar
{
   import com.sulake.core.utils.Map;
   import com.sulake.habbo.avatar.alias.AssetAliasCollection;
   import com.sulake.habbo.avatar.cache.AvatarImageCache;
   import com.sulake.habbo.avatar.enum.AvatarAction;
   import flash.display.BitmapData;
   
   public class PlaceholderAvatarImage extends AvatarImage
   {
      
      static var var_874:Map = new Map();
       
      
      public function PlaceholderAvatarImage(param1:AvatarStructure, param2:AssetAliasCollection, param3:AvatarFigureContainer, param4:String)
      {
         super(param1,param2,param3,param4);
      }
      
      override public function dispose() : void
      {
         var _loc1_:* = null;
         if(!var_1129)
         {
            _structure = null;
            _assets = null;
            var_301 = null;
            var_307 = null;
            _figure = null;
            var_599 = null;
            var_353 = null;
            if(!var_1397 && var_48)
            {
               var_48.dispose();
            }
            var_48 = null;
            _loc1_ = getCache();
            if(_loc1_)
            {
               _loc1_.dispose();
               _loc1_ = null;
            }
            var_807 = null;
            var_1129 = true;
         }
      }
      
      override protected function getFullImage(param1:String) : BitmapData
      {
         return var_874[param1];
      }
      
      override protected function cacheFullImage(param1:String, param2:BitmapData) : void
      {
         var_874[param1] = param2;
      }
      
      override public function appendAction(param1:String, ... rest) : Boolean
      {
         var _loc3_:* = null;
         if(rest != null && rest.length > 0)
         {
            _loc3_ = rest[0];
         }
         switch(param1)
         {
            case AvatarAction.const_388:
               switch(_loc3_)
               {
                  case AvatarAction.const_768:
                  case AvatarAction.const_631:
                  case AvatarAction.const_411:
                  case AvatarAction.const_936:
                  case AvatarAction.const_410:
                  case AvatarAction.const_730:
                     super.appendAction.apply(null,[param1].concat(rest));
               }
               break;
            case AvatarAction.const_344:
            case AvatarAction.const_140:
            case AvatarAction.const_291:
            case AvatarAction.const_778:
            case AvatarAction.const_830:
            case AvatarAction.const_1005:
               super.addActionData.apply(null,[param1].concat(rest));
         }
         return true;
      }
      
      override public function isPlaceholder() : Boolean
      {
         return true;
      }
   }
}
