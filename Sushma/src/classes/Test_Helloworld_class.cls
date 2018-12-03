@isTest
private class Test_Helloworld_class {

    testmethod static void mytest(){
        
        Test_Helloworld te = new Test_Helloworld();
        te.info();
        System.assertEquals('Kiran kumar',te.name);
        System.assertEquals('Raja',te.hname);
        
    }
    
}