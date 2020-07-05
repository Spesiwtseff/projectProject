// основной экран

import SwiftUI
import AudioToolbox

struct ContentView: View {
    
    // передаем массив существующих областей
    @ObservedObject var notesTasks = DataDaseСategory()
    
    var body: some View {
        
        NavigationView {
            
            ZStack(alignment: .bottomTrailing) {
                
                // списки и области
                VStack {
                    
                    ScrollView(.vertical) {
                        
                        VStack(spacing: 20) {
                            
                            TwoCell(arrayCategory: self.$notesTasks.arrayСategory)
                            
                            Spacer()
                        }
                        .padding(.bottom, 55.0)
                    }
                    .padding(.top, (UIApplication.shared.windows.first?.safeAreaInsets.top)! + 8)
                    .background(Color(red: 18/255, green: 18/255, blue: 20/255))
                    .edgesIgnoringSafeArea(.all)
                }
            }
                
            .navigationBarBackButtonHidden(true)
            .navigationBarTitle("")
            .navigationBarHidden(true)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    
    static var previews: some View {
        
        ContentView()
        //                .previewLayout(.sizeThatFits)
    }
}
