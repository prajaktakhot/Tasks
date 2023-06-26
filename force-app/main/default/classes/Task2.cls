public class Task2 {
    public static void fetchRelatedContacts(){
        List<Contact> conList=[Select Id, AccountId from Contact];
      //  List<Account> accList= [Select Id, Name, (Select Id, Name from Contacts) from Account];
        set<id> accIds= new set<id>();
        if(conList != null){
            for(Contact c : conList){
                if(c.AccountId!=null){
                    accids.add(c.accountid);
                }
            }      
        }
         System.debug('Account Id list : ' + accIds );
        List<Account> accList = [Select Id, NoofContacts__c, (Select id from Contacts) from Account where Id IN :accIds];
         
        if(accList!=null){
            for(Account acc : accList){
                acc.NoofContacts__c = acc.Contacts.size();
                 System.debug('Count is: '+ acc.NoofContacts__c);
            }
        }
    }
}