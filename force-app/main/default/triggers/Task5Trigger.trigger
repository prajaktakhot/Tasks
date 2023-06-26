trigger Task5Trigger on Opportunity (After insert,After Update, After Delete) {
     if(Trigger.isAfter){
            if(Trigger.isInsert || Trigger.isUpdate || Trigger.isDelete){
                List <Id> Idlist= new List<Id>();
                for (Opportunity o: Trigger.New){
                   Idlist.add(o.Id); 
                }
                    Task5.updateAccountStatus(Idlist);
              }  
     } 
}