using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using DataAccess;

namespace Domain
{
    public class UserModel
    {
        UserDao userDao = new UserDao();
        public bool LoginUser(string user,string pass ) {
            return userDao.Login(user, pass);
        }
        public string recoverPassword(string userRequiesting) {
            return userDao.recoverPassword(userRequiesting);
        }
        public string[] DatosUser()
        {
            return userDao.DatosUser();
        }
       
    }

}
