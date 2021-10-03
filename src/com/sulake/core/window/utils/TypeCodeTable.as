package com.sulake.core.window.utils
{
   import com.sulake.core.window.enum.WindowType;
   import flash.utils.Dictionary;
   
   public class TypeCodeTable extends WindowType
   {
       
      
      public function TypeCodeTable()
      {
         super();
      }
      
      public static function fillTables(param1:Dictionary, param2:Dictionary = null) : void
      {
         var _loc3_:* = null;
         param1["background"] = const_721;
         param1["badge"] = const_832;
         param1["bitmap"] = const_433;
         param1["border"] = const_964;
         param1["border_notify"] = const_1995;
         param1["bubble"] = const_761;
         param1["bubble_pointer_up"] = const_1290;
         param1["bubble_pointer_right"] = const_1324;
         param1["bubble_pointer_down"] = const_1315;
         param1["bubble_pointer_left"] = const_1208;
         param1["button"] = const_645;
         param1["button_thick"] = const_820;
         param1["button_icon"] = const_1756;
         param1["button_group_left"] = const_894;
         param1["button_group_center"] = const_847;
         param1["button_group_right"] = const_939;
         param1["canvas"] = const_947;
         param1["checkbox"] = const_740;
         param1["closebutton"] = const_1333;
         param1["container"] = const_424;
         param1["container_button"] = const_978;
         param1["display_object_wrapper"] = const_896;
         param1["dropmenu"] = const_513;
         param1["dropmenu_item"] = const_500;
         param1["frame"] = const_430;
         param1["frame_notify"] = const_1752;
         param1["header"] = const_998;
         param1["html"] = const_1234;
         param1["icon"] = const_1255;
         param1["itemgrid"] = const_1164;
         param1["itemgrid_horizontal"] = const_499;
         param1["itemgrid_vertical"] = const_720;
         param1["itemlist"] = WINDOW_TYPE_ITEMLIST;
         param1["itemlist_horizontal"] = const_389;
         param1["itemlist_vertical"] = const_395;
         param1["label"] = const_999;
         param1["maximizebox"] = const_1980;
         param1["menu"] = const_1951;
         param1["menu_item"] = const_1962;
         param1["submenu"] = const_1360;
         param1["minimizebox"] = const_1803;
         param1["notify"] = const_1888;
         param1["null"] = const_770;
         param1["password"] = const_781;
         param1["radiobutton"] = const_804;
         param1["region"] = const_365;
         param1["restorebox"] = const_1931;
         param1["scaler"] = const_663;
         param1["scaler_horizontal"] = const_1746;
         param1["scaler_vertical"] = const_1831;
         param1["scrollbar_horizontal"] = const_538;
         param1["scrollbar_vertical"] = const_738;
         param1["scrollbar_slider_button_up"] = const_1253;
         param1["scrollbar_slider_button_down"] = const_1203;
         param1["scrollbar_slider_button_left"] = const_1205;
         param1["scrollbar_slider_button_right"] = const_1209;
         param1["scrollbar_slider_bar_horizontal"] = const_1352;
         param1["scrollbar_slider_bar_vertical"] = const_1283;
         param1["scrollbar_slider_track_horizontal"] = const_1156;
         param1["scrollbar_slider_track_vertical"] = const_1160;
         param1["scrollable_itemlist"] = const_1754;
         param1["scrollable_itemlist_vertical"] = const_528;
         param1["scrollable_itemlist_horizontal"] = const_1213;
         param1["selector"] = const_997;
         param1["selector_list"] = const_1009;
         param1["submenu"] = const_1360;
         param1["tab_button"] = const_873;
         param1["tab_container_button"] = const_1231;
         param1["tab_context"] = const_422;
         param1["tab_content"] = const_1192;
         param1["tab_selector"] = const_931;
         param1["text"] = const_745;
         param1["input"] = const_1012;
         param1["toolbar"] = const_1896;
         param1["tooltip"] = const_445;
         if(param2 != null)
         {
            for(param2[param1[_loc3_]] in param1)
            {
            }
         }
      }
   }
}
