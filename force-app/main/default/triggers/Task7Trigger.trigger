trigger Task7Trigger on Opportunity (before insert, before Update) {
    if(Trigger.isBefore && (Trigger.isInsert || Trigger.isUpdate)){
            List <Id> Idlist= new List<Id>();
                for (Opportunity o: Trigger.New){
                   Idlist.add(o.Id); 
                   System.debug('Opportunity Id: '+ Idlist);
                }
          Task7.GetOpportunityDays(Idlist);
        }
}