//SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.4.22 <0.7.0;

 
contract weather_upate  {
    
     
      mapping(string => weather)  weathereport;
      
    
     struct  weather{
         uint256 precipitatn;
         string Rainfall_ch;
         uint256 humidity;
         string day;
         uint256 temperature;
         string location;    
          
     }
     weather w;
     
     address admin;
     
      
    
      constructor() public {
          admin = 0x5B38Da6a701c568545dCfcB03FcB875f56beddC4;
      }
      
      
      // modifier to give access only to hospital
      modifier isOwner() {

         require(msg.sender == admin, "Access is not allowed");

         _;

     }
      
     
     
    
  
     function store_weather_details(uint256 _precipitatn, string memory _Rainfall_ch, uint256 _humidity, string memory _day, uint256 _temperature, string memory _location)public isOwner {
        
        w.precipitatn = _precipitatn;
        w.Rainfall_ch = _Rainfall_ch;
        w.humidity = _humidity;
        w.day = _day;
        w.temperature = _temperature;
        weathereport[_location] = w;
        
        
         }
         
        

         function retreive_weather_details(string memory location) public view returns (uint256, string memory, uint256, string memory, uint256){
             
     weather memory w1 = weathereport[location];
     
     return (w1.precipitatn, w1.Rainfall_ch, w1.humidity, w1.day, w1.temperature);
     
          }
          
          
          
}