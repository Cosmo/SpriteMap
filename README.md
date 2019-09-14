# SpriteMap

SpriteMap helps you to extract sprites out of a sprite map.

---

# Extract Sprites

## By coordinates

```swift
imageAt(point: CGPoint, size: CGSize) -> CGImage?
```

Returns an optional `CGImage`.

Provide the coordinates as `CGPoint` and the size of your single sprite as `CGSize`.

### Example

To get the last image of a sprite map with the size of 600 × 600 pixels containing 9 sprites (3 × 3), you write:

```swift
let sprite = spriteMap.imageAt(point: CGPoint(x: 2, y: 2), size: CGSize(width: 200, height: 200))
```


## By index

```swift
imageAt(index: Int, size: CGSize) -> CGImage?`
```

Returns an optional `CGImage`.

Provide the index as `Int` and the size of your single sprite as `CGSize`.

### Example

To get the last image of a sprite map with the size of 600 × 600 pixels containing 9 sprites (3 × 3), you write:

```swift
let sprite = spriteMap.imageAt(index: 8, size: CGSize(width: 200, height: 200))
```

# Helpers

## Merge multiple images to one

```swift
mergeImages(_ images: [CGImage]) -> CGImage?`
```

Returns an optional `CGImage`.

Takes multiple `CGImage` elements and merges them into one.

Useful when you have multiple parts as sprites (body, mouth, eyes).

```swift
let image = CGImage.mergeImages([bodyImage, mouthImage, eyesImage])
```
CGImage.mergeImages()

## Contact

* Devran "Cosmo" Uenal
* Twitter: [@maccosmo](http://twitter.com/maccosmo)

## License

SpriteMap is released under the [MIT License](http://www.opensource.org/licenses/MIT).
