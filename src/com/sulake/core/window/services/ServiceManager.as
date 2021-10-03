package com.sulake.core.window.services
{
   import com.sulake.core.runtime.IDisposable;
   import com.sulake.core.window.IWindowContext;
   import flash.display.DisplayObject;
   
   public class ServiceManager implements IInternalWindowServices, IDisposable
   {
       
      
      private var var_3034:uint;
      
      private var _root:DisplayObject;
      
      private var _disposed:Boolean = false;
      
      private var var_726:IWindowContext;
      
      private var var_1240:IMouseDraggingService;
      
      private var var_1241:IMouseScalingService;
      
      private var var_1243:IMouseListenerService;
      
      private var var_1238:IFocusManagerService;
      
      private var var_1242:IToolTipAgentService;
      
      private var var_1239:IGestureAgentService;
      
      public function ServiceManager(param1:IWindowContext, param2:DisplayObject)
      {
         super();
         this.var_3034 = 0;
         this._root = param2;
         this.var_726 = param1;
         this.var_1240 = new WindowMouseDragger(param2);
         this.var_1241 = new WindowMouseScaler(param2);
         this.var_1243 = new WindowMouseListener(param2);
         this.var_1238 = new FocusManager(param2);
         this.var_1242 = new WindowToolTipAgent(param2);
         this.var_1239 = new GestureAgentService();
      }
      
      public function dispose() : void
      {
         if(this.var_1240 != null)
         {
            this.var_1240.dispose();
            this.var_1240 = null;
         }
         if(this.var_1241 != null)
         {
            this.var_1241.dispose();
            this.var_1241 = null;
         }
         if(this.var_1243 != null)
         {
            this.var_1243.dispose();
            this.var_1243 = null;
         }
         if(this.var_1238 != null)
         {
            this.var_1238.dispose();
            this.var_1238 = null;
         }
         if(this.var_1242 != null)
         {
            this.var_1242.dispose();
            this.var_1242 = null;
         }
         if(this.var_1239 != null)
         {
            this.var_1239.dispose();
            this.var_1239 = null;
         }
         this._root = null;
         this.var_726 = null;
         this._disposed = true;
      }
      
      public function getMouseDraggingService() : IMouseDraggingService
      {
         return this.var_1240;
      }
      
      public function getMouseScalingService() : IMouseScalingService
      {
         return this.var_1241;
      }
      
      public function getMouseListenerService() : IMouseListenerService
      {
         return this.var_1243;
      }
      
      public function getFocusManagerService() : IFocusManagerService
      {
         return this.var_1238;
      }
      
      public function getToolTipAgentService() : IToolTipAgentService
      {
         return this.var_1242;
      }
      
      public function getGestureAgentService() : IGestureAgentService
      {
         return this.var_1239;
      }
      
      public function get disposed() : Boolean
      {
         return this._disposed;
      }
   }
}
