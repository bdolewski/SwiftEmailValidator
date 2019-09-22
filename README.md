# SwiftEmailValidator
Very small e-mail validation helper written in Swift. It contains regular expresion that is compliant with RFC 5322.
You can use it via Swift Package Manager or just copy file `SwiftEmailValidator.swift` into your project - done!

## How do I use it in my code?
Simple as this:

```swift
let result = EmailValidator.isValid(email: "john.appleseed@apple.com")
```

There is only 1 static function `isValid(email:)` enclosed in _namespace_ `EmailValidator` (just a case-less enum to not create any instances of `EmailValidator`)
