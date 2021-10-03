package com.sulake.habbo.quest
{
   import com.sulake.core.runtime.IDisposable;
   import com.sulake.core.runtime.IUpdateReceiver;
   import com.sulake.habbo.communication.messages.incoming.quest.QuestMessageData;
   
   public class QuestController implements IDisposable, IUpdateReceiver
   {
       
      
      private var _questEngine:HabboQuestEngine;
      
      private var var_587:QuestsList;
      
      private var var_495:QuestDetails;
      
      private var _questCompleted:QuestCompleted;
      
      private var var_416:QuestTracker;
      
      private var var_717:NextQuestTimer;
      
      public function QuestController(param1:HabboQuestEngine)
      {
         super();
         this._questEngine = param1;
         this.var_416 = new QuestTracker(this._questEngine);
         this.var_587 = new QuestsList(this._questEngine);
         this.var_495 = new QuestDetails(this._questEngine);
         this._questCompleted = new QuestCompleted(this._questEngine);
         this.var_717 = new NextQuestTimer(this._questEngine);
      }
      
      public function onToolbarClick() : void
      {
         this.var_587.onToolbarClick();
      }
      
      public function onQuests(param1:Array, param2:Boolean) : void
      {
         this.var_587.onQuests(param1,param2);
      }
      
      public function onQuest(param1:QuestMessageData) : void
      {
         this.var_416.onQuest(param1);
         this.var_495.onQuest(param1);
         this._questCompleted.onQuest(param1);
         this.var_717.onQuest(param1);
      }
      
      public function onQuestCompleted(param1:QuestMessageData) : void
      {
         this.var_416.onQuestCompleted(param1);
         this.var_495.onQuestCompleted(param1);
         this._questCompleted.onQuestCompleted(param1);
      }
      
      public function onQuestCancelled() : void
      {
         this.var_416.onQuestCancelled();
         this.var_495.onQuestCancelled();
         this._questCompleted.onQuestCancelled();
         this.var_717.onQuestCancelled();
      }
      
      public function onRoomEnter() : void
      {
         this.var_416.onRoomEnter();
      }
      
      public function onRoomExit() : void
      {
         this.var_587.onRoomExit();
         this.var_416.onRoomExit();
         this.var_495.onRoomExit();
         this.var_717.onRoomExit();
      }
      
      public function update(param1:uint) : void
      {
         this._questCompleted.update(param1);
         this.var_416.update(param1);
         this.var_717.update(param1);
         this.var_587.update(param1);
         this.var_495.update(param1);
      }
      
      public function dispose() : void
      {
         this._questEngine = null;
         if(this.var_587)
         {
            this.var_587.dispose();
            this.var_587 = null;
         }
         if(this.var_416)
         {
            this.var_416.dispose();
            this.var_416 = null;
         }
         if(this.var_495)
         {
            this.var_495.dispose();
            this.var_495 = null;
         }
         if(this._questCompleted)
         {
            this._questCompleted.dispose();
            this._questCompleted = null;
         }
         if(this.var_717)
         {
            this.var_717.dispose();
            this.var_717 = null;
         }
      }
      
      public function get disposed() : Boolean
      {
         return this._questEngine == null;
      }
      
      public function get questsList() : QuestsList
      {
         return this.var_587;
      }
      
      public function get questDetails() : QuestDetails
      {
         return this.var_495;
      }
      
      public function get questTracker() : QuestTracker
      {
         return this.var_416;
      }
   }
}
