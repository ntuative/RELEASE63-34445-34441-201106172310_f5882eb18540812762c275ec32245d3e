package com.sulake.habbo.communication.messages.incoming.avatar
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class OutfitData
   {
       
      
      private var var_1993:int;
      
      private var var_2415:String;
      
      private var var_1043:String;
      
      public function OutfitData(param1:IMessageDataWrapper)
      {
         super();
         this.var_1993 = param1.readInteger();
         this.var_2415 = param1.readString();
         this.var_1043 = param1.readString();
      }
      
      public function get slotId() : int
      {
         return this.var_1993;
      }
      
      public function get figureString() : String
      {
         return this.var_2415;
      }
      
      public function get gender() : String
      {
         return this.var_1043;
      }
   }
}
