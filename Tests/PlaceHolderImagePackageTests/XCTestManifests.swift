import XCTest

#if !canImport(ObjectiveC)
public func allTests() -> [XCTestCaseEntry] {
    return [
        testCase(PlaceHolderImagePackageTests.allTests),
    ]
}
#endif
