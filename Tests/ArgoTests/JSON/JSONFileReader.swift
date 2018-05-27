import Foundation

func json(fromFile file: String) -> Any? {
#if os(Linux)
  let base = URL(fileURLWithPath: #file).deletingLastPathComponent()
  let file = base.appendingPathComponent(file).appendingPathExtension("json")
  return (try? Data(contentsOf: file)).flatMap(JSONObjectWithData)
#else
  return Bundle(for: JSONFileReader.self).path(forResource: file, ofType: "json")
    .flatMap { URL(fileURLWithPath: $0) }
    .flatMap { try? Data(contentsOf: $0) }
    .flatMap(JSONObjectWithData)
#endif
}

private func JSONObjectWithData(fromData data: Data) -> Any? {
  return try? JSONSerialization.jsonObject(with: data, options: [])
}

private class JSONFileReader { }
