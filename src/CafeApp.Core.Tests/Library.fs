namespace CafeApp.Core.Tests


open CafeApp.Core
open NUnit.Framework

module UnitTests =
    [<Test>]
    let ``Sample Test`` () =
        let say = "Test"
        Assert.AreEqual("Test", say)
