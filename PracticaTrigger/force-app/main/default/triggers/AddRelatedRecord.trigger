trigger AddRelatedRecord on Account(after insert, after update) {
    List<Opportunity> oppList = new List<Opportunity>();
    List<Account> toProcess = null;
    switch on Trigger.operationType {
        when After_insert {
            toProcess=trigger.new;
            
        }
        when After_update {
            toProcess=[Select id , name from account where id in :trigger.new and id not in (Select
            AccountId from oportunity where AccountId in :trigger.new)]
            
        }
    }
    for(Account a :toProcess){
        oppList.add(new Oportunity(name=a.name+ 'oportunity',
        StageName='prospectinhg',
        closeData=System.Today().addMonths(1),
        AccountId=a.id))
    }
    if (oppList.size()>0){
        insert oppList;
        System.debug('oportunidades creadas: '+ oppList);
    }

   
        
    
    }