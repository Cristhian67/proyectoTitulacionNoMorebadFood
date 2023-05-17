using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data.SqlClient;
using System.Data;
using System.IO;
using System.Windows;
using System.Media;
using System.Windows.Forms;
using System.Collections;

namespace DataAccess
{

    public class QuerytoSqlDA : ConnectionToSql
    {
        SqlDataReader leer;
        DataTable tabla = new DataTable();
        SqlCommand comando = new SqlCommand();
        SqlCommand comando2 = new SqlCommand();
        #region AnalisisDatos
        public void insertarDatosPCliente(string nombre, string ApellidoP, string ApellidoM, string Contacto, string sexo)
        {


            using (var connection = GetConnection())
            {
                comando2.Parameters.Clear();
                connection.Open();
                int Numeros = codCliente();
                string CodCliente = "Cliente0" + Numeros;
                comando2.Connection = connection;
                comando2.CommandText = "insert into clientes2 values('" + nombre + "', '" + ApellidoP + "', '" + ApellidoM + "', '" + Contacto + "', '" + sexo + "', '" + CodCliente + "', '" + Numeros + "')";



                comando2.ExecuteNonQuery();
            }
        }
        public int codCliente()
        {
            using (var connection = GetConnection())
            {
                connection.Open();
                comando.Connection = connection;
                comando.CommandText = "select Num from clientes2 where Num = (select max(Num) from clientes2)";

                comando.CommandType = CommandType.Text;
                leer = comando.ExecuteReader();

                string numero;

                if (leer.HasRows == true)
                {
                    leer.Read();


                    numero = "" + leer.GetInt32(0);
                    int Numeros = int.Parse(numero);
                    Numeros++;
                    return Numeros;
                }
                else
                {
                    numero = "0";
                    int Numeros = int.Parse(numero);
                    Numeros++;
                    return Numeros;
                }

            }





        }
        public string mostrarCodCliente(string Nombre, string apellido, string contacto)
        {
            using (var connection = GetConnection())
            {
                connection.Open();
                comando.Connection = connection;
                comando.CommandText = "select Cod from clientes2 where Nombre = '" + Nombre + "' and ApellidoP = '" + apellido + "' and Contacto = '" + contacto + "'";


                comando.CommandType = CommandType.Text;
                leer = comando.ExecuteReader();

                string cod;
                if (leer.HasRows)
                {
                    leer.Read();
                    cod = leer.GetString(0);
                    return cod;

                }
                else
                {
                    cod = "no encontrado";
                    return cod;

                }

            }

        }
        public void RegistrarDatosFC(string peso, string Altura, string Edad, string Embarazo, string Alergia, string ActividadF, string codCliente, string Fecha, string EFisico)
        {
            using (var connection = GetConnection())
            {
                connection.Close();


                int cod = IDDFC();
                comando.Connection = connection;

                comando.CommandText = "insert into DatosFC values ('" + peso + "','" + Altura + "','" + Edad + "','" + Embarazo + "','" + Alergia + "','" + ActividadF + "','" + codCliente + "','" + Fecha + "','" + EFisico + "','" + cod + "')";
                comando.Connection.Open();
                comando.ExecuteNonQuery();


            }
        }
        public int IDDFC()
        {
            using (var connection = GetConnection())
            {
                connection.Open();
                comando.Connection = connection;
                comando.CommandText = "select ID from DatosFC where ID = (select max(ID) from DatosFC)";

                comando.CommandType = CommandType.Text;
                leer = comando.ExecuteReader();

                string numero;

                if (leer.HasRows == true)
                {
                    leer.Read();


                    numero = "" + leer.GetInt32(0);
                    int Numeros = int.Parse(numero);
                    Numeros++;
                    return Numeros;
                }
                else
                {
                    numero = "0";
                    int Numeros = int.Parse(numero);
                    Numeros++;
                    return Numeros;
                }

            }

        }

        public void registrarGustos(string codC, string Pollo, string Cerdo, string Tocino, string Pescado, string Res, string Aguacate, string Brocoli, string Esparragos, string Coliflor, string Calabazin, string Champiñon, string Huevo, string Mantequilla, string Nueces, string Queso, string Pastas)
        {
            using (var connection = GetConnection())
            {
                connection.Close();


                int cod = IDDFC();
                comando.Connection = connection;

                comando.CommandText = "insert into GustosC values ('" + codC + "','" + Pollo + "','" + Cerdo + "','" + Tocino + "','" + Pescado + "','" + Res + "','" + Aguacate + "','" + Brocoli + "','" + Esparragos + "','" + Coliflor + "','" + Calabazin + "','" + Champiñon + "','" + Huevo + "','" + Mantequilla + "','" + Nueces + "','" + Queso + "','" + Pastas + "')";
                comando.Connection.Open();
                comando.ExecuteNonQuery();


            }
        }
        public string[] MostrardatosC(string codCliente)
        {

            using (var connection = GetConnection())
            {
                connection.Open();
                comando.Connection = connection;
                comando.CommandText = "select * from clientes2 where Cod = '" + codCliente + "'";


                comando.CommandType = CommandType.Text;
                leer = comando.ExecuteReader();
                string[] data = new string[7];


                if (leer.HasRows)
                {

                    while (leer.Read())
                    {

                        data[0] = leer.GetString(0);
                        data[1] = leer.GetString(1);
                        data[2] = leer.GetString(2);
                        data[3] = leer.GetString(3);
                        data[4] = leer.GetString(4);
                        data[5] = leer.GetString(5);




                    }
                    return data;

                }
                else
                {
                    data[5] = "no encontrado";
                    return data;

                }

            }

        }
        public string[] MostrarDatosFC(string codCliente)
        {
            using (var connection = GetConnection())
            {
                int i = IDDFCS(codCliente);
                connection.Open();
                comando.Connection = connection;
                comando.CommandText = "select * from DatosFC where cod_cliente = '" + codCliente + "' and ID = '" + i + "'";


                comando.CommandType = CommandType.Text;
                leer = comando.ExecuteReader();
                string[] data = new string[10];


                if (leer.HasRows)
                {

                    while (leer.Read())
                    {

                        data[0] = "" + leer.GetDouble(0);
                        data[1] = "" + leer.GetDouble(1);
                        data[2] = "" + leer.GetInt32(2);
                        data[3] = leer.GetString(3);
                        data[4] = leer.GetString(4);
                        data[5] = leer.GetString(5);
                        data[6] = leer.GetString(6);
                        data[7] = "" + leer.GetDateTime(7);
                        data[8] = leer.GetString(8);

                    }
                    return data;

                }
                else
                {
                    data[0] = "" + i;
                    data[1] = "" + codCliente;
                    return data;

                }

            }

        }
        public int IDDFCS(string codCliente)
        {
            using (var connection = GetConnection())
            {
                connection.Open();
                comando.Connection = connection;
                comando.CommandText = "select ID from DatosFC where ID = (select max(ID) from DatosFC where cod_cliente = '" + codCliente + "')";

                comando.CommandType = CommandType.Text;
                leer = comando.ExecuteReader();

                string numero;

                if (leer.HasRows == true)
                {
                    leer.Read();


                    numero = "" + leer.GetInt32(0);
                    int Numeros = int.Parse(numero);

                    return Numeros;
                }
                else
                {
                    numero = "0";
                    int Numeros = int.Parse(numero);

                    return Numeros;
                }

            }

        }
        public bool ValidarCliente(string id)
        {
            using (var connection = GetConnection())
            {

                connection.Open();
                using (var command = new SqlCommand())
                {
                    command.Connection = connection;
                    comando2.Parameters.Clear();
                    command.CommandText = "select * from clientes2 where Cod = @id";
                    command.Parameters.AddWithValue("@id", id);

                    command.CommandType = CommandType.Text;
                    SqlDataReader reader = command.ExecuteReader();
                    if (reader.HasRows)
                    {
                        return true;
                    }
                    else
                    {
                        return false;
                    }
                }
            }
        }
        public void MostrarTDDietas(ComboBox cbTDietas)
        {
            using (var connection = GetConnection())
            {

                connection.Open();
                using (var command = new SqlCommand())
                {
                    command.Connection = connection;
                    comando2.Parameters.Clear();
                    command.CommandText = "select NombreTD from TDietas ";


                    command.CommandType = CommandType.Text;
                    SqlDataReader reader = command.ExecuteReader();
                    while (reader.Read())
                    {
                        cbTDietas.Items.Add(reader["NombreTD"].ToString());
                    }

                }
            }
        }
        public string[] ObtenerMacNutrientesPorcentaje(string nombre)
        {
            string[] data = new string[3];
            data[0] = "0";
            data[1] = "0";
            data[2] = "0";
            using (var connection = GetConnection())
            {

                connection.Open();
                using (var command = new SqlCommand())
                {
                    command.Connection = connection;
                    comando2.Parameters.Clear();
                    command.CommandText = "select Carbohidratos, Lipidos, Proteinas from TDietas where NombreTD= '" + nombre + "'";


                    command.CommandType = CommandType.Text;
                    SqlDataReader reader = command.ExecuteReader();
                    while (reader.Read())
                    {
                        data[0] = reader["Carbohidratos"].ToString();
                        data[1] = reader["Lipidos"].ToString();
                        data[2] = reader["Proteinas"].ToString();
                        return data;
                    }

                }
            }
            return data;

        }

        #endregion
        #region GestionarAlimentos
        public bool InsertarAlimento(string Nombre, float Carbohidratos, float Proteinas, float Grasas, float calorias)
        {
            using (var connection = GetConnection())
            {
                connection.Open();
                int Num = NumAlimento();
                string id = "Alimento0" + Num;
                comando2.Connection = connection;
                comando2.Parameters.Clear();
                comando2.CommandText = "insert into Alimentos values(@id, @Num, @Nombre, round(@CH,2), round(@Proteinas,2), round(@Grasas,2), round(@Kcalorias,2))";
                comando2.Parameters.Add("@id", SqlDbType.VarChar);
                comando2.Parameters.Add("@Num", SqlDbType.Int);
                comando2.Parameters.Add("@Nombre", SqlDbType.VarChar);
                comando2.Parameters.Add("@CH", SqlDbType.Float);
                comando2.Parameters.Add("@Proteinas", SqlDbType.Float);
                comando2.Parameters.Add("@Grasas", SqlDbType.Float);
                comando2.Parameters.Add("@Kcalorias", SqlDbType.Float);




                comando2.Parameters["@id"].Value = id;
                comando2.Parameters["@Num"].Value = Num;
                comando2.Parameters["@Nombre"].Value = Nombre;
                comando2.Parameters["@CH"].Value = Carbohidratos;
                comando2.Parameters["@Proteinas"].Value = Proteinas;
                comando2.Parameters["@Grasas"].Value = Grasas;
                comando2.Parameters["@Kcalorias"].Value = calorias;




                int resultado = comando2.ExecuteNonQuery();
                if (resultado > 0) return true;
                else return false;
                connection.Close();
            }
        }
        public bool ActualizarAlimento(string id, string Nombre, float Carbohidratos, float Proteinas, float Grasas, float Calorias)
        {
            using (var connection = GetConnection())
            {
                connection.Open();



                comando2.Connection = connection;
                comando2.Parameters.Clear();
                comando2.CommandText = "update Alimentos set  Nombre = @Nombre , CarboHidratosGr= round(@CH,2), ProteinasGr= round(@Proteinas,2), GrasasGr= round(@Grasas,2), Kcalorias = round(@Calorias, 2) where ID_Alimento = @id";
                comando2.Parameters.Add("@id", SqlDbType.VarChar);

                comando2.Parameters.Add("@Nombre", SqlDbType.VarChar);
                comando2.Parameters.Add("@CH", SqlDbType.Float);
                comando2.Parameters.Add("@Proteinas", SqlDbType.Float);
                comando2.Parameters.Add("@Grasas", SqlDbType.Float);
                comando2.Parameters.Add("@Calorias", SqlDbType.Float);


                comando2.Parameters["@id"].Value = id;

                comando2.Parameters["@Nombre"].Value = Nombre;
                comando2.Parameters["@CH"].Value = Carbohidratos;
                comando2.Parameters["@Proteinas"].Value = Proteinas;
                comando2.Parameters["@Grasas"].Value = Grasas;
                comando2.Parameters["@Calorias"].Value = Calorias;



                int resultado = comando2.ExecuteNonQuery();
                if (resultado > 0) return true;
                else return false;

                connection.Close();
            }
        }
        public bool EliminarAlimento(string id)
        {
            using (var connection = GetConnection())
            {
                connection.Open();

                comando2.Connection = connection;

                comando2.CommandText = " delete from Alimentos where ID_Alimento = '" + id + "'";



                int resultado = comando2.ExecuteNonQuery();
                if (resultado > 0) return true;
                else return false;
                connection.Close();
            }
        }
        
        public int NumAlimento()
        {
            using (var connection = GetConnection())
            {
                connection.Open();
                comando.Connection = connection;
                comando.CommandText = "select Num from Alimentos where Num = (select max(Num) from Alimentos)";

                comando.CommandType = CommandType.Text;
                leer = comando.ExecuteReader();

                string numero;

                if (leer.HasRows == true)
                {
                    leer.Read();


                    numero = "" + leer.GetInt32(0);
                    int Numeros = int.Parse(numero);
                    Numeros++;
                    return Numeros;
                }
                else
                {
                    numero = "0";
                    int Numeros = int.Parse(numero);
                    Numeros++;
                    return Numeros;
                }

            }





        }
        public void CargarTabla(DataGridView DGV)
        {
            using (var connection = GetConnection())
            {
                DataTable dt;
                try
                {

                    SqlDataAdapter da = new SqlDataAdapter("select ID_Alimento, Nombre, CarboHidratosGr, ProteinasGr, GrasasGr, Kcalorias from Alimentos order by Num", connection);
                    dt = new DataTable();
                    da.Fill(dt);
                    DGV.DataSource = dt;
                }
                catch (Exception ex)
                {
                    MessageBox.Show("No se pudo llenar el DatagridView" + ex);
                }

            }
        }

        public string[] CamposAlimento(string id)
        {
            using (var connection = GetConnection())
            {
                connection.Open();
                comando.Connection = connection;
                comando.CommandText = "select Nombre, CarboHidratosGr ,ProteinasGr, GrasasGr, Kcalorias from Alimentos where ID_Alimento = '" + id + "'";


                comando.CommandType = CommandType.Text;
                leer = comando.ExecuteReader();
                string[] data = new string[7];


                if (leer.HasRows)
                {

                    while (leer.Read())
                    {

                        data[0] = "" + leer.GetString(0);
                        data[1] = "" + leer.GetDouble(1);
                        data[2] = "" + leer.GetDouble(2);
                        data[3] = "" + leer.GetDouble(3);
                        data[4] = "" + leer.GetDouble(4);





                    }
                    return data;

                }
                else
                {
                    data[0] = "no encontrado";
                    return data;

                }

            }
        }

        public bool registrarPropiedad(string id, string propiedad)
        {
            using (var connection = GetConnection())
            {
                connection.Open();
                int Num = NumPAlimento();

                comando2.Connection = connection;

                comando2.CommandText = "insert into EtiquetasAlimentos values('" + Num + "', '" + id + "', '" + propiedad + "')";

                int resultado = comando2.ExecuteNonQuery();
                if (resultado > 0) return true;
                else return false;
                connection.Close();
            }

        }
        public int NumPAlimento()
        {
            using (var connection = GetConnection())
            {
                connection.Open();
                comando.Connection = connection;
                comando.CommandText = "select ID from EtiquetasAlimentos where ID = (select max(ID) from EtiquetasAlimentos)";

                comando.CommandType = CommandType.Text;
                leer = comando.ExecuteReader();

                string numero;

                if (leer.HasRows == true)
                {
                    leer.Read();


                    numero = "" + leer.GetInt32(0);
                    int Numeros = int.Parse(numero);
                    Numeros++;
                    return Numeros;
                }
                else
                {
                    numero = "0";
                    int Numeros = int.Parse(numero);
                    Numeros++;
                    return Numeros;
                }

            }
        }
        public void verPropiedades(string id, DataGridView DGV)
        {
            using (var connection = GetConnection())
            {
                DataTable dt;
                try
                {

                    SqlDataAdapter da = new SqlDataAdapter("select Caracteristica from EtiquetasAlimentos where IDAlimento = '" + id + "'", connection);
                    dt = new DataTable();
                    da.Fill(dt);
                    DGV.DataSource = dt;
                }
                catch (Exception ex)
                {
                    MessageBox.Show("No se pudo llenar el DatagridView" + ex);
                }

            }
        }

        public bool EliminarCaracteristica(string id, string Caracteristica)
        {
            using (var connection = GetConnection())
            {
                connection.Open();

                comando2.Connection = connection;

                comando2.CommandText = " delete from EtiquetasAlimentos where IDAlimento = '" + id + "' And Caracteristica = '" + Caracteristica + "'";



                int resultado = comando2.ExecuteNonQuery();
                if (resultado > 0) return true;
                else return false;
                connection.Close();
            }
        }
        #endregion|
        #region GestionarClientes
        public void CargarTablaClientes(DataGridView DGV)
        {
            using (var connection = GetConnection())
            {
                DataTable dt;
                try
                {

                    SqlDataAdapter da = new SqlDataAdapter("select Cod, Nombre, ApellidoP, ApellidoM, Contacto, Sexo from clientes2 ", connection);
                    dt = new DataTable();
                    da.Fill(dt);
                    DGV.DataSource = dt;
                }
                catch (Exception ex)
                {
                    MessageBox.Show("No se pudo llenar el DatagridView" + ex);
                }

            }
        }
        public bool EliminarClienteYDatos(string id)
        {
            EliminarGustosCliente(id);
            EliminarDatosCliente(id);
            using (var connection = GetConnection())
            {
                connection.Open();
                comando2.Connection = connection;
                comando2.CommandText = " delete from clientes2 where Cod = '" + id + "'";
                int resultado = comando2.ExecuteNonQuery();
                if (resultado > 0) return true;
                else return false;
                connection.Close();
            }
        }
        public bool EliminarDatosCliente(string id)
        {
            using (var connection = GetConnection())
            {
                connection.Open();

                comando2.Connection = connection;

                comando2.CommandText = " delete from DatosFC where cod_cliente = '" + id + "'";



                int resultado = comando2.ExecuteNonQuery();
                if (resultado > 0) return true;
                else return false;
                connection.Close();
            }




        }
        public bool EliminarGustosCliente(string id)
        {
            using (var connection = GetConnection())
            {
                connection.Open();

                comando2.Connection = connection;

                comando2.CommandText = " delete from gustosC where CodC = '" + id + "'";



                int resultado = comando2.ExecuteNonQuery();
                if (resultado > 0) return true;
                else return false;
                connection.Close();
            }
        }
        public bool ActualizarCliente(string id, string Nombre, string ApellidoP, string ApellidoM, string Contacto)
        {
            using (var connection = GetConnection())
            {
                connection.Open();
                int Num = NumAlimento();


                comando2.Connection = connection;
                comando2.Parameters.Clear();
                comando2.CommandText = "update clientes2 set Nombre = @Nombre, ApellidoP = @ApellidoP, ApellidoM= @ApellidoM, Contacto=@Contacto   where Cod = @id";
                comando2.Parameters.Add("@id", SqlDbType.VarChar);

                comando2.Parameters.Add("@Nombre", SqlDbType.VarChar);
                comando2.Parameters.Add("@ApellidoP", SqlDbType.VarChar);
                comando2.Parameters.Add("@ApellidoM", SqlDbType.VarChar);
                comando2.Parameters.Add("@Contacto", SqlDbType.VarChar);
                comando2.Parameters["@id"].Value = id;
                comando2.Parameters["@Nombre"].Value = Nombre;
                comando2.Parameters["@ApellidoP"].Value = ApellidoP;
                comando2.Parameters["@ApellidoM"].Value = ApellidoM;
                comando2.Parameters["@Contacto"].Value = Contacto;


                int resultado = comando2.ExecuteNonQuery();
                if (resultado > 0) return true;
                else return false;

                connection.Close();
            }
        }

        #endregion
        #region Usuarios
        public void CargarTablaUsuarios(DataGridView DGV)
        {
            using (var connection = GetConnection())
            {
                DataTable dt;
                try
                {

                    SqlDataAdapter da = new SqlDataAdapter("select * from usuarios ", connection);
                    dt = new DataTable();
                    da.Fill(dt);
                    DGV.DataSource = dt;
                }
                catch (Exception ex)
                {
                    MessageBox.Show("No se pudo llenar el DatagridView" + ex);
                }

            }
        }
        public bool EliminarUsuario(string Usuario)
        {

            using (var connection = GetConnection())
            {
                connection.Open();

                comando2.Connection = connection;

                comando2.CommandText = " delete from usuarios where Usuario = '" + Usuario + "'";
                int resultado = comando2.ExecuteNonQuery();
                if (resultado > 0) return true;
                else return false;
                connection.Close();
            }
        }
        public bool ActualizarUsuario(string Nombre, string Email, string Password, string Usuario, string Puesto)
        {
            using (var connection = GetConnection())
            {
                connection.Open();
                int Num = NumAlimento();


                comando2.Connection = connection;
                comando2.Parameters.Clear();
                comando2.CommandText = "update usuarios set Nombre = @Nombre, Email = @Email, Password = @Password, Usuario=@Usuario, Puesto = @Puesto where Usuario= @Usuario ";
                

                comando2.Parameters.Add("@Nombre", SqlDbType.VarChar);
                comando2.Parameters.Add("@ApellidoP", SqlDbType.VarChar);
                comando2.Parameters.Add("@ApellidoM", SqlDbType.VarChar);
                comando2.Parameters.Add("@Contacto", SqlDbType.VarChar);

                comando2.Parameters["@Nombre"].Value = Nombre;
                comando2.Parameters["@Email"].Value = Email;
                comando2.Parameters["@Password"].Value = Password;
                comando2.Parameters["@Usuario"].Value = Usuario;
                comando2.Parameters["@Puesto"].Value = Puesto;

                int resultado = comando2.ExecuteNonQuery();
                if (resultado > 0) return true;
                else return false;

                connection.Close();
            }
        }
        public bool insertarUsuario(string Nombre, string Email, string Password, string Usuario, string Puesto)
        {


            using (var connection = GetConnection())
            {
                comando2.Parameters.Clear();
                connection.Open();
                comando2.Connection = connection;
                comando2.CommandText = "insert into usuarios values('" + Nombre + "', '" + Email + "', '" + Password + "', '" + Usuario + "', '" + Puesto + "')";
                int resultado = comando2.ExecuteNonQuery();
                if (resultado > 0) return true;
                else return false;

                connection.Close();
            }
        }


