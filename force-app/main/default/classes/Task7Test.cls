@isTest
public class Task7Test {

    public static testmethod void GetOpportunityDaysTest(){
         Account a = new Account();
        a.Name= 'Test';
        insert a;
        
        Opportunity o = new Opportunity();
        o.Name = 'Test opp';
        o.AccountId= a.Id;
        o.StageName= 'Prospecting';
        o.CloseDate= Date.newInstance(2023, 12, 09);
        o.Locations__c= 'Pune, Maharashtra';
         Insert o;
        
        Opportunity opp1= new Opportunity();
        opp1.CloseDate= Date.newInstance(2023, 14, 09);
        opp1.Id= o.Id;
        update opp1;
        
        List<Id> oppId= new List<Id>();
        oppId.add(o.Id);
        oppId.add(opp1.Id);
        
        Test.startTest();
        Task7 t= new Task7();
        Task7.GetOpportunityDays(oppId);
        Test.stopTest();           
        
    }
}