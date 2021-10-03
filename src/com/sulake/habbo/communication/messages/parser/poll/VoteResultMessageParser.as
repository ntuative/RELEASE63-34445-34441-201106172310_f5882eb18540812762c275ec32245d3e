package com.sulake.habbo.communication.messages.parser.poll
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class VoteResultMessageParser implements IMessageParser
   {
       
      
      private var var_1274:String;
      
      private var var_1514:Array;
      
      private var var_1134:Array;
      
      private var var_2119:int;
      
      public function VoteResultMessageParser()
      {
         super();
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
      
      public function flush() : Boolean
      {
         this.var_1274 = "";
         this.var_1514 = [];
         this.var_1134 = [];
         this.var_2119 = 0;
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this.var_1274 = param1.readString();
         this.var_1514 = [];
         this.var_1134 = [];
         var _loc2_:int = param1.readInteger();
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_)
         {
            param1.readInteger();
            this.var_1514.push(param1.readString());
            this.var_1134.push(param1.readInteger());
            _loc3_++;
         }
         this.var_2119 = param1.readInteger();
         return true;
      }
   }
}
