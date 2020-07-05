// База данных "Области"

import SwiftUI
import Combine

final class DataDaseСategory : ObservableObject {
    
    @Published var arrayСategory = [
        
        StDataDaseСategory(taskDoneArray: 1),
        StDataDaseСategory(taskDoneArray: 2),
        StDataDaseСategory(taskDoneArray: 3)
    ]
}

struct StDataDaseСategory : Hashable {
    
    var taskDoneArray : Int
}
