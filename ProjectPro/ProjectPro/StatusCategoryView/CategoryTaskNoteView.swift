// экран области

import SwiftUI
import AudioToolbox

struct CategoryTaskNoteView: View {
    
    // используется для закрытия окна области
    @Environment(\.presentationMode) var presentationMode : Binding<PresentationMode>
    
    // переданная область
    @Binding var category : StDataDaseСategory
    
    var body: some View {
            
        VStack(spacing: 20.0) {
                
                Text("\(self.category.taskDoneArray)")
                
                
                Button(action: {
                    
                    self.category.taskDoneArray = self.category.taskDoneArray + 1
                }) {
                        
                        Text("+ 1")
                }
            }
                .navigationBarTitle("")
//                .navigationBarHidden(true)
//                .navigationBarBackButtonHidden(true)
    }
}
