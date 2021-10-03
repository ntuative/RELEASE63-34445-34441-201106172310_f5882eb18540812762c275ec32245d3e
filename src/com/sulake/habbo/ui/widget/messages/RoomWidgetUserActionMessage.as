package com.sulake.habbo.ui.widget.messages
{
   public class RoomWidgetUserActionMessage extends RoomWidgetMessage
   {
      
      public static const const_530:String = "RWUAM_WHISPER_USER";
      
      public static const const_584:String = "RWUAM_IGNORE_USER";
      
      public static const const_496:String = "RWUAM_UNIGNORE_USER";
      
      public static const const_455:String = "RWUAM_KICK_USER";
      
      public static const const_648:String = "RWUAM_BAN_USER";
      
      public static const const_581:String = "RWUAM_SEND_FRIEND_REQUEST";
      
      public static const const_624:String = "RWUAM_RESPECT_USER";
      
      public static const const_616:String = "RWUAM_GIVE_RIGHTS";
      
      public static const const_569:String = "RWUAM_TAKE_RIGHTS";
      
      public static const const_610:String = "RWUAM_START_TRADING";
      
      public static const const_881:String = "RWUAM_OPEN_HOME_PAGE";
      
      public static const const_542:String = "RWUAM_KICK_BOT";
      
      public static const const_520:String = "RWUAM_REPORT";
      
      public static const const_651:String = "RWUAM_PICKUP_PET";
      
      public static const const_1747:String = "RWUAM_TRAIN_PET";
      
      public static const const_596:String = " RWUAM_RESPECT_PET";
      
      public static const const_292:String = "RWUAM_REQUEST_PET_UPDATE";
      
      public static const const_666:String = "RWUAM_START_NAME_CHANGE";
       
      
      private var _userId:int = 0;
      
      public function RoomWidgetUserActionMessage(param1:String, param2:int = 0)
      {
         super(param1);
         this._userId = param2;
      }
      
      public function get userId() : int
      {
         return this._userId;
      }
   }
}
