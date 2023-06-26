@isTest
public class Task2Test {
@isTest
    Public static void fetchRelatedContactsTest(){
        Account acc= new Account();
        acc.Name= 'Test';
        Insert acc;
        
        Contact con= new Contact();
        con.LastName = 'TestCon1';
        con.AccountId= acc.Id;
        insert con;
        
        Contact con2= new Contact();
        con2.LastName = 'TestCon2';
        con2.AccountId= acc.Id;
        insert con2;
        
        Test.startTest();
           Task2 t= new Task2();
           Task2.fetchRelatedContacts(); 
        Test.stopTest();
    }
}