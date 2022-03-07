void main() {
  // for loop
  for(int x = 0;x<10;x++){
    print(x);
  }

  // for in loop
  var list1 = [10,20,30,40,50];  
    for(var i in list1)           
    {  
        print(i);        
    }

  // while loop
  int a = 0;
  while(a<8){
    print(a);
    a++;
  }

  // do while loop
  int b = 0;
  var c = 1;  
  var maxnum = 10;  
  do  
    {                
       print("Nilainya: ${c}");  
       c = c+1;                                    
       }while(c<maxnum); 

}