package com.sulake.core.window.utils
{
   import com.sulake.core.window.enum.WindowParam;
   import flash.utils.Dictionary;
   
   public class ParamCodeTable extends WindowParam
   {
       
      
      public function ParamCodeTable()
      {
         super();
      }
      
      public static function fillTables(param1:Dictionary, param2:Dictionary = null) : void
      {
         var _loc3_:* = null;
         param1["null"] = const_183;
         param1["bound_to_parent_rect"] = const_101;
         param1["child_window"] = const_1359;
         param1["embedded_controller"] = const_1258;
         param1["resize_to_accommodate_children"] = WINDOW_PARAM_RESIZE_TO_ACCOMMODATE_CHILDREN;
         param1["input_event_processor"] = const_31;
         param1["internal_event_handling"] = const_915;
         param1["mouse_dragging_target"] = const_289;
         param1["mouse_dragging_trigger"] = const_439;
         param1["mouse_scaling_target"] = const_329;
         param1["mouse_scaling_trigger"] = const_524;
         param1["horizontal_mouse_scaling_trigger"] = const_269;
         param1["vertical_mouse_scaling_trigger"] = const_240;
         param1["observe_parent_input_events"] = const_1267;
         param1["optimize_region_to_layout_size"] = const_664;
         param1["parent_window"] = const_1385;
         param1["relative_horizontal_scale_center"] = const_228;
         param1["relative_horizontal_scale_fixed"] = const_143;
         param1["relative_horizontal_scale_move"] = const_423;
         param1["relative_horizontal_scale_strech"] = const_434;
         param1["relative_scale_center"] = const_1314;
         param1["relative_scale_fixed"] = const_893;
         param1["relative_scale_move"] = const_1277;
         param1["relative_scale_strech"] = const_1165;
         param1["relative_vertical_scale_center"] = const_208;
         param1["relative_vertical_scale_fixed"] = const_164;
         param1["relative_vertical_scale_move"] = const_253;
         param1["relative_vertical_scale_strech"] = const_348;
         param1["on_resize_align_left"] = const_789;
         param1["on_resize_align_right"] = const_601;
         param1["on_resize_align_center"] = const_519;
         param1["on_resize_align_top"] = const_844;
         param1["on_resize_align_bottom"] = const_494;
         param1["on_resize_align_middle"] = const_487;
         param1["on_accommodate_align_left"] = const_1248;
         param1["on_accommodate_align_right"] = const_634;
         param1["on_accommodate_align_center"] = const_727;
         param1["on_accommodate_align_top"] = const_1328;
         param1["on_accommodate_align_bottom"] = const_575;
         param1["on_accommodate_align_middle"] = const_953;
         param1["route_input_events_to_parent"] = const_545;
         param1["use_parent_graphic_context"] = const_33;
         param1["draggable_with_mouse"] = const_1317;
         param1["scalable_with_mouse"] = const_1236;
         param1["reflect_horizontal_resize_to_parent"] = const_504;
         param1["reflect_vertical_resize_to_parent"] = const_560;
         param1["reflect_resize_to_parent"] = const_357;
         param1["force_clipping"] = WINDOW_PARAM_FORCE_CLIPPING;
         param1["inherit_caption"] = const_1351;
         if(param2 != null)
         {
            for(param2[param1[_loc3_]] in param1)
            {
            }
         }
      }
   }
}
