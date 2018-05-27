import Foundation

class PListFileReader {
  class func plist(fromFile file: String) -> Any? {
    let base = URL(fileURLWithPath: #file).deletingLastPathComponent()
    let file = base.appendingPathComponent(file).appendingPathExtension("plist")
    if let dict = NSDictionary(contentsOfFile: file.path) { return dict }
    if let arr = NSArray(contentsOfFile: file.path) { return arr }
    return .none
  }
}