        #endregion
        #region Citas
        public bool insertarCita(string Fecha, string IdCliente, string Cliente, string Empleado, string Asunto)
        {
            using (var connection = GetConnection())
            {
                int Id;
                Id = NumCita();
                comando2.Parameters.Clear();
                connection.Open();
                comando2.Connection = connection;


                comando2.CommandText = "insert into Citas (Id, Fecha, IdCliente, Cliente, Empleado, Asunto, Estado) values('" + Id + "', '" + Fecha + "', '" + IdCliente + "', '" + Cliente + "', '" + Empleado + "', '" + Asunto + "', 'Pendiente')";
                int resultado = comando2.ExecuteNonQuery();
                if (resultado > 0) return true;
                else return false;

                connection.Close();
            }
        }
        public int NumCita()
        {
            using (var connection = GetConnection())
            {
                connection.Open();
                comando.Connection = connection;
                comando.CommandText = "select Id from Citas where Id = (select max(Id) from Citas)";
                comando.CommandType = CommandType.Text;
                leer = comando.ExecuteReader();
                string numero;
                if (leer.HasRows == true)
                {
                    leer.Read();
                    numero = "" + leer.GetInt32(0);
                    int Numeros = int.Parse(numero);
                    Numeros++;
                    return Numeros;
                }
                else
                {
                    numero = "0";
                    int Numeros = int.Parse(numero);
                    Numeros++;
                    return Numeros;
                }

            }
        }
        public bool CambiarCita(int Id, string Estado)
        {
            using (var connection = GetConnection())
            {
                comando2.Parameters.Clear();
                connection.Open();
                comando2.Connection = connection;
                comando2.CommandText = "update Citas set Estado = @Estado Where Id = @Id";
                comando2.Parameters.Add("@Id", SqlDbType.Int);
                comando2.Parameters.Add("@Estado", SqlDbType.VarChar);
                comando2.Parameters["@Id"].Value = Id;
                comando2.Parameters["@Estado"].Value = Estado;

                int resultado = comando2.ExecuteNonQuery();
                if (resultado > 0) return true;
                else return false;
                connection.Close();
            }
        }
        public bool EliminarCita(int Id)
        {
            using (var connection = GetConnection())
            {
                connection.Open();
                comando2.Connection = connection;
                comando2.CommandText = " delete from Citas where Id = '" + Id + "'";
                int resultado = comando2.ExecuteNonQuery();
                if (resultado > 0) return true;
                else return false;
                connection.Close();
            }
        }
        public void CargarTablaCitas(DataGridView DGV, string Empleado)
        {
            using (var connection = GetConnection())
            {
                DataTable dt;
                try
                {

                    SqlDataAdapter da = new SqlDataAdapter("select * from Citas Where Empleado ='" + Empleado + "'", connection);
                    dt = new DataTable();
                    da.Fill(dt);
                    DGV.DataSource = dt;
                }
                catch (Exception ex)
                {
                    MessageBox.Show("No se pudo llenar el DatagridView" + ex);
                }

            }
        }
        public void CargarTablaCitasFecha(DataGridView DGV, string Fecha)
        {
            using (var connection = GetConnection())
            {
                DataTable dt;
                try
                {

                    SqlDataAdapter da = new SqlDataAdapter("select * from Citas Where Fecha ='" + Fecha + "'", connection);
                    dt = new DataTable();
                    da.Fill(dt);
                    DGV.DataSource = dt;
                }
                catch (Exception ex)
                {
                    MessageBox.Show("No se pudo llenar el DatagridView" + Fecha + ex);
                }

            }
        }
        public void CargarTablaCitasClientes(DataGridView DGV)
        {
            using (var connection = GetConnection())
            {
                DataTable dt;
                try
                {

                    SqlDataAdapter da = new SqlDataAdapter("select Cod, Nombre from clientes2 ", connection);
                    dt = new DataTable();
                    da.Fill(dt);
                    DGV.DataSource = dt;
                }
                catch (Exception ex)
                {
                    MessageBox.Show("No se pudo llenar el DatagridView" + ex);
                }

            }
        }
        public int DiasF(string fechaCita)
        {
            using (var connection = GetConnection())
            {
                string Fecha = DateTime.Now.ToString("yyyy-MM-dd").Split(' ')[0];
                connection.Open();
                comando.Connection = connection;
                comando.CommandText = "select datediff(dd, '" + Fecha + "','" + fechaCita + "')";
                comando.CommandType = CommandType.Text;
                leer = comando.ExecuteReader();
                string numero;
                if (leer.HasRows == true)
                {
                    leer.Read();
                    numero = "" + leer.GetInt32(0);
                    int Numeros = int.Parse(numero);

                    return Numeros;
                }
                else { return 0; }

            }
        }
        public void AlertaCita()
        {
            using (var connection = GetConnection())
            {
                connection.Open();
                string Fechahoy = DateTime.Now.ToString("yyyy-MM-dd").Split(' ')[0];
                string FechaMañana = DateTime.Now.AddDays(1).ToString("yyyy-MM-dd").Split(' ')[0];
                comando.Connection = connection;
                comando.CommandText = "select* from Citas where Fecha = '" + Fechahoy + "' and Estado = 'Pendiente' or Fecha = '" + FechaMañana + "' and Estado = 'Pendiente'";
                comando.CommandType = CommandType.Text;
                leer = comando.ExecuteReader();
                string numero;
                if (leer.HasRows == true)
                {


                    SoundPlayer sonido;
                    try
                    {
                        sonido = new SoundPlayer(Application.StartupPath + @"\son\AvisoCitaProxima.wav");
                        sonido.Play();
                    }
                    catch (Exception ex)
                    {
                        MessageBox.Show("Error " + ex);
                    }
                    MessageBox.Show("Usted tiene citas proximas, revise sus citas");
                }


            }

        }

