package com.sulake.habbo.ui.widget.events
{
   public class RoomWidgetVoteUpdateEvent extends RoomWidgetUpdateEvent
   {
      
      public static const const_162:String = "RWPUE_VOTE_QUESTION";
      
      public static const const_138:String = "RWPUE_VOTE_RESULT";
       
      
      private var var_1274:String;
      
      private var var_1514:Array;
      
      private var var_1134:Array;
      
      private var var_2119:int;
      
      public function RoomWidgetVoteUpdateEvent(param1:String, param2:String, param3:Array, param4:Array = null, param5:int = 0, param6:Boolean = false, param7:Boolean = false)
      {
         super(param1,param6,param7);
         this.var_1274 = param2;
         this.var_1514 = param3;
         this.var_1134 = param4;
         if(this.var_1134 == null)
         {
            this.var_1134 = [];
         }
         this.var_2119 = param5;
      }
      
      public function get question() : String
      {
         return this.var_1274;
      }
      
      public function get choices() : Array
      {
         return this.var_1514.slice();
      }
      
      public function get votes() : Array
      {
         return this.var_1134.slice();
      }
      
      public function get totalVotes() : int
      {
         return this.var_2119;
      }
   }
}
