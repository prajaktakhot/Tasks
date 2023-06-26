@isTest
public with sharing class Task1Test {
    @IsTest
    static void testCampaignCreation(){
         List<Contact> con= new list<Contact>();
      
        Contact con1= new Contact();
        con1.LastName= 'Test con1';
        insert con1;
        con.add(Con1);
        
        Contact con2= new Contact();
        con2.LastName= 'Test con2';
        insert con2;
        con.add(Con2);
        
        Test.startTest();
           Task1 t= new Task1();
           Task1.addContactsToCampaign(); 
        Test.stopTest();
        
        
    }
    
}