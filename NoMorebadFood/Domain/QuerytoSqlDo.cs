using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using DataAccess;
using System.Windows.Forms;
using System.Collections;

namespace Domain
{
    public class QuerytoSqlDo
    {

        QuerytoSqlDA Querys = new QuerytoSqlDA();

        public void insertarDatosCliente(string nombre, string ApellidoP, string ApellidoM, string Contacto, string sexo) {
            Querys.insertarDatosPCliente(nombre, ApellidoP, ApellidoM, Contacto, sexo);

        }
        public string obtenerCodCliente(string Nombre, string apellido, string contacto) {
            string cod=Querys.mostrarCodCliente(Nombre, apellido, contacto);
            return cod;
        }
        public void registrarDFC(string peso, string Altura, string Edad, string Embarazo, string Alergia, string ActividadF, string codCliente, string Fecha, string EFisico) {
            Querys.RegistrarDatosFC(peso,Altura,Edad,Embarazo,Alergia,ActividadF,codCliente,Fecha,EFisico);


        }
        public void registrarGustos(string codCliente, string Pollo, string Cerdo, string Tocino, string Pescado, string Res, string Aguacate, string Brocoli, string Esparragos, string Coliflor, string Calabazin, string Champiñon, string Huevo, string Mantequilla, string Nueces, string Queso, string Pastas) {
            Querys.registrarGustos(codCliente, Pollo,Cerdo,Tocino,Pescado,Res,Aguacate, Brocoli, Esparragos, Coliflor, Calabazin, Champiñon, Huevo, Mantequilla, Nueces, Queso, Pastas);
        }
        public string[] MostrardatosC(string codCliente) {

            string[] data = new string[7];
            data = Querys.MostrardatosC(codCliente);
            return data;
        }
        public string[] MostrarDatosFC(string codCliente) {
            string[] data = new string[10];
            data=Querys.MostrarDatosFC(codCliente);
            return data;
        }
        public bool ValidarCliente(string id)
        {
            bool var;
            var = Querys.ValidarCliente(id);
            return var;
        }
        public bool InsertarAlimento(string Nombre, float Carbohidratos, float Proteinas, float Grasas, float Calorias)
        {
           bool r = Querys.InsertarAlimento(Nombre, Carbohidratos, Proteinas, Grasas, Calorias);
            return r;
        }
        public bool ActualizarAlimento(string id,string Nombre, float Carbohidratos, float Proteinas, float Grasas, float Calorias) {
            bool r = Querys.ActualizarAlimento(id, Nombre, Carbohidratos, Proteinas, Grasas, Calorias);
            return r;
        }
        public bool EliminarAlimento(string id) {
            bool r = Querys.EliminarAlimento(id);
            return r;
        }
        
        public void CargarTabla( DataGridView DGV)
        {
            Querys.CargarTabla(DGV);
        }
        public string[] CamposAlimento(string id) {
            string[] data = new string[5];
            data=Querys.CamposAlimento(id);
            return data;
        }
        public bool registrarPropiedad(string id, string propiedad) {
            bool var;
            var = Querys.registrarPropiedad(id,propiedad);
            return var;
        }
        public void verPropiedades(string id, DataGridView DGV) { 
            Querys.verPropiedades(id, DGV);
        }
        public bool EliminarCaracteristica(string id, string Caracteristica) {
            bool var;
            var = Querys.EliminarCaracteristica(id, Caracteristica);
            return var;
        }
        public void CargarTablaClientes(DataGridView DGV) {
            Querys.CargarTablaClientes(DGV);
        }
        public bool EliminarClienteYDatos(string id)
        {
            bool var;
            var = Querys.EliminarClienteYDatos(id);
            return var;
        }
        public bool ActualizarCliente(string id, string Nombre, string ApellidoP, string ApellidoM, string Contacto) {
            bool var;
            var = Querys.ActualizarCliente(id, Nombre, ApellidoP, ApellidoM, Contacto);
            return var;

        }
        public void CargarTablaUsuarios(DataGridView DGV)
        {

            Querys.CargarTablaUsuarios(DGV);
        }
        public bool EliminarUsuario(string Usuario) {
            bool var = Querys.EliminarUsuario(Usuario);
            return var;
        }
        public bool ActualizarUsuario(string Nombre, string Email, string Password, string Usuario, string Puesto)
        {
            bool var = Querys.ActualizarUsuario(Nombre, Email, Password, Usuario,Puesto);
            return var;

        }
        public bool insertarUsuario(string Nombre, string Email, string Password, string Usuario, string Puesto)
        {

            bool var = Querys.insertarUsuario(Nombre, Email, Password, Usuario, Puesto);
            return var;
        }
        public bool insertarCita(string Fecha, string IdCliente, string Cliente, string Empleado, string Asunto) {
            bool var = Querys.insertarCita(Fecha, IdCliente, Cliente, Empleado, Asunto);
            return var;
        }
        public bool CitaHecha(int Id, string Estado)
        {
            bool var = Querys.CambiarCita(Id,Estado);
            return var;
        }
        public bool EliminarCita(int Id) {
            bool var = Querys.EliminarCita(Id);
            return var;
        }
        public void CargarTablaCitas(DataGridView DGV, string Empleado) {
            Querys.CargarTablaCitas(DGV, Empleado);
        }
        public void CargarTablaCitasClientes(DataGridView DGV)
        {
            Querys.CargarTablaCitasClientes(DGV);
        }
        public void CargarTablaCitasFecha(DataGridView DGV, string Fecha)
        {
            Querys.CargarTablaCitasFecha(DGV, Fecha);
        }
        public int DiasF(string fechaCita) {
            int var = Querys.DiasF(fechaCita);
            return var;
        }
        public void AlertaCita() {
            Querys.AlertaCita();
                }
        public void CargarTablaTDieta(DataGridView DGV) {
            Querys.CargarTablaTDieta(DGV);
        }
        public bool InsertarTDieta(string NombreTD, float Carbohidratos, float Lipidos, float Proteinas, float FCalorias, string TipoF) {
            bool var = Querys.InsertarTDieta(NombreTD, Carbohidratos, Lipidos, Proteinas, FCalorias, TipoF);
            return var;
        }
        public bool ActualizarTDieta(string id, string NombreTD, float Carbohidratos, float Lipidos, float Proteinas, float FCalorias, string TipoF) {
            bool var = Querys.ActualizarTDieta(id, NombreTD, Carbohidratos, Lipidos, Proteinas, FCalorias, TipoF);
            return var;
        }
        public string[] CamposTDieta(string id) {
            string[] data = new string[6];
            data = Querys.CamposTDieta(id);
            return data;
        }
        public bool EliminarTDieta(string id) {
            bool var;
            var = Querys.EliminarTDieta(id);
            return var;
        }
        public bool registrarPTDieta(string id, string propiedad) {
            bool var = Querys.registrarPTDieta(id, propiedad);
            return var;
        }
        public void CargarTablaPTDieta(DataGridView DGV, string id) {
            Querys.CargarTablaPTDieta(DGV, id);
        }
        public bool eliminarPTDieta(string id, string propiedad) {
            bool var = Querys.eliminarPTDieta(id, propiedad);
            return var;
        }
        public bool eliminarPTDietaID(string id) {
            bool var = Querys.eliminarPTDietaID(id);
            return var;
        }
        public void MostrarTDDietas(ComboBox cbTDietas) {
            Querys.MostrarTDDietas(cbTDietas);
        }
        public string[] ObtenerMacNutrientesPorcentaje(string nombre) {
            string[] data = new string[3];
            data = Querys.ObtenerMacNutrientesPorcentaje(nombre);
            return data;
        }
        public ArrayList obtenerPeso(string id) {
            ArrayList peso = new ArrayList();
            peso = Querys.obtenerPeso(id);
            return peso;
        }
        public ArrayList obtenerFechas(string id) {
            ArrayList Fecha = new ArrayList();
            Fecha = Querys.obtenerFechas(id);
            return Fecha;
        }


    }
}
