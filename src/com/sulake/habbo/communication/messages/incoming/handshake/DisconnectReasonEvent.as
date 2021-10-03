package com.sulake.habbo.communication.messages.incoming.handshake
{
   import com.sulake.core.communication.messages.IMessageEvent;
   import com.sulake.core.communication.messages.MessageEvent;
   import com.sulake.habbo.communication.messages.parser.handshake.DisconnectReasonParser;
   
   public class DisconnectReasonEvent extends MessageEvent implements IMessageEvent
   {
      
      public static const const_2114:int = 0;
      
      public static const const_1862:int = 1;
      
      public static const const_1872:int = 2;
      
      public static const const_2145:int = 3;
      
      public static const const_2165:int = 4;
      
      public static const const_2085:int = 5;
      
      public static const const_1783:int = 10;
      
      public static const const_2222:int = 11;
      
      public static const const_2263:int = 12;
      
      public static const const_2270:int = 13;
      
      public static const const_2133:int = 16;
      
      public static const const_2271:int = 17;
      
      public static const const_2194:int = 18;
      
      public static const const_2247:int = 19;
      
      public static const const_2151:int = 20;
      
      public static const const_2207:int = 22;
      
      public static const const_2186:int = 23;
      
      public static const const_2212:int = 24;
      
      public static const const_2223:int = 25;
      
      public static const const_2292:int = 26;
      
      public static const const_2122:int = 27;
      
      public static const const_2138:int = 28;
      
      public static const const_2279:int = 29;
      
      public static const const_2272:int = 100;
      
      public static const const_2219:int = 101;
      
      public static const const_2118:int = 102;
      
      public static const const_2227:int = 103;
      
      public static const const_2136:int = 104;
      
      public static const const_2076:int = 105;
      
      public static const const_2283:int = 106;
      
      public static const const_2196:int = 107;
      
      public static const const_2287:int = 108;
      
      public static const const_2149:int = 109;
      
      public static const const_2079:int = 110;
      
      public static const const_2195:int = 111;
      
      public static const const_2101:int = 112;
      
      public static const const_2153:int = 113;
      
      public static const const_2276:int = 114;
      
      public static const const_2209:int = 115;
      
      public static const const_2226:int = 116;
      
      public static const const_2199:int = 117;
      
      public static const const_2117:int = 118;
      
      public static const const_2188:int = 119;
       
      
      public function DisconnectReasonEvent(param1:Function)
      {
         super(param1,DisconnectReasonParser);
      }
      
      public function get reason() : int
      {
         return (this.var_10 as DisconnectReasonParser).reason;
      }
      
      public function get reasonString() : String
      {
         switch(this.reason)
         {
            case const_1862:
            case const_1783:
               return "banned";
            case const_1872:
               return "concurrentlogin";
            default:
               return "logout";
         }
      }
   }
}
