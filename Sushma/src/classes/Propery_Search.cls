public class Propery_Search {

    public String search_key 		{set;get;}
    public String valuskey		 	{set;get;}
    public List<Any_One_Home__c> property {set;get;}
    
    public Propery_Search(){
        property = [select id,Property_Name__c,city__c,Property_Logo__c,Propert_Cost__c,Contact__r.name from Any_One_Home__c];
    }
    public void Search_records(){
        valuskey = search_key;
         String j= '%'+valuskey+'%';
        property = [select id,Property_Name__c,city__c,Property_Logo__c,Propert_Cost__c,Contact__r.name from Any_One_Home__c where city__c like:j];
    }
}