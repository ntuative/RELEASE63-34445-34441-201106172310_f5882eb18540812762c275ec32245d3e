package com.sulake.habbo.friendlist
{
   import com.sulake.core.window.IWindowContainer;
   import com.sulake.core.window.components.IBitmapWrapperWindow;
   
   public class AvatarPopupCtrl extends PopupCtrl
   {
       
      
      private var var_759:Boolean;
      
      private var var_1753:String;
      
      private var var_2366:String;
      
      private var var_2365:String;
      
      private var var_1754:String;
      
      private var var_1755:String;
      
      public function AvatarPopupCtrl(param1:HabboFriendList)
      {
         super(param1,5,-5,"avatar_popup");
      }
      
      public function setData(param1:Boolean, param2:String, param3:String, param4:String, param5:String, param6:String = "") : void
      {
         this.var_759 = param1;
         this.var_1753 = param2;
         this.var_2366 = param3;
         this.var_2365 = param4;
         this.var_1755 = param5;
         this.var_1754 = param6;
      }
      
      override public function refreshContent(param1:IWindowContainer) : void
      {
         Util.hideChildren(param1);
         if(this.var_1754 != "")
         {
            friendList.refreshText(param1,"name_text_online",this.var_759,this.var_1754);
         }
         else
         {
            friendList.refreshText(param1,"name_text_online",this.var_759,this.var_1753);
         }
         friendList.refreshText(param1,"name_text_offline",!this.var_759,this.var_1753);
         friendList.refreshText(param1,"motto_text",this.var_759,this.var_2366);
         friendList.refreshButton(param1,"offline",!this.var_759,null,0);
         if(this.var_759)
         {
            this.refreshFigure(param1,this.var_2365);
            param1.findChildByName("online_text").visible = true;
         }
         else
         {
            param1.findChildByName("last_access_text").visible = true;
            friendList.registerParameter("friendlist.avatarpopup.lastaccess","last_access",this.var_1755 == null ? "" : this.var_1755);
         }
         param1.height = Util.getLowestPoint(param1) + 10;
      }
      
      private function refreshFigure(param1:IWindowContainer, param2:String) : void
      {
         var _loc3_:IBitmapWrapperWindow = param1.getChildByName(HabboFriendList.const_174) as IBitmapWrapperWindow;
         if(_loc3_ == null)
         {
            return;
         }
         if(param2 == null || param2 == "")
         {
            _loc3_.visible = false;
         }
         else
         {
            _loc3_.bitmap = friendList.getAvatarFaceBitmap(param2);
            if(_loc3_.bitmap == null)
            {
               return;
            }
            _loc3_.width = _loc3_.bitmap.width;
            _loc3_.height = _loc3_.bitmap.height;
            _loc3_.visible = true;
         }
      }
   }
}
