@isTest
public class Task5Test {
    
    public static testmethod  void UpdateAccountStatus(){
        Account acc= new Account();
        acc.Name = 'Test';
        insert acc;
        
        Opportunity opp= new Opportunity();
        opp.Name = 'Test opp';
        opp.AccountId= acc.Id;
        opp.Status__c= 'Active';
        opp.StageName= 'Prospecting';
        opp.CloseDate= Date.newInstance(2023, 12, 09);
        insert opp;
        
        Opportunity opp1= new Opportunity();
        opp1.Name = 'Test opp';
        opp1.AccountId= acc.Id;
        opp1.Status__c= 'Inactive';
        opp1.StageName= 'Qualification';
        opp1.CloseDate= Date.newInstance(2023, 11, 09);
        insert opp1;
        
      /*  List<Id> oppId= new List<Id>();
        oppId.add(opp.Id);
        oppId.add(opp1.Id);
        
        Test.startTest();
        Task5 t= new Task5();
        Task5.updateAccountStatus(oppId);
        Test.stopTest(); */
    }
}