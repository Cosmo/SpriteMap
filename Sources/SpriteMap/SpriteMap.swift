import Foundation
import CoreGraphics

extension CGImage {
    /// Returns an optional `CGImage`.
    /// Takes multiple `CGImage` elements and merges them into one.
    public static func mergeImages(_ images: [CGImage]) -> CGImage? {
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
    
    /// Returns an optional `CGImage`.
    /// Provide the coordinates as `CGPoint` and the size of your single sprite as `CGSize`.
    public func imageAt(point: CGPoint, size: CGSize) -> CGImage? {
        let x = point.x * size.width
        let y = point.y * size.height
        let rect = CGRect(origin: CGPoint(x: x, y: y), size: size)
        guard let croppedImage = self.cropping(to: rect) else { return nil }
        return croppedImage
    }
    
    /// Returns an optional `CGImage`.
    /// Provide the index as `Int` and the size of your single sprite as `CGSize`.
    public func imageAt(index: Int, size: CGSize) -> CGImage? {
        let columns = self.width / Int(size.width)
        let x = index % columns
        let y = index / columns
        let point = CGPoint(x: x, y: y)
        return self.imageAt(point: point, size: size)
    }
}
