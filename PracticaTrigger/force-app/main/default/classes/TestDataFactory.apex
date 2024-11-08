@isTest
public class TestDataFactory{
    public static List<Account> createAccountsWithOpps (Integer numAccts, Integer numOppsPerAcct){
        List<Account> accts = new List<Account>();
        for(Integer i=0;i<numAccts;i++){
            Account a = new Account(Name='Test account '+i);
            accts.add(a);
        }
        insert accts;
        List<Opportunity> opps = new List<Opportunity>();
        for(Integer j=0 ;j<numOppsPerAcct;j++){
            account acct= accts[j];
        for(Integer k=0;k<numOppsPerAcct;k++){
            opps.add(new Opportunity(
                Name=acct.name +'Oportunity '+ k,
                StageName='Prospecting',
                CloseDate=System.today().addMonths(1),
                AccountId=acct.Id
                ));
        }
        }
        insert opps;
        return accts;
    }}