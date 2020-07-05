// стили кнопок

import SwiftUI

// выбор цвета / кнопка плюс
struct MyButtonStyleColor: ButtonStyle {
    
    public func makeBody(configuration: MyButtonStyleColor.Configuration) -> some View {
        
        configuration.label
            .scaleEffect(configuration.isPressed ? 1.1 : 1.0)
            .compositingGroup()
    }
}

// новая задача / новый область
struct MyButtonStylePlusButton: ButtonStyle {
    
    public func makeBody(configuration: MyButtonStylePlusButton.Configuration) -> some View {
        
        configuration.label
            .frame(width: 200, height: 50)
            .padding(.leading, 40)
            .background(configuration.isPressed ? Color(red: 50/255, green: 50/255, blue: 50/255) : Color(red: 30/255, green: 30/255, blue: 30/255))
            .compositingGroup()
    }
}

// списки
struct MyButtonStyleOneCell: ButtonStyle {
    
    public func makeBody(configuration: MyButtonStyleOneCell.Configuration) -> some View {
        
        configuration.label
            .foregroundColor(.white)
            .padding(8)
            .background(configuration.isPressed ? Color(red: 50/255, green: 50/255, blue: 50/255) : Color(red: 18/255, green: 18/255, blue: 20/255))
            .cornerRadius(7)
            .compositingGroup()
    }
}

// области
struct MyButtonStyleTwoCell: ButtonStyle {
    
    public func makeBody(configuration: MyButtonStyleTwoCell.Configuration) -> some View {
        
        configuration.label
            .scaleEffect(configuration.isPressed ? 0.98 : 1.0)
            .compositingGroup()
    }
}

// кнопки в навигейшин баре
struct MyButtonStyleStatusBar: ButtonStyle {
    
    @Binding var showMenuChange : Bool
    
    public func makeBody(configuration: MyButtonStyleStatusBar.Configuration) -> some View {
        
        configuration.label
            .opacity(self.showMenuChange ? 1 : configuration.isPressed ? 0.3 : 1)
            .compositingGroup()
    }
}

// кнопка меню в списках и областях
struct MyButtonStyleOpacity: ButtonStyle {
    
    public func makeBody(configuration: MyButtonStyleOpacity.Configuration) -> some View {
        
        configuration.label
            .opacity(configuration.isPressed ? 0.3 : 1)
            .compositingGroup()
    }
}

// кнопки в меню ( новая задача / новая область )
struct MyButtonStyleMenu: ButtonStyle {
    
    public func makeBody(configuration: MyButtonStyleMenu.Configuration) -> some View {
        
        configuration.label
            .padding(.vertical, 10.0)
            .padding(.trailing, 5.0)
            .padding(.leading, 10.0)
            .background(configuration.isPressed ? Color(red: 70/255, green: 70/255, blue: 72/255) : Color(red: 35/255, green: 35/255, blue: 37/255))
            .cornerRadius(7)
            .compositingGroup()
    }
}

// кнопки в меню ( удалить / воделиться / X )
struct MyButtonStyleMenuTwo: ButtonStyle {
    
    public func makeBody(configuration: MyButtonStyleMenuTwo.Configuration) -> some View {
        
        configuration.label
            .padding(.all, 10.0)
            .background(configuration.isPressed ? Color(red: 70/255, green: 70/255, blue: 72/255) : Color(red: 35/255, green: 35/255, blue: 37/255))
            .cornerRadius(7)
            .compositingGroup()
    }
}

// задача
struct MyButtonStyleNoteView: ButtonStyle {
    
    public func makeBody(configuration: MyButtonStyleNoteView.Configuration) -> some View {
        
        configuration.label
            .foregroundColor(.white)
            .padding(1)
            .background(configuration.isPressed ? Color(red: 50/255, green: 50/255, blue: 50/255) : Color(red: 24/255, green: 24/255, blue: 26/255))
            .cornerRadius(7)
            .compositingGroup()
    }
}

// кнопки в меню  ( отменить / удалить )
struct MyButtonStyleSaveSave: ButtonStyle {
    
    public func makeBody(configuration: MyButtonStyleSaveSave.Configuration) -> some View {
        
        configuration.label
            .background(configuration.isPressed ? Color(red: 40/255, green: 40/255, blue: 40/255) : Color(red: 24/255, green: 24/255, blue: 26/255))
            .cornerRadius(7)
            .animation(.interactiveSpring(response: 0.1, dampingFraction: 1.2, blendDuration: 0.6))
            .compositingGroup()
    }
}
