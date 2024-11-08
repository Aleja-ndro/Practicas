trigger SoqlTriggerBulk on Account(after update)
{
List<Account> acctWithsOpps = [Select id,(Select id ,name, closeData from opportunities )from Account where id in :trigger.new];
for(Account a :trigger.new){
    Opportunity[] relatedOpp= a.opportunities;
}
}
//All related oportunity
trigger SoqlTriggerBulk on Account(after update){
    List<Opportunity> relatedOpp = [Select id, name,closeData from Opportunity where Account id :trigger.new:];

}
//Soql for loop
trigger SoqlTriggerBulk on Account(after update){
    for( Oportunity opp:(Select id, name, closeData from Oportunity where Account in : trigger.new))
}
//Bulk Dml
trigger DmlTriggerBulk on Account(after update){
    List<Oportunity> relatedOpp = [Select id, [Select id, name, probability from opportunity where AccountId in :trigger.new];
    List<oportunity> oppToUpdate = new List<oportunity>();
    for(Oportunity opp:relatedOpp){
        if (opp.probability >=50)&&(opp.probability<=100) {
            opp.description ='New description';
            oppToUpdate.add(opp);
            
        }
    } update oppToUpdate;
}