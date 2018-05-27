import Foundation

class PListFileReader {
  class func plist(fromFile file: String) -> Any? {
#if os(Linux)
    let base = URL(fileURLWithPath: #file).deletingLastPathComponent()
    let file = base.appendingPathComponent(file).appendingPathExtension("plist")
    let path = Optional(file.path)
#else
    let path = Bundle(for: self).path(forResource: file, ofType: "plist")
#endif

    if let p = path {
      if let dict = NSDictionary(contentsOfFile: p) { return dict }
      if let arr = NSArray(contentsOfFile: p) { return arr }
    }

    return .none
  }
}
