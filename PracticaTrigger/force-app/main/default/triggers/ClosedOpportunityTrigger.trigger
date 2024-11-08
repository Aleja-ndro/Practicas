trigger ClosedOpportunityTrigger on Opportunity(after insert ,after update){
	List<Task>taskInsert=new List<Task>();
    for(Opportunity opp:Trigger.new){
        if(opp.StageName=='Closed Won'){
            taskInsert.add(new Task(
            Subject='Follow Up test Task',
            WhatId=opp.id));
        }
    }if (taskInsert.size()> 0 ){
        insert taskInsert;
    }    
}
