// области на основном экране

import SwiftUI

struct TwoCell: View {
    
    // передаем массив существующих областей
    @Binding var arrayCategory : [StDataDaseСategory]
    
    var body: some View {
        
        VStack(spacing: 5.0) {
            
            if arrayCategory.count > 0 {
                
                ForEach(arrayCategory, id: \.self) { category in
                    
                    TwoCellOne(category: self.$arrayCategory[self.arrayCategory.firstIndex(of: category)!])
                }
            }
        }
    }
}

struct TwoCellOne: View {
    
    // переданная область
    @Binding var category : StDataDaseСategory
    
    var body: some View {
        
        ZStack(alignment: .trailing) {
                
                // кнопка перехода на экран области
                NavigationLink(destination: CategoryTaskNoteView(category: self.$category)) {
                    
                    HStack {
                        
                        Text("\(self.category.taskDoneArray)")
                            .fontWeight(.light)
                            .foregroundColor(.white)
                            .font(.custom("AvenirNext-Regular", size: 19))
                            .multilineTextAlignment(.leading)
                            .padding(.leading, 5)
                        
                        Spacer()
                    }
                    .frame(height: 12)
                    .padding()
                    .padding(.trailing, 15)
                    .background(Color.blue)
                    .cornerRadius(10)
                }
                .padding(.horizontal, 10)
                .buttonStyle(MyButtonStyleTwoCell())
        }
    }
}
