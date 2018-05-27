// Generated using Sourcery 0.13.1 — https://github.com/krzysztofzablocki/Sourcery
// DO NOT EDIT

//
//  LinuxMain.swift
//  Tests
//
//  Created by Sourcery on 2018-05-27T18:21:37-0400.
//  sourcery --sources Tests --templates sourcery --output Tests --args testimports='@testable import ArgoTests'
//

import XCTest
@testable import ArgoTests

extension DecodedTests {
  static var allTests: [(String, (DecodedTests) -> () throws -> Void)] = [
    ("testDecodedSuccess", testDecodedSuccess),
    ("testDecodedWithError", testDecodedWithError),
    ("testDecodedWithNoError", testDecodedWithNoError),
    ("testDecodedTypeMissmatch", testDecodedTypeMissmatch),
    ("testDecodedMissingKey", testDecodedMissingKey),
    ("testDecodedCustomError", testDecodedCustomError),
    ("testDecodedMultipleErrors", testDecodedMultipleErrors),
    ("testDecodedMultipleErrorsWithOptionalKeyTypeMismatch", testDecodedMultipleErrorsWithOptionalKeyTypeMismatch),
    ("testDecodedMaterializeSuccess", testDecodedMaterializeSuccess),
    ("testDecodedMaterializeFailure", testDecodedMaterializeFailure),
    ("testDecodedDematerializeSuccess", testDecodedDematerializeSuccess),
    ("testDecodedDematerializeTypeMismatch", testDecodedDematerializeTypeMismatch),
    ("testDecodedDematerializeMissingKey", testDecodedDematerializeMissingKey),
    ("testDecodedOrWithSuccess", testDecodedOrWithSuccess),
    ("testDecodedOrWithError", testDecodedOrWithError),
    ("testOptionalIgnoresErrors", testOptionalIgnoresErrors)
  ]
}
extension EmbeddedDecodingTests {
  static var allTests: [(String, (EmbeddedDecodingTests) -> () throws -> Void)] = [
    ("testDecodeEmbeddedObject", testDecodeEmbeddedObject),
    ("testFailOnEmbeddedObject", testFailOnEmbeddedObject)
  ]
}
extension EmbeddedJSONDecodingTests {
  static var allTests: [(String, (EmbeddedJSONDecodingTests) -> () throws -> Void)] = [
    ("testCommentDecodingWithEmbeddedUserName", testCommentDecodingWithEmbeddedUserName),
    ("testPostDecodingWithEmbeddedUserModel", testPostDecodingWithEmbeddedUserModel),
    ("testPostDecodingWithEmbeddedUserModelAndComments", testPostDecodingWithEmbeddedUserModelAndComments),
    ("testPostDecodingWithBadComments", testPostDecodingWithBadComments)
  ]
}
extension EquatableTests {
  static var allTests: [(String, (EquatableTests) -> () throws -> Void)] = [
    ("testEqualJSONObjects", testEqualJSONObjects),
    ("testNotEqualJSONObjects", testNotEqualJSONObjects)
  ]
}
extension ExampleTests {
  static var allTests: [(String, (ExampleTests) -> () throws -> Void)] = [
    ("testJSONWithRootArray", testJSONWithRootArray),
    ("testJSONWithRootObject", testJSONWithRootObject),
    ("testDecodingNonFinalClass", testDecodingNonFinalClass),
    ("testDecodingJSONWithRootArray", testDecodingJSONWithRootArray),
    ("testFlatMapOptionals", testFlatMapOptionals),
    ("testNilCoalescing", testNilCoalescing),
    ("testFlatMapDecoded", testFlatMapDecoded)
  ]
}
extension OptionalPropertyDecodingTests {
  static var allTests: [(String, (OptionalPropertyDecodingTests) -> () throws -> Void)] = [
    ("testUserDecodingWithEmail", testUserDecodingWithEmail),
    ("testUserDecodingWithoutEmail", testUserDecodingWithoutEmail)
  ]
}
extension PListDecodingTests {
  static var allTests: [(String, (PListDecodingTests) -> () throws -> Void)] = [
    ("testDecodingAllTypesFromPList", testDecodingAllTypesFromPList)
  ]
}
extension PerformanceTests {
  static var allTests: [(String, (PerformanceTests) -> () throws -> Void)] = [
    ("testParsePerformance", testParsePerformance),
    ("testDecodePerformance", testDecodePerformance),
    ("testBigDataDecodesCorrectly", testBigDataDecodesCorrectly)
  ]
}
extension RawRepresentableTests {
  static var allTests: [(String, (RawRepresentableTests) -> () throws -> Void)] = [
    ("testStringEnum", testStringEnum),
    ("testIntEnum", testIntEnum)
  ]
}
extension SwiftDictionaryDecodingTests {
  static var allTests: [(String, (SwiftDictionaryDecodingTests) -> () throws -> Void)] = [
    ("testDecodingAllTypesFromSwiftDictionary", testDecodingAllTypesFromSwiftDictionary)
  ]
}
extension TypeTests {
  static var allTests: [(String, (TypeTests) -> () throws -> Void)] = [
    ("testAllTheTypes", testAllTheTypes),
    ("testFailingEmbedded", testFailingEmbedded),
    ("testBooleanDecoding", testBooleanDecoding),
    ("testBooleanIdentification", testBooleanIdentification)
  ]
}

// swiftlint:disable trailing_comma
XCTMain([
  testCase(DecodedTests.allTests),
  testCase(EmbeddedDecodingTests.allTests),
  testCase(EmbeddedJSONDecodingTests.allTests),
  testCase(EquatableTests.allTests),
  testCase(ExampleTests.allTests),
  testCase(OptionalPropertyDecodingTests.allTests),
  testCase(PListDecodingTests.allTests),
  testCase(PerformanceTests.allTests),
  testCase(RawRepresentableTests.allTests),
  testCase(SwiftDictionaryDecodingTests.allTests),
  testCase(TypeTests.allTests),
])
// swiftlint:enable trailing_comma
