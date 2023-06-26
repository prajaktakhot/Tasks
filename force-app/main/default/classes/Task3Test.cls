@isTest
public class Task3Test {
@isTest
     Public static void fetchRelatedContactsTest(){
        Account acc= new Account();
        acc.Name= 'Test';
        acc.FieldTracking__c = 'Yes';
        Insert acc;
         
        Account acc1= new Account();
        acc1.Name= 'Test1';
        acc1.FieldTracking__c = 'Yes';
        Insert acc1;
         
        Account acc2= new Account();
        acc2.FieldTracking__c = 'No';
        acc2.Id= acc.Id;
        Update acc2;
        
        Account acc3= new Account();
        acc3.FieldTracking__c = 'No';
        acc3.Id= acc1.Id;
        Update acc3;
         
         Test.startTest();
           Task3 t= new Task3();
           Task3.getPreviousValues(); 
        Test.stopTest();
     }    
}