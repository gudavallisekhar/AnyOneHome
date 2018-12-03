@isTest
private class Leadtest {
    
    @testSetup static void setupdata(){
        
        Lead abc = new Lead();
        abc.lastname='Test Name';
        abc.LeadSource='web';
        abc.Company='Alertinfo Service';
        abc.Status='working-Contacted';
        abc.Phone='9090908978';
        insert abc;
        
    }
    
    testmethod static void beforeinsert(){
        Lead a = [select phone from lead limit 1];
        system.assertEquals(a.Phone,'9090908978');
    }

}