package com.sulake.habbo.communication.encryption
{
   import com.hurlant.math.BigInteger;
   import com.sulake.core.communication.handshake.IKeyExchange;
   import com.sulake.core.utils.ErrorReportStorage;
   
   public class DiffieHellman implements IKeyExchange
   {
       
      
      private var var_920:BigInteger;
      
      private var var_2769:BigInteger;
      
      private var var_2158:BigInteger;
      
      private var var_2978:BigInteger;
      
      private var var_1666:BigInteger;
      
      private var var_2159:BigInteger;
      
      public function DiffieHellman(param1:BigInteger, param2:BigInteger)
      {
         super();
         this.var_1666 = param1;
         this.var_2159 = param2;
      }
      
      public function init(param1:String, param2:uint = 16) : Boolean
      {
         ErrorReportStorage.addDebugData("DiffieHellman","Prime: " + this.var_1666.toString() + ",generator: " + this.var_2159.toString() + ",secret: " + param1);
         this.var_920 = new BigInteger();
         this.var_920.fromRadix(param1,param2);
         this.var_2769 = this.var_2159.modPow(this.var_920,this.var_1666);
         return true;
      }
      
      public function generateSharedKey(param1:String, param2:uint = 16) : String
      {
         this.var_2158 = new BigInteger();
         this.var_2158.fromRadix(param1,param2);
         this.var_2978 = this.var_2158.modPow(this.var_920,this.var_1666);
         return this.getSharedKey(param2);
      }
      
      public function getPublicKey(param1:uint = 16) : String
      {
         return this.var_2769.toRadix(param1);
      }
      
      public function getSharedKey(param1:uint = 16) : String
      {
         return this.var_2978.toRadix(param1);
      }
   }
}
