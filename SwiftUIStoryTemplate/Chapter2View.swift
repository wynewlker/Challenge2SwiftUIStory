import SwiftUI

struct Chapter2View: View {
    var body: some View {
        
        VStack {
            Image("Black-Addams-Family-Parents")
                .resizable()
                .scaledToFit()
            
            
            HStack {
                Image("Stephanie's Chapter 2")
                    .resizable()
                    .scaledToFit()
                
                Image("Stephanie's Chapter 2")
                    .resizable()
                    .scaledToFit()
                
            }
            
            ZStack {
                Text(" The Browns: Stephanie Logan")
                    .font(.callout)
                    .padding(6)
                    .foregroundColor(.brown)
            }       .background(Color.white)
                .opacity(0.8)
                .cornerRadius(10.0)
        }
    }
}

struct Family{
    var names = ["Carolyn,","James","Brandon","Barry","Sheketa"]
                 
    var adults: [person]
    var children: [person]
    
    let family = (adults: ["Carolyn","James"], children: ["Brandon","Barry","Sheketa"])
    
    
    let Brandon: person = person(name:"Brandon", age:2)
    let Barry: person = person(name:"Barry", age:6)
    let Sheketa: person = person(name:"Sheketa", age:10)
    let Carolyn: person = person(name:"Carolyn", age:35)
    let James: person = person(name:"James", age:45)


    var siteName = "Browns"
    // assigning a new value to siteName
    //siteName = "Browns"
    
    //introduction()
    var killer = "James"
    //family()
    func introduction() {
        var killer = "James"
        print ("It appeard the Brown's were a happy family that live on Remy Avenue Street in Mansfield, Ohio.  They consisted of the father James, mother Carolyn, children Brandon, Barry, and Sheketa.  Sheketa the oldest child did not share the same father. Mr. Brown was not her biological parent.  One day,the entire family disappeared without a trace from the small city of Mansfield, Ohio in 1989.  The father and husband, James Brown eventually re-surfaced. He came forward and said he was the killer. James has never been convicted of the murder.")
        if killer == "James"{
            print("James came forward to say he killed his family.")
        } else if killer != "James"{
            print("To this day james has never been convicted of the murder.")
        }
    }
    
    func familyDescription() {
        var murdered = "Brandon, Barry, Sheketa and Caroyln"
        print ("His wife and children bodies have never been found and their fate is unknown, despite James confession.  He has not been convicted of any crime. Both Carylon and James worked as teachers before they disappeard. Two years prior in 1987 Mr. Brown was charged with physical abuse and sentenced to three years of probation after beating Sheketa for spending 10 cents of her school lunch money to purchase a pen.  That is the only domestic violence incident that was documented.  Although, there were rumors of Caroyln being beat on the daily basis. She was known to come to work with black eyes and bruises on her body. Their friends and family dared not discuss it.  They simply kept quiet.  Many now report they are worried because they have not heard from the children or their mother.")
        print("Five family members were missing originally, but now there is only four due to the return of Mr. Brown. The local police did not focus their time searching for the wife and children.  They believe she left her husband due to the domestic violence history on this case.")
        // create integer type variable
        let numberOfFamilyMembers = 5
        print(numberOfFamilyMembers)
        // create float type variable
        let numberValue: Float = 5
        print(numberValue)
        // Output:5
        
        
        
    }
}

struct person {
    var name:String = ""
    var age:Int = 35
}
func chapterTwo(){
    let Brandon: person = person(name:"Brandon", age:2)
    let Barry: person = person(name:"Barry", age:6)
    let Sheketa: person = person(name:"Sheketa", age:10)
    let Carolyn: person = person(name:"Carolyn", age:35)
    let James: person = person(name:"James", age:45)
    var siteName = "Disapperance"
    // assigning a new value to siteName
    siteName = "Browns"
    introduction()
    var killer = "James"
    family()
    func introduction() {
        var killer = "James"
        print ("It appeard the Brown's were a happy family that live on Remy Avenue Street in Mansfield, Ohio.  They consisted of the father James, mother Carolyn, children Brandon, Barry, and Sheketa.  Sheketa the oldest child did not share the same father. Mr. Brown was not her biological parent.  One day,the entire family disappeared without a trace from the small city of Mansfield, Ohio in 1989.  The father and husband, James Brown eventually re-surfaced. He came forward and said he was the killer. James has never been convicted of the murder.")
        if killer == "James"{
            print("James came forward to say he killed his family.")
        } else if killer != "James"{
            print("To this day james has never been convicted of the murder.")
        }
    }
    func family() {
        var murdered = "Brandon, Barry, Sheketa and Caroyln"
        print ("His wife and children bodies have never been found and their fate is unknown, despite James confession.  He has not been convicted of any crime. Both Carylon and James worked as teachers before they disappeard. Two years prior in 1987 Mr. Brown was charged with physical abuse and sentenced to three years of probation after beating Sheketa for spending 10 cents of her school lunch money to purchase a pen.  That is the only domestic violence incident that was documented.  Although, there were rumors of Caroyln being beat on the daily basis. She was known to come to work with black eyes and bruises on her body. Their friends and family dared not discuss it.  They simply kept quiet.  Many now report they are worried because they have not heard from the children or their mother.")
        print("Five family members were missing originally, but now there is only four due to the return of Mr. Brown. The local police did not focus their time searching for the wife and children.  They believe she left her husband due to the domestic violence history on this case.")
        // create integer type variable
        var number: Int = 5
        print(number)
        // create float type variable
        let numberValue: Float = 5
        print(numberValue)
        // Output:5
        
    }
}
