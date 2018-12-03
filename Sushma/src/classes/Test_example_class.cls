public class Test_example_class {

    public string name {set;get;}
    public integer salary {set;get;}
    public integer hra	{set;get;}
    
    public void info(){
        
        if(name=='chandra'){
            salary = 10000;
            hra    = 2000;
        	}else{
            
            salary=5000;
            hra=100;
        	}
        
        
    }
    
    
}