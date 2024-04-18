//
//  ContentView.swift
//  PytorchPractice
//
//  Created by 현수빈 on 4/18/24.
//

import SwiftUI
import LibTorch


struct ContentView: View {
    @State var result: String = "sdsds"
    
    let image =  UIImage(named: "image.png")
    
    var body: some View {
        VStack {
            Image("image.png", bundle: .none)
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text(result)
        }
        .onAppear {
            onAppear()
        }
        .padding()
    }
    
//    private lazy var module: TorchModule = {
//        if let filePath = Bundle.main.path(forResource: "mobilenetv2_coreml", ofType: "ptl"),
//            let module = TorchModule(fileAtPath: filePath) {
//            return module
//        } else {
//            fatalError("Can't find the model file!")
//        }
//    }()
//
//    private lazy var labels: [String] = {
//        if let filePath = Bundle.main.path(forResource: "words", ofType: "txt"),
//            let labels = try? String(contentsOfFile: filePath) {
//            return labels.components(separatedBy: .newlines)
//        } else {
//            fatalError("Can't find the text file!")
//        }
//    }()

    mutating func onAppear() {
//        let resizedImage = image.resized(to: CGSize(width: 224, height: 224))
//        guard var pixelBuffer = resizedImage.normalized() else {
//            return
//        }
//        guard let outputs = module.predict(image: UnsafeMutableRawPointer(&pixelBuffer)) else {
//            return
//        }
//        let zippedResults = zip(labels.indices, outputs)
//        let sortedResults = zippedResults.sorted { $0.1.floatValue > $1.1.floatValue }.prefix(3)
//        var text = ""
//        for result in sortedResults {
//            text += "\u{2022} \(labels[result.0]) \n\n"
//        }
//        result = text
    }
}

#Preview {
    ContentView()
}
