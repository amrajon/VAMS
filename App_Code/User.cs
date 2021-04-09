using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Project_VAMS.App_Code
{
    public class User
    {
        public int Id { get; set; }
        public string UserName { get; set; }
        public string Password { get; set; }
        public string Role { get; set; }

        public User(int id, string username, string password, string role)
        {
            Id = id;
            UserName = username;
            Password = password;
            Role = role;
        }

        public User(string username, string password, string role)
        {
            UserName = username;
            Password = password;
            Role = role;
        }
    }
}
