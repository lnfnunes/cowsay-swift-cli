import XCTest

@available(macOS 10.13, *)
final class cowsayTests: XCTestCase {

    func test_ShouldSayDefault_WhenMessageParamIsOmitted() throws {
        let result = try runCommand()
        let expected = """
       _________
      < muuhhhh >
       ---------
              \\   ^__^
               \\  (oo\\________
                  (__)\\       )\\/\\
                      ||----w |
                      ||     ||
      \n
      """

        XCTAssertEqual(result, expected)
    }

    func test_ShouldSayCobaia_WhenMessageParamIsCobaia() throws {
        let result = try runCommand(with: ["cobaia"])
        let expected = """
       ________
      < cobaia >
       --------
              \\   ^__^
               \\  (oo\\________
                  (__)\\       )\\/\\
                      ||----w |
                      ||     ||
      \n
      """

        XCTAssertEqual(result, expected)
    }
}
