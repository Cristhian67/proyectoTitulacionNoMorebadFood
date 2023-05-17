using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Net;
using System.Net.Mail;
using System.Windows.Forms;

namespace DataAccess
{
    public abstract class MasterMailServices
    {
        private SmtpClient smtpClient { get; set; }
        protected string SenderMail { get; set; }
        protected string password { get; set; }
        protected string host { get; set; }
        protected int port { get; set; }
        protected bool ssl { get; set; }
        protected void initializeSmtpClient() {
            smtpClient = new SmtpClient();
            smtpClient.Credentials = new NetworkCredential(SenderMail, password);
            smtpClient.Host = host;
            smtpClient.Port = port;
            smtpClient.EnableSsl = ssl;

        }
        public void sendMail(string subject, string body, List<string> recipientMail) {
            var mailMessage = new MailMessage();
            try
            {
                mailMessage.From = new MailAddress(SenderMail);
                foreach (string mail in recipientMail)
                {
                    mailMessage.To.Add(mail);
                }
                mailMessage.Subject = subject;
                mailMessage.Body = body;
                mailMessage.Priority = MailPriority.Normal;
                smtpClient.Send(mailMessage);
            }
            catch (Exception ex)
            {
                MessageBox.Show("Revise su acceso a internet ");
            }
            finally {
                mailMessage.Dispose();
                smtpClient.Dispose();
            }
        }
    }
}