        #endregion
        #region TiposDeDieta
        public void CargarTablaTDieta(DataGridView DGV)
        {
            using (var connection = GetConnection())
            {
                DataTable dt;
                try
                {

                    SqlDataAdapter da = new SqlDataAdapter("select ID, NombreTD, Carbohidratos, Lipidos, Proteinas from TDietas ", connection);
                    dt = new DataTable();
                    da.Fill(dt);
                    DGV.DataSource = dt;
                }
                catch (Exception ex)
                {
                    MessageBox.Show("No se pudo llenar el DatagridView" + ex);
                }

            }
        }
        public bool InsertarTDieta(string NombreTD, float Carbohidratos, float Lipidos, float Proteinas, float FCalorias, string TipoF)
        {
            using (var connection = GetConnection())
            {
                connection.Open();
                int Num = NumTDieta();
                string id = "TDieta0" + Num;
                comando2.Connection = connection;
                comando2.Parameters.Clear();
                comando2.CommandText = "insert into TDietas values(@ID,  @NombreTD, @Carbohidratos, @Lipidos, @Proteinas, @FCalorias, @Num, @TipoF)";
                comando2.Parameters.Add("@ID", SqlDbType.VarChar);
                comando2.Parameters.Add("@NombreTD", SqlDbType.VarChar);
                comando2.Parameters.Add("@Carbohidratos", SqlDbType.Float);
                comando2.Parameters.Add("@Lipidos", SqlDbType.Float);
                comando2.Parameters.Add("@Proteinas", SqlDbType.Float);
                comando2.Parameters.Add("@FCalorias", SqlDbType.Float);
                comando2.Parameters.Add("@Num", SqlDbType.Int);
                comando2.Parameters.Add("@TipoF", SqlDbType.VarChar);
                comando2.Parameters["@ID"].Value = id;
                comando2.Parameters["@NombreTD"].Value = NombreTD;
                comando2.Parameters["@Carbohidratos"].Value = Carbohidratos;
                comando2.Parameters["@Lipidos"].Value = Lipidos;
                comando2.Parameters["@Proteinas"].Value = Proteinas;
                comando2.Parameters["@Fcalorias"].Value = FCalorias;
                comando2.Parameters["@Num"].Value = Num;
                comando2.Parameters["@TipoF"].Value = TipoF;
                int resultado = comando2.ExecuteNonQuery();
                if (resultado > 0) return true;
                else return false;
                connection.Close();
            }
        }
        public bool ActualizarTDieta(string id, string NombreTD, float Carbohidratos, float Lipidos, float Proteinas, float FCalorias, string TipoF)
        {
            using (var connection = GetConnection())
            {
                connection.Open();

                comando2.Connection = connection;
                comando2.Parameters.Clear();
                comando2.CommandText = "update TDietas set NombreTD=  @NombreTD, Carbohidratos= @Carbohidratos, Lipidos= @Lipidos, Proteinas= @Proteinas, FCalorias= @FCalorias, TipoF= @TipoF where ID= @ID";
                comando2.Parameters.Add("@ID", SqlDbType.VarChar);
                comando2.Parameters.Add("@NombreTD", SqlDbType.VarChar);
                comando2.Parameters.Add("@Carbohidratos", SqlDbType.Float);
                comando2.Parameters.Add("@Lipidos", SqlDbType.Float);
                comando2.Parameters.Add("@Proteinas", SqlDbType.Float);
                comando2.Parameters.Add("@FCalorias", SqlDbType.Float);

                comando2.Parameters.Add("@TipoF", SqlDbType.VarChar);
                comando2.Parameters["@ID"].Value = id;
                comando2.Parameters["@NombreTD"].Value = NombreTD;
                comando2.Parameters["@Carbohidratos"].Value = Carbohidratos;
                comando2.Parameters["@Lipidos"].Value = Lipidos;
                comando2.Parameters["@Proteinas"].Value = Proteinas;
                comando2.Parameters["@Fcalorias"].Value = FCalorias;
                comando2.Parameters["@TipoF"].Value = TipoF;
                int resultado = comando2.ExecuteNonQuery();
                if (resultado > 0) return true;
                else return false;
                connection.Close();
            }
        }
        public int NumTDieta()
        {
            using (var connection = GetConnection())
            {
                connection.Open();
                comando.Connection = connection;
                comando.CommandText = "select Num from TDietas where Num = (select max(Num) from TDietas)";

                comando.CommandType = CommandType.Text;
                leer = comando.ExecuteReader();

                string numero;

                if (leer.HasRows == true)
                {
                    leer.Read();


                    numero = "" + leer.GetInt32(0);
                    int Numeros = int.Parse(numero);
                    Numeros++;
                    return Numeros;
                }
                else
                {
                    numero = "0";
                    int Numeros = int.Parse(numero);
                    Numeros++;
                    return Numeros;
                }

            }





        }
        public string[] CamposTDieta(string id)
        {
            using (var connection = GetConnection())
            {
                connection.Open();
                comando.Connection = connection;
                comando.CommandText = "select NombreTD, Carbohidratos ,Lipidos, Proteinas, FCalorias, TipoF from TDietas where ID = '" + id + "'";


                comando.CommandType = CommandType.Text;
                leer = comando.ExecuteReader();
                string[] data = new string[6];


                if (leer.HasRows)
                {

                    while (leer.Read())
                    {

                        data[0] = "" + leer.GetString(0);
                        data[1] = "" + leer.GetDouble(1);
                        data[2] = "" + leer.GetDouble(2);
                        data[3] = "" + leer.GetDouble(3);
                        data[4] = "" + leer.GetDouble(4);
                        data[5] = "" + leer.GetString(5);





                    }
                    return data;

                }
                else
                {
                    data[0] = "no encontrado";
                    return data;

                }

            }
        }
        public bool EliminarTDieta(string id)
        {
            using (var connection = GetConnection())
            {
                connection.Open();

                comando2.Connection = connection;

                comando2.CommandText = " delete from TDietas where ID = '" + id + "'";



                int resultado = comando2.ExecuteNonQuery();
                if (resultado > 0) return true;
                else return false;
                connection.Close();
            }
        }
        public bool registrarPTDieta(string id, string propiedad)
        {
            using (var connection = GetConnection())
            {
                connection.Open();
                int Num = NumPTDieta();

                comando2.Connection = connection;

                comando2.CommandText = "insert into PTDieta values('" + id + "', '" + propiedad + "', '" + Num + "')";

                int resultado = comando2.ExecuteNonQuery();
                if (resultado > 0) return true;
                else return false;
                connection.Close();
            }

        }
        public int NumPTDieta()
        {
            using (var connection = GetConnection())
            {
                connection.Open();
                comando.Connection = connection;
                comando.CommandText = "select Num from PTDieta where Num = (select max(Num) from PTDieta)";

                comando.CommandType = CommandType.Text;
                leer = comando.ExecuteReader();

                string numero;

                if (leer.HasRows == true)
                {
                    leer.Read();


                    numero = "" + leer.GetInt32(0);
                    int Numeros = int.Parse(numero);
                    Numeros++;
                    return Numeros;
                }
                else
                {
                    numero = "0";
                    int Numeros = int.Parse(numero);
                    Numeros++;
                    return Numeros;
                }

            }
        }
        public void CargarTablaPTDieta(DataGridView DGV, string id)
        {
            using (var connection = GetConnection())
            {
                DataTable dt;
                try
                {

                    SqlDataAdapter da = new SqlDataAdapter("select IDTDieta, Etiqueta from PTDieta where IDTDieta = '" + id + "'", connection);
                    dt = new DataTable();
                    da.Fill(dt);
                    DGV.DataSource = dt;
                }
                catch (Exception ex)
                {
                    MessageBox.Show("No se pudo llenar el DatagridView" + ex);
                }

            }
        }
        public bool eliminarPTDieta(string id, string propiedad)
        {
            using (var connection = GetConnection())
            {
                connection.Open();
                int Num = NumPTDieta();

                comando2.Connection = connection;

                comando2.CommandText = "delete from PTDieta where IDTDieta = '" + id + "' and Etiqueta = '" + propiedad + "'";

                int resultado = comando2.ExecuteNonQuery();
                if (resultado > 0) return true;
                else return false;
                connection.Close();
            }

        }
        public bool eliminarPTDietaID(string id)
        {
            using (var connection = GetConnection())
            {
                connection.Open();
                int Num = NumPTDieta();

                comando2.Connection = connection;

                comando2.CommandText = "delete from PTDieta where IDTDieta = '" + id + "'";

                int resultado = comando2.ExecuteNonQuery();
                if (resultado > 0) return true;
                else return false;
                connection.Close();
            }

        }


