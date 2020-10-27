import XCTest

#if !os(macOS)
public func allTests() -> [XCTestCaseEntry] {
    return [
        testCase(SlidesAPITests.allTests),
        testCase(UseCaseTests.allTests)
    ]
}
#endif
