@isTest
public class Task6Test {
    private static testmethod void UpdateAccOpp(){
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
        
        Account a1 = new Account();
        a1.Name= 'Test';
        insert a1;
        
        Opportunity o2 = new Opportunity();
        o2.Name = 'Test opp';
        o2.AccountId= a1.Id;
        o2.StageName= 'Prospecting';
        o2.CloseDate= Date.newInstance(2023, 12, 09);
        o2.Locations__c= 'California';
         Insert o2;
        
        Account a2 = new Account();
        a2.Name= 'Test';
        insert a2;
        
        Opportunity o3 = new Opportunity();
        o3.Name = 'Test opp';
        o3.AccountId= a2.Id;
        o3.StageName= 'Prospecting';
        o3.CloseDate= Date.newInstance(2023, 12, 09);
        o3.Locations__c= 'Alberta';
         Insert o3;
        
        Account a3 = new Account();
        a3.Name= 'Test';
        insert a3;
        
        Opportunity o4 = new Opportunity();
        o4.Name = 'Test opp';
        o4.AccountId= a3.Id;
        o4.StageName= 'Prospecting';
        o4.CloseDate= Date.newInstance(2023, 12, 09);
        o4.Locations__c= 'Gyeonggi';
         Insert o4;
        
        Account a4 = new Account();
        a4.Name= 'Test';
        insert a4;
        
        Opportunity o1 = new Opportunity();
        o1.Name = 'Test opp';
        o1.AccountId= a4.Id;
        o1.StageName= 'Prospecting';
        o1.CloseDate= Date.newInstance(2023, 12, 09);
        o1.Locations__c= 'Kanto';
        Insert o1;      
    }
}