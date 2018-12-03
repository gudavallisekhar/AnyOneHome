@isTest
private class Test_example {

    testmethod static void testnow(){
        
        Test_example_class te = new Test_example_class();
        te.name='chandra';
        te.info();
        system.assertEquals(10000, te.salary);
        system.assertEquals(2000, te.hra);
        te.name='raja';
         te.info();
        system.assertEquals(5000, te.salary);
        system.assertEquals(100, te.hra);
        
    }
    
}