trigger Task6 on Opportunity (After insert, After Update) {
    if(Trigger.IsAfter){
        If(Trigger.IsInsert || Trigger.IsUpdate){
             list<Account> AccUp = new list<Account>();
            for(Opportunity opp: trigger.new){
                if(opp.Locations__c != Null && (opp.Locations__c.Contains('Maharashtra') || opp.Locations__c.Contains('Kerala') || opp.Locations__c.Contains('Goa') )){
                    Account acc= new Account();
                    acc.Countries__c = 'India';
                    acc.Id= opp.AccountId;
                    AccUp.add(acc);
                    
                }else if(opp.Locations__c != Null && (opp.Locations__c.Contains('California') || opp.Locations__c.Contains('Texas') || opp.Locations__c.Contains('Florida')) ){
                    Account acc1= new Account();
                    acc1.Countries__c = 'USA';
                    acc1.Id= opp.AccountId;
                    AccUp.add(acc1);
                }
                else if(opp.Locations__c != Null && (opp.Locations__c.Contains('Kanto') || opp.Locations__c.Contains('Hokkaido') || opp.Locations__c.Contains('Tohoku')) ){
                    Account acc2= new Account();
                    acc2.Countries__c = 'Japan';
                    acc2.Id= opp.AccountId;
                    AccUp.add(acc2);
                }
                else if(opp.Locations__c != Null && (opp.Locations__c.Contains('Gyeonggi') || opp.Locations__c.Contains('North Jeolla') || opp.Locations__c.Contains('North Gyeongsang')) ){
                    Account acc3= new Account();
                    acc3.Countries__c = 'Korea';
                    acc3.Id= opp.AccountId;
                    AccUp.add(acc3);
                }
                else if(opp.Locations__c != Null && (opp.Locations__c.Contains('Alberta') || opp.Locations__c.Contains('British Columbia') || opp.Locations__c.Contains('Manitoba') )){
                    Account acc4= new Account();
                    acc4.Countries__c = 'Canada';
                    acc4.Id= opp.AccountId;
                    AccUp.add(acc4);
                }
                else if(opp.Locations__c == Null){
                   Account acc5= new Account();
                    acc5.Countries__c = 'None';
                    acc5.Id= opp.AccountId;
                    AccUp.add(acc5); 
                }
                
            }
            Update AccUp;
        }
    }

}