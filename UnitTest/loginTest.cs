using Microsoft.VisualStudio.TestTools.UnitTesting;
using System;

namespace UnitTest
{
    [TestClass]
    public class loginTest
    {
        [TestMethod]
        public void AdminPageRedirecting_UserRoleIsAdmin_ReturnTrue()
        {
            //Arrange
            var Login = new Login();

            //Act
            var Login = Login.AdminPageRedirecting(new User {Role = Administrator,  true && Response.Redirect("~/Pages/Management/AdminPage.aspx")= true});

            //Assert
            Assert.IsTrue(Login);
        }
    }
}
