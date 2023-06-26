public class Task7 {

    public static void GetOpportunityDays(List<Id> OppId){
        List<Opportunity> opp= [Select Id,CloseDate, CreatedDate,Total_Opportunity_Days__c from Opportunity where Id in: OppId];
        List<Opportunity> oppUpdate= new List<Opportunity>();
        
        for(Opportunity o: opp){
            Integer days= (Date.valueOf(o.CreatedDate)).daysBetween(Date.valueOf(o.CloseDate));
            opportunity op = new opportunity();
            o.Total_Opportunity_Days__c = days;
            System.debug('o.Total_Opportunity_Days__c: '+ o.Total_Opportunity_Days__c);
        }  
       
    }
}