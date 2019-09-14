import Foundation
import CoreGraphics

extension CGImage {
    static func mergeImages(_ images: [CGImage]) -> CGImage? {
        guard let firstImage = images.first else { return nil }
        let width = firstImage.width
        let height = firstImage.height
        
        var data = Data(capacity: 0)
        let colorSpace = CGColorSpaceCreateDeviceRGB()
        
        let closure = { (bytes: UnsafeMutableRawBufferPointer) -> CGImage? in
            guard let context = CGContext(data: nil,
                                          width: width,
                                          height: height,
                                          bitsPerComponent: 8,
                                          bytesPerRow: 0,
                                          space: colorSpace,
                                          bitmapInfo: 1) else {
                                            return nil
            }
            for image in images {
                let size = CGSize(width: image.width, height: image.height)
                let rect = CGRect(origin: CGPoint.zero, size: size)
                context.draw(image, in: rect)
            }
            return context.makeImage()
        }
        
        return data.withUnsafeMutableBytes(closure)
    }
}

