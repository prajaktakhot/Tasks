public class Task4 {
    public static void accountWithoutContact(){
        List<Account> acc= [select Id,name from Account where Id not In (select AccountId from Contact)];
        System.debug ('Account records without Contacts: '+ acc);
        
        Delete acc;
        System.debug ('Account records without Contacts: '+ acc);
    }
}