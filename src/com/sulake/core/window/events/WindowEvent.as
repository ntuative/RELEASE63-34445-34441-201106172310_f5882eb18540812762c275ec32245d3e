package com.sulake.core.window.events
{
   import com.sulake.core.window.IWindow;
   
   public class WindowEvent
   {
      
      public static const const_1904:String = "WE_DESTROY";
      
      public static const const_320:String = "WE_DESTROYED";
      
      public static const const_1976:String = "WE_OPEN";
      
      public static const const_1947:String = "WE_OPENED";
      
      public static const const_1944:String = "WE_CLOSE";
      
      public static const const_1933:String = "WE_CLOSED";
      
      public static const const_1779:String = "WE_FOCUS";
      
      public static const const_355:String = "WE_FOCUSED";
      
      public static const const_1967:String = "WE_UNFOCUS";
      
      public static const const_1974:String = "WE_UNFOCUSED";
      
      public static const const_1948:String = "WE_ACTIVATE";
      
      public static const const_595:String = "WE_ACTIVATED";
      
      public static const const_1706:String = "WE_DEACTIVATE";
      
      public static const const_481:String = "WE_DEACTIVATED";
      
      public static const const_351:String = "WE_SELECT";
      
      public static const const_48:String = "WE_SELECTED";
      
      public static const const_503:String = "WE_UNSELECT";
      
      public static const const_643:String = "WE_UNSELECTED";
      
      public static const const_1918:String = "WE_LOCK";
      
      public static const const_1828:String = "WE_LOCKED";
      
      public static const const_2004:String = "WE_UNLOCK";
      
      public static const const_1796:String = "WE_UNLOCKED";
      
      public static const const_732:String = "WE_ENABLE";
      
      public static const const_302:String = "WE_ENABLED";
      
      public static const const_746:String = "WE_DISABLE";
      
      public static const const_273:String = "WE_DISABLED";
      
      public static const WINDOW_EVENT_RELOCATE:String = "WE_RELOCATE";
      
      public static const const_447:String = "WE_RELOCATED";
      
      public static const const_1320:String = "WE_RESIZE";
      
      public static const const_42:String = "WE_RESIZED";
      
      public static const const_1715:String = "WE_MINIMIZE";
      
      public static const const_1894:String = "WE_MINIMIZED";
      
      public static const const_1970:String = "WE_MAXIMIZE";
      
      public static const const_1728:String = "WE_MAXIMIZED";
      
      public static const const_1919:String = "WE_RESTORE";
      
      public static const const_1861:String = "WE_RESTORED";
      
      public static const const_658:String = "WE_CHILD_ADDED";
      
      public static const const_392:String = "WE_CHILD_REMOVED";
      
      public static const const_212:String = "WE_CHILD_RELOCATED";
      
      public static const const_148:String = "WE_CHILD_RESIZED";
      
      public static const const_337:String = "WE_CHILD_ACTIVATED";
      
      public static const const_549:String = "WE_PARENT_ADDED";
      
      public static const const_1806:String = "WE_PARENT_REMOVED";
      
      public static const const_1767:String = "WE_PARENT_RELOCATED";
      
      public static const const_599:String = "WE_PARENT_RESIZED";
      
      public static const const_1249:String = "WE_PARENT_ACTIVATED";
      
      public static const const_182:String = "WE_OK";
      
      public static const const_622:String = "WE_CANCEL";
      
      public static const const_111:String = "WE_CHANGE";
      
      public static const const_574:String = "WE_SCROLL";
      
      public static const const_108:String = "";
      
      private static const POOL:Array = [];
       
      
      protected var _type:String;
      
      protected var _window:IWindow;
      
      protected var var_730:IWindow;
      
      protected var var_1127:Boolean;
      
      protected var var_504:Boolean;
      
      protected var var_165:Boolean;
      
      protected var var_731:Array;
      
      public function WindowEvent()
      {
         super();
      }
      
      public static function allocate(param1:String, param2:IWindow, param3:IWindow, param4:Boolean = false) : WindowEvent
      {
         var _loc5_:WindowEvent = POOL.length > 0 ? POOL.pop() : new WindowEvent();
         _loc5_._type = param1;
         _loc5_._window = param2;
         _loc5_.var_730 = param3;
         _loc5_.var_504 = param4;
         _loc5_.var_165 = false;
         _loc5_.var_731 = POOL;
         return _loc5_;
      }
      
      public function get type() : String
      {
         return this._type;
      }
      
      public function get target() : IWindow
      {
         return this._window;
      }
      
      public function get window() : IWindow
      {
         return this._window;
      }
      
      public function get related() : IWindow
      {
         return this.var_730;
      }
      
      public function get cancelable() : Boolean
      {
         return this.var_504;
      }
      
      public function recycle() : void
      {
         if(this.var_165)
         {
            throw new Error("Event already recycled!");
         }
         this.var_730 = null;
         this._window = null;
         this.var_165 = true;
         this.var_1127 = false;
         this.var_731.push(this);
      }
      
      public function clone() : WindowEvent
      {
         return allocate(this._type,this.window,this.related,this.cancelable);
      }
      
      public function preventDefault() : void
      {
         this.preventWindowOperation();
      }
      
      public function isDefaultPrevented() : Boolean
      {
         return this.var_1127;
      }
      
      public function preventWindowOperation() : void
      {
         if(this.cancelable)
         {
            this.var_1127 = true;
            return;
         }
         throw new Error("Attempted to prevent window operation that is not cancelable!");
      }
      
      public function isWindowOperationPrevented() : Boolean
      {
         return this.var_1127;
      }
      
      public function stopPropagation() : void
      {
         this.var_1127 = true;
      }
      
      public function stopImmediatePropagation() : void
      {
         this.var_1127 = true;
      }
      
      public function toString() : String
      {
         return "WindowEvent { type: " + this._type + " cancelable: " + this.var_504 + " window: " + this._window + " }";
      }
   }
}
