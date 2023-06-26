@isTest
public class Task4Test {
@isTest
    public static void fetchAccountWithoutContacts(){
        Account acc= new Account();
        acc.Name= 'Test';
        Insert acc;
        
        Account acc1= new Account();
        acc1.Name= 'Test';
        Insert acc1;
        
        Contact con= new Contact();
        con.LastName = 'TestCon1';
        con.AccountId= acc.Id;
        insert con;
        
        Test.startTest();
           Task4 t= new Task4();
           Task4.accountWithoutContact(); 
        Test.stopTest();
    }
}