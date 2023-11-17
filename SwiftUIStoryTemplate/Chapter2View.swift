
import SwiftUI

struct Chapter2View: View {
    var body: some View {
        //dfj vi
        VStack {
            ScrollView{
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
                
                Text("It appeard the Brown's were a happy family that live on Remy Avenue Street in Mansfield, Ohio.  They consisted of the father James, mother Carolyn, children Brandon, Barry, and Sheketa.  Sheketa the oldest child did not share the same father. Mr. Brown was not her biological parent.  Mr. Brown was the biological father of Brandon, and Barry.")
                    .padding()
                
                Text("One day,the entire family disappeared without a trace from the small city of Mansfield, Ohio in 1989.  The father and husband, James Brown eventually re-surfaced. He came forward and said he was the killer. James has never been convicted of the murder.  Although an open investigation, no one could prove that James was the killer")
                    .padding()
                
                Text("Jame's wife and children bodies have never been found and their fate is unknown, despite James confession.  It is now November of 2023, 34 years from the day he confessed.  James has not been convicted of any crimen to this date.  He continues to live in Mansfield, Ohio, but at Danbury Assisted Living facility instead of the family home.  This is far from the home he shared with his family once" )
                    .padding()
                Text("Two years prior in 1987 Mr. Brown was charged with physical abuse and sentenced to three years of probation after beating Sheketa for spending 10 cents of her school lunch money to purchase a pen.  That is the only domestic violence incident that was documented by law enforcement.  Although, there were rumors of Caroyln being beat on the daily basis. She was known to come to work with black eyes and bruises on her body. Their friends and family dared not discuss it.  They simply kept quiet.")
                    .padding()
                Text("Many now report they were worried because they have not heard from the children or their mother in decades.  Surely their bodies or remains would of been found by now. could more details about them missing come out? The local police has decided to re-open this paticular case.  They hope they can bring some closure to the remaining ancestors of the family and solve what happen.    Could they have left due to the domestic violence?  Will we ever know?.")
                    .padding()
            }
        }
    }
}


#Preview {
    Chapter2View()
}
