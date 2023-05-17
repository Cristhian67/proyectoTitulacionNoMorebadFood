using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;
using System.Data.SqlClient;
using System.Windows.Forms;

namespace DataAccess
{
    public class UserDao:ConnectionToSql
    {
        public static string Nombre { get; set; }
        public static string Email { get; set; }
        public static string Puesto { get; set; }
        public bool Login(string user, string pass) {
            using (var connection = GetConnection()) {
                connection.Open();
                using (var command = new SqlCommand()) {
                    command.Connection = connection;
                    command.Parameters.Clear();
                    command.CommandText = "select * from usuarios where Usuario = @user and Password =@pass";
                    command.Parameters.AddWithValue("@user", user);
                    command.Parameters.AddWithValue("@pass", pass);
                    command.CommandType = CommandType.Text;
                    SqlDataReader reader = command.ExecuteReader();
                    if (reader.HasRows)
                    {
                        reader.Read();
                        Nombre=reader.GetString(0);
                        Email = reader.GetString(1);
                        Puesto = reader.GetString(4);
                        
                        return true;
                    }
                    else {
                        Nombre = "";
                        Email = "";
                        Puesto = "";
                        return false;
                    }
                }
            }
        }
        public string recoverPassword(string userRequiesting) {
            using (var connection = GetConnection())
            {
                connection.Open();
                using (var command = new SqlCommand())
                {
                    command.Connection = connection;
                    command.CommandText = "select * from usuarios where Usuario = '" + userRequiesting + "' or Email = '" + userRequiesting + "'";
                    


                    command.CommandType = CommandType.Text;
                    SqlDataReader reader = command.ExecuteReader();
                    
                    string userName = "";
                    string userMail = "";
                    string pass = "";
                    if (reader.HasRows == true)
                    {
                        while (reader.Read()) { 

                         userName = "" + reader.GetString(0);
                         userMail = "" + reader.GetString(1);
                         pass = "" + reader.GetString(2);
                    }
                        var mailService = new SystemSupportMail();
                        
                        mailService.sendMail(
                            subject: "Recuperacion de contraseña",
                            body: "Hola " + userName + " \n Has enviado una solicitud de recuperacion de contraseña. \n Tu contraseña actual es: " + pass + " \n gracias por usar No More Bad food :)",
                            recipientMail: new List<string> { userMail }
                            );
                        return "Hola " + userName + " \n Has enviado una solicitud de recuperacion de contraseña. Se ha enviado a tu correo electronico " + userMail;
                    }
                    else {
                    return "No se pudo enviar: Verifique si tiene conexion o si sus datos son correctos";
                    }
                    
                }
            }
        }

        public string[] DatosUser() {
            string[] datos = new string[3];
            datos[0] = Nombre;
            datos[1] = Puesto;
            datos[2] = Email;
            return datos;

        }
    }
}
