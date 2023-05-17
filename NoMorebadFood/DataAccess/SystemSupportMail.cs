using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DataAccess
{
    class SystemSupportMail:MasterMailServices
    {
        public SystemSupportMail() {
            SenderMail = "nmbfsoporte@gmail.com";
            password = "Armando13";
            host = "smtp.gmail.com";
            port =587;
            ssl = true;
            initializeSmtpClient();
        }
    }
}
