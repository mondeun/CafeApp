namespace CafeApp.Core.Tests


open CafeApp.Core
open NUnit.Framework

module UnitTests =
    [<Test>]
    let ``Sample Test`` () =
        let say = new Say()
        Assert.AreEqual("Test", say.hello)
