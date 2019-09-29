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
* LinkedIn: [devranuenal](https://www.linkedin.com/in/devranuenal)

## Other Projects

* [BinaryKit](https://github.com/Cosmo/BinaryKit) — BinaryKit helps you to break down binary data into bits and bytes and easily access specific parts.
* [Clippy](https://github.com/Cosmo/Clippy) — Clippy from Microsoft Office is back and runs on macOS! Written in Swift.
* [GrammaticalNumber](https://github.com/Cosmo/GrammaticalNumber) — Turns singular words to the plural and vice-versa in Swift.
* [HackMan](https://github.com/Cosmo/HackMan) — Stop writing boilerplate code yourself. Let hackman do it for you via the command line.
* [ISO8859](https://github.com/Cosmo/ISO8859) — Convert ISO8859 1-16 Encoded Text to String in Swift. Supports iOS, tvOS, watchOS and macOS.
* [StringCase](https://github.com/Cosmo/StringCase) — Converts String to lowerCamelCase, UpperCamelCase and snake_case. Tested and written in Swift.
* [TinyConsole](https://github.com/Cosmo/TinyConsole) — TinyConsole is a micro-console that can help you log and display information inside an iOS application, where having a connection to a development computer is not possible.


## License

SpriteMap is released under the [MIT License](http://www.opensource.org/licenses/MIT).
