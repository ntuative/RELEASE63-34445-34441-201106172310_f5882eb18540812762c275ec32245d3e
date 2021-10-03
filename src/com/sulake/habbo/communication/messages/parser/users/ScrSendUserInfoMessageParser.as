package com.sulake.habbo.communication.messages.parser.users
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class ScrSendUserInfoMessageParser implements IMessageParser
   {
      
      public static const const_2291:int = 1;
      
      public static const const_2000:int = 2;
       
      
      private var var_929:String;
      
      private var var_2848:int;
      
      private var var_2854:int;
      
      private var var_2853:int;
      
      private var var_2852:int;
      
      private var var_2849:Boolean;
      
      private var var_2236:Boolean;
      
      private var var_2234:int;
      
      private var var_2237:int;
      
      private var var_2850:Boolean;
      
      private var var_2851:int;
      
      private var var_2847:int;
      
      public function ScrSendUserInfoMessageParser()
      {
         super();
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this.var_929 = param1.readString();
         this.var_2848 = param1.readInteger();
         this.var_2854 = param1.readInteger();
         this.var_2853 = param1.readInteger();
         this.var_2852 = param1.readInteger();
         this.var_2849 = param1.readBoolean();
         this.var_2236 = param1.readBoolean();
         this.var_2234 = param1.readInteger();
         this.var_2237 = param1.readInteger();
         this.var_2850 = param1.readBoolean();
         this.var_2851 = param1.readInteger();
         this.var_2847 = param1.readInteger();
         return true;
      }
      
      public function get productName() : String
      {
         return this.var_929;
      }
      
      public function get daysToPeriodEnd() : int
      {
         return this.var_2848;
      }
      
      public function get memberPeriods() : int
      {
         return this.var_2854;
      }
      
      public function get periodsSubscribedAhead() : int
      {
         return this.var_2853;
      }
      
      public function get responseType() : int
      {
         return this.var_2852;
      }
      
      public function get hasEverBeenMember() : Boolean
      {
         return this.var_2849;
      }
      
      public function get isVIP() : Boolean
      {
         return this.var_2236;
      }
      
      public function get pastClubDays() : int
      {
         return this.var_2234;
      }
      
      public function get pastVipDays() : int
      {
         return this.var_2237;
      }
      
      public function get isShowBasicPromo() : Boolean
      {
         return this.var_2850;
      }
      
      public function get basicNormalPrice() : int
      {
         return this.var_2851;
      }
      
      public function get basicPromoPrice() : int
      {
         return this.var_2847;
      }
   }
}
