public with sharing class Task1 {
        public static void addContactsToCampaign(){
        
          Campaign__c obj = Campaign__c.getOrgDefaults();
          System.debug('Custom Setting Campaign__c value: ' + obj);
          Campaign cm= [Select Id, Name from Campaign where Id =:obj.Campaign_ID__c];
          System.debug('Campaign Record : ' + cm);
           
          list<Contact> con= [Select Id, FirstName, LastName, CreatedDate from Contact order by CreatedDate desc limit 4];
          System.debug('Contact list: '+ con);
            
          list<CampaignMember> newCampaignMembers = new list<CampaignMember>(); 
            For(Contact c: con){
                CampaignMember cmr= New CampaignMember(CampaignId=cm.Id, ContactId= c.Id , Status='Responded');
                newCampaignMembers.add(cmr);
            }
            Insert newCampaignMembers;
        }
    }