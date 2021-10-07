//
//  DrawingView.swift
//  Drawing Pencil Kit
//
//

import SwiftUI

struct DrawingView: View {
    
    @Environment(\.managedObjectContext) var viewContext
    
    @State var id:UUID?
    @State var data:Data?
    @State var title:String?
    var body: some View {
        VStack{
            DrawingCanvasView(data: data ?? Data(), id: id ?? UUID())
                .environment(\.managedObjectContext, viewContext)
                .navigationBarTitle(title ?? "Untitled",displayMode: .inline)
        }.toolbar {
            ToolbarItemGroup(placement: .navigationBarTrailing) {
                Menu {
                    Button {
                        
                    } label: {
                        Text("Strokes")
                        Image(systemName: "line.diagonal")
                    }
                    Button {
                       
                    } label: {
                        Text("Circle")
                        Image(systemName: "circle")
                    }
                    Button {
                       
                    } label: {
                        Text("Image")
                        Image(systemName: "photo")
                    }
                    
                } label: {
                     Image(systemName: "pencil.and.outline")
                }
               
            }
        }
    }
}