        #endregion
        #region Progreso
        public ArrayList obtenerPeso(string id)
        {
            ArrayList Peso = new ArrayList();
            
            using (var connection = GetConnection())
            {
                connection.Open();
                comando.Connection = connection;
                comando.CommandText = "select Peso from DatosFC where cod_cliente = '" + id + "'";
                comando.CommandType = CommandType.Text;
                leer = comando.ExecuteReader();
                if (leer.HasRows)
                {

                    while (leer.Read())
                    {
                        Peso.Add(leer.GetDouble(0));
                    } 
                }
            }
            return Peso;
        }
        public ArrayList obtenerFechas(string id)
        {
            ArrayList Fecha = new ArrayList();

            using (var connection = GetConnection())
            {
                connection.Open();
                comando.Connection = connection;
                comando.CommandText = "select Fecha from DatosFC where cod_cliente = '" + id + "'";
                comando.CommandType = CommandType.Text;
                leer = comando.ExecuteReader();
                if (leer.HasRows)
                {

                    while (leer.Read())
                    {
                        Fecha.Add(leer.GetDateTime(0).ToString("dd/MM/yyyy").Split(' ')[0]);
                    }
                }
            }
            return Fecha;
        }

        #endregion
        #region GenerarDieta
        


        #endregion
    }
}
