# PlaceHolderImagePackage

A description of this package.

PlaceHolderImagePackage is an easy to use random image generator built with SwiftUI Project.

It's just a normal PlaceHolderImage. ( SwiftUI View )
So You can use any swiftui-modifier to this. 

Perfect for Quick-Prototype SwiftUI Project !

### Installation
---

on Xcode 11, 

Go File -> Swift Packages -> Add Package Dependency

Add https://github.com/wickedlysmart/PlaceHolderImagePackage.git

That's it. 

Built with [LoremPixcel](http://lorempixcel.com).

### Usage
---

If you are using Any Random image...........

```swift 
PlaceHolderImage()
``` 

If you have any category ...............

```swift
public enum Category: String {
       case abstract, animals, business, cats, city, food, nightlife, fashion, people, nature, sports, technics, transport
   }
```

```swift 
// just pick category from enum ..........
PlaceHolderImage(category: .nature)
``` 

If you want to change placeholder .......

```swift 
// change placeholder parameter ..........
PlaceHolderImage(category: .animals, placeholder: Image(systemName: "Circle"))
``` 