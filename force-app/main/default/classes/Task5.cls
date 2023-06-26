public class Task5 {
    public static void updateAccountStatus(List<Id> OppId){
        if(!OppId.isEmpty()){
        List<Opportunity> opp= [Select Id,AccountId from Opportunity where Id in: OppId];
        List<Id> accId = new List<Id>();
        if(!opp.isEmpty()){
        for(Opportunity o: opp){
            accId.add(o.AccountId);
        } 
        }
        List <Account> accList= [Select Id, Status__c,(Select Id,Status__c,AccountId from Opportunities) From Account where Id in: accId];
        integer active= 0;
        integer inactive= 0;
        list<Account> accUpdate = new list<Account>();
        
        if(!accList.isEmpty()){
        for(Account a:accList)
        {
            for(Opportunity o:a.Opportunities){
                if(o.Status__c == 'Active'){
                    active +=1;
                }
                else{
                    inactive +=1;
                }
            }
            if(active >= inactive){
                a.Status__c = 'Active';
                
            }else{
                a.Status__c='Inactive';
            }
            accUpdate.add(a);
            
        }
        }
        Update accUpdate;
    }
        }
}