import { LightningElement } from 'lwc';

export default class CarouselData extends LightningElement {
    carouselData=[
        { 
           src:"https://cdn.motor1.com/images/mgl/mrz1e/s1/coolest-cars-feature.webp",
          header:"Bugatti Chiron",
          description:"bugatti 1"
        },
        {
            src:"https://imageio.forbes.com/specials-images/imageserve/5d35eacaf1176b0008974b54/2020-Chevrolet-Corvette-Stingray/0x0.jpg?format=jpg&crop=4560,2565,x790,y784,safe&width=960",
          header:"Corvette Stringray",
          description:"Corvette 1"
        },
        { 
           src:"https://www.mallofgeorgiachryslerdodgejeep.com/blogs/1534/wp-content/uploads/2022/04/2022-Dodge-Challenger-02.jpg",
          header:"Dodge",
          description:"dodge 1"
        }   
       ]
}