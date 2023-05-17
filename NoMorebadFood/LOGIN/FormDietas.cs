using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using Domain;

namespace LOGIN
{
    public partial class FormDietas : Form
    {
        public FormDietas()
        {
            InitializeComponent();
        }
        QuerytoSqlDo Querys = new QuerytoSqlDo();
        FormAnalisisDatos FA = new FormAnalisisDatos();

        private void ChartmacronutrientesPorc_Click(object sender, EventArgs e)
        {

        }

        private void label1_Click(object sender, EventArgs e)
        {

        }

        private void btnSearch_Click(object sender, EventArgs e)
        {
            string[] data = new string[3];
            data=FA.datosADD();
            txtCaloriasFA.Text = data[0];
            txtNombre.Text = data[1];
            definirMacNutrientes(data[2]);



        }
        private void definirMacNutrientes(string n)
        {
            int[] pporcentajes;
            string[] pruebMac;
            string nombre = n;
            string[] data = new string[3];
            data = Querys.ObtenerMacNutrientesPorcentaje(nombre);
            pporcentajes = new int[3];

            pporcentajes[0] = Int32.Parse(data[0]);
            pporcentajes[1] = Int32.Parse(data[1]);
            pporcentajes[2] = Int32.Parse(data[2]);
            
            pruebMac = new string[3];
            pruebMac[0] = "Carbohidratos";
            pruebMac[1] = "Lipidos";
            pruebMac[2] = "Proteinas";
            LoadMacronutrientes(pruebMac, pporcentajes);
        }
        private void LoadMacronutrientes(String[] Macro, int[] porcentajes)
        {
            ChartmacronutrientesPorc.Series[0].Points.DataBindXY(Macro, porcentajes);
            ChartmacronutrientesPorc.Visible = true;

        }

        private void label7_Click(object sender, EventArgs e)
        {

        }

        private void txtCal_Click(object sender, EventArgs e)
        {

        }

        private void label4_Click(object sender, EventArgs e)
        {

        }

        private void txtCaloriasFA_Click(object sender, EventArgs e)
        {

        }

        private void btnActualizarAlimento_Click(object sender, EventArgs e)
        {

        }
    }
}
