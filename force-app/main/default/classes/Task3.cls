public class Task3 {
    Public static void getPreviousValues(){
        List<AccountHistory> ah = [SELECT Id, Account.Name, OldValue, NewValue,  Account.LastModifiedById, Account.CreatedDate FROM AccountHistory 
                                    WHERE Field = 'FieldTracking__c'
                                     ORDER BY CreatedDate DESC Limit 5];
        System.debug('Account FieldTracking__c fields details : ' + ah );
    }
}