package com.sulake.habbo.communication.messages.incoming.navigator
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class FlatCategory
   {
       
      
      private var var_1994:int;
      
      private var var_2789:String;
      
      private var var_318:Boolean;
      
      public function FlatCategory(param1:IMessageDataWrapper)
      {
         super();
         this.var_1994 = param1.readInteger();
         this.var_2789 = param1.readString();
         this.var_318 = param1.readBoolean();
      }
      
      public function get nodeId() : int
      {
         return this.var_1994;
      }
      
      public function get nodeName() : String
      {
         return this.var_2789;
      }
      
      public function get visible() : Boolean
      {
         return this.var_318;
      }
   }
}
