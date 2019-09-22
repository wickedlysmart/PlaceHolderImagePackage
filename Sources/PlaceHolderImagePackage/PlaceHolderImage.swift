import SwiftUI

@available(iOS 13.0, *)
public struct PlaceHolderImage: View {
    
    @ObservedObject var imageLoader = ImageLoader()
    
    private let placeholder: Image
    
    public init(category: ImageLoader.Category? = nil, placeholder: Image = Image(systemName: "photo")) {
        self.placeholder = placeholder
        self.imageLoader.load(from: category)
    }
    
    public var body: some View {
        if let uiImage = self.imageLoader.downloadedImage {
            return Image(uiImage: uiImage).resizable()
        } else {
            return placeholder
        }
    }
}
