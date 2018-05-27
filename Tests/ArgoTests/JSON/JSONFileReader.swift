import Foundation

func json(fromFile file: String) -> Any? {
  let base = URL(fileURLWithPath: #file).deletingLastPathComponent()
  let file = base.appendingPathComponent(file).appendingPathExtension("json")
  return (try? Data(contentsOf: file)).flatMap(JSONObjectWithData)
}

private func JSONObjectWithData(fromData data: Data) -> Any? {
  return try? JSONSerialization.jsonObject(with: data, options: [])
}

private class JSONFileReader { }
