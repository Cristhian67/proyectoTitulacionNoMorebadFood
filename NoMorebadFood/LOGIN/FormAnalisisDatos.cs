using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using System.Windows.Forms.DataVisualization.Charting;

using System.Data.SqlClient;
using Domain;

namespace LOGIN
{
    public partial class FormAnalisisDatos : Form
    {
        public FormAnalisisDatos()
        {
            InitializeComponent();
        }
        public static string Calorias { get; set; }
        public static string CodCliente { get; set; }
        public static string TipoDieta { get; set; }
        #region funciones
        private void LoadMacronutrientes(String[] Macro, int[] porcentajes) {
            ChartmacronutrientesPorc.Series[0].Points.DataBindXY(Macro, porcentajes);
            ChartmacronutrientesPorc.Visible = true;

        }
        QuerytoSqlDo QueryDo = new QuerytoSqlDo();
        


        private void mostrarcodigo()
        {
            string cod = QueryDo.obtenerCodCliente(txtBNombre.Text, txtBApellidoP.Text, txtContacto.Text);
            lblcodpaciente.Text = cod;

        }
        string[] pruebMac;

        int[] pporcentajes;
        private void GuardarFisicoCliente() {
            string peso, Altura, Edad, Embarazo, Alergia, ActividadF, codCliente, Fecha, EFisico;
            peso = txtBPeso.Text;
            Altura = txtBAltura.Text;
            Edad = txtBEdad.Text;
            if (radioBtnmasculino.Checked == true)
            {
                Embarazo = "No";
            }
            else {
                Embarazo = comboBoxEmbarazo.SelectedItem.ToString();

            }
            Alergia = comboBoxAlergia.SelectedItem.ToString();
            ActividadF = comboBoxActFisica.SelectedItem.ToString();
            codCliente = lblcodpaciente.Text;
            Fecha = DateTime.Now.ToString("yyyy-MM-dd").Split(' ')[0];
            EFisico = CalcularEstadoF(Edad, peso, Altura);
            txtEstadoFisico.Text = ""+ EFisico;


            QueryDo.registrarDFC(peso, Altura, Edad, Embarazo, Alergia, ActividadF, codCliente, Fecha, EFisico);
            string dieta=CalcTipoDieta(EFisico);
            txtDietaR.Text = "" + dieta;
        }
        private string CalcularEstadoF(string edad, string peso, string altura) {
            float Pso = float.Parse(peso);
            int i = int.Parse(edad);
            float A = float.Parse(altura);
            float IMC;
            string EstadoF;
            IMC = Pso / (A*A);

            txtIMC.Text = " "+ IMC;

            float[,] pesoH = new float[4,10];
            pesoH[0, 0] = float.Parse("13.7");
            pesoH[1, 0] = float.Parse("16.4");
            pesoH[2, 0] = float.Parse("18.5");
            pesoH[3, 0] = float.Parse("21.4");
            pesoH[0, 1] = float.Parse("14.1");
            pesoH[1, 1] = float.Parse("16.4");
            pesoH[2, 1] = float.Parse("19.2");
            pesoH[3, 1] = float.Parse("22.5");
            pesoH[0, 2] = float.Parse("14.5");
            pesoH[1, 2] = float.Parse("17.5");
            pesoH[2, 2] = float.Parse("19.9");
            pesoH[3, 2] = float.Parse("23.6");
            pesoH[0, 3] = float.Parse("14.9");
            pesoH[1, 3] = float.Parse("18.2");
            pesoH[2, 3] = float.Parse("20.8");
            pesoH[3, 3] = float.Parse("24.8");
            pesoH[0, 4] = float.Parse("15.5");
            pesoH[1, 4] = float.Parse("19");
            pesoH[2, 4] = float.Parse("21.8");
            pesoH[3, 4] = float.Parse("25.9");
            pesoH[0, 5] = float.Parse("16");
            pesoH[1, 5] = float.Parse("19.8");
            pesoH[2, 5] = float.Parse("22.7");
            pesoH[3, 5] = float.Parse("27");
            pesoH[0, 6] = float.Parse("16.5");
            pesoH[1, 6] = float.Parse("20.5");
            pesoH[2, 6] = float.Parse("23.5");
            pesoH[3, 6] = float.Parse("27.9");
            pesoH[0, 7] = float.Parse("16.9");
            pesoH[1, 7] = float.Parse("21.1");
            pesoH[2, 7] = float.Parse("24.3");
            pesoH[3, 7] = float.Parse("28.6");
            pesoH[0, 8] = float.Parse("17.3");
            pesoH[1, 8] = float.Parse("21.7");
            pesoH[2, 8] = float.Parse("24.9");
            pesoH[3, 8] = float.Parse("29.2");
            pesoH[0, 9] = float.Parse("17.6");
            pesoH[1, 9] = float.Parse("22.2");
            pesoH[2, 9] = float.Parse("25.4");
            pesoH[3, 9] = float.Parse("29.7");


            float[,] pesoM = new float[4, 10];
            pesoM[0, 0] = float.Parse("13.7");
            pesoM[1, 0] = float.Parse("16.4");
            pesoM[2, 0] = float.Parse("18.5");
            pesoM[3, 0] = float.Parse("21.4");
            pesoM[0, 1] = float.Parse("14.1");
            pesoM[1, 1] = float.Parse("16.4");
            pesoM[2, 1] = float.Parse("19.2");
            pesoM[3, 1] = float.Parse("22.5");
            pesoM[0, 2] = float.Parse("14.5");
            pesoM[1, 2] = float.Parse("17.5");
            pesoM[2, 2] = float.Parse("19.9");
            pesoM[3, 2] = float.Parse("23.6");
            pesoM[0, 3] = float.Parse("14.9");
            pesoM[1, 3] = float.Parse("18.2");
            pesoM[2, 3] = float.Parse("20.8");
            pesoM[3, 3] = float.Parse("24.8");
            pesoM[0, 4] = float.Parse("15.5");
            pesoM[1, 4] = float.Parse("19");
            pesoM[2, 4] = float.Parse("21.8");
            pesoM[3, 4] = float.Parse("25.9");
            pesoM[0, 5] = float.Parse("16");
            pesoM[1, 5] = float.Parse("19.8");
            pesoM[2, 5] = float.Parse("22.7");
            pesoM[3, 5] = float.Parse("27");
            pesoM[0, 6] = float.Parse("16.5");
            pesoM[1, 6] = float.Parse("20.5");
            pesoM[2, 6] = float.Parse("23.5");
            pesoM[3, 6] = float.Parse("27.9");
            pesoM[0, 7] = float.Parse("16.9");
            pesoM[1, 7] = float.Parse("21.1");
            pesoM[2, 7] = float.Parse("24.3");
            pesoM[3, 7] = float.Parse("28.6");
            pesoM[0, 8] = float.Parse("17.3");
            pesoM[1, 8] = float.Parse("21.7");
            pesoM[2, 8] = float.Parse("24.9");
            pesoM[3, 8] = float.Parse("29.2");
            pesoM[0, 9] = float.Parse("17.6");
            pesoM[1, 9] = float.Parse("22.2");
            pesoM[2, 9] = float.Parse("25.4");
            pesoM[3, 9] = float.Parse("29.7");
            if (i > 19) {
                i = 19;

            }

            if (radioBtnmasculino.Checked == true)
            {
                if (IMC < pesoH[0, i - 10])
                {
                    EstadoF = "Bajo de peso";
                    

                }
                else
                {
                    if (IMC > pesoH[2, i - 10])
                    {
                        if (IMC > pesoH[3, i - 10])
                        {

                            EstadoF = "Obesidad";
                        }
                        else
                        {
                            EstadoF = "Sobrepeso";

                        }
                    }
                    else
                    {
                        EstadoF = "Normal/Saludable";
                    }


                }
                return EstadoF;

            }
            else {
                if (IMC < pesoM[0, i - 10])
                {
                    EstadoF = "Bajo de peso";

                }
                else
                {
                    if (IMC > pesoM[2, i - 10])
                    {
                        if (IMC > pesoM[3, i - 10])
                        {

                            EstadoF = "Obesidad";
                        }
                        else
                        {
                            EstadoF = "Sobrepeso";

                        }
                    }
                    else
                    {
                        EstadoF = "Normal/Saludable";
                    }


                }
                
                
                return EstadoF;



            }

            




        }

        private string CalcTipoDieta(string estadoF) {
            string Diet;

            if (estadoF == "Obesidad" || estadoF == "Sobrepeso")
            {
                Diet = "Hipocalorica";

            }

            else {
                if (estadoF == "Bajo de peso")
                {

                    Diet = "Hipercalorica";
                }
                else {
                    Diet = "Estandar";
                }

                     
            }
            return Diet;


        }

        
        private void GuardarGustos() {
            string Pollo, Cerdo, Tocino, Pescado, Res, Aguacate, Brocoli, Esparragos, Coliflor, Calabazin, Champiñon, Huevo, Mantequilla, Nueces, Queso, Pastas, codCliente;

            if (checkBoxAguacate.Checked == true)
            {
                Aguacate = "Si";

            }
            else {
                Aguacate = "No";
            }
            if (checkBoxBrocoli.Checked == true)
            {
                Brocoli = "Si";

            }
            else {
                Brocoli = "No";
            }
            if (checkBoxCalabazin.Checked == true)
            {
                Calabazin = "Si";
            }
            else {
                Calabazin = "No";
            }
            if (checkBoxCerdo.Checked == true)
            {
                Cerdo = "Si";
            }
            else {
                Cerdo = "No";
            }
            if (checkBoxChampíñon.Checked == true)
            {
                Champiñon = "Si";
            }
            else {
                Champiñon = "No";
            }
            if (checkBoxColiflor.Checked == true)
            {
                Coliflor = "Si";
            }
            else {
                Coliflor = "No";
            }
            if (checkBoxEsparragos.Checked == true)
            {
                Esparragos = "Si";
            }
            else {
                Esparragos = "No";
            }
            if (checkBoxHuevo.Checked == true)
            {

                Huevo = "Si";
            }
            else {

            }
            if (checkBoxMantequilla.Checked == true)
            {
                Mantequilla = "Si";
            }
            else {
                Mantequilla = "No";
            }
            if (checkBoxNueces.Checked == true)
            {
                Nueces = "Si";
            }
            else {
                Nueces = "No";
            }
            if (checkBoxPasta.Checked == true)
            {
                Pastas = "Si";
            }
            else {
                Pastas = "No";
            }
            if (checkBoxPescado.Checked == true)
            {
                Pescado = "Si";
            }
            else {
                Pescado = "No";
            }
            if (checkBoxPollo.Checked == true)
            {
                Pollo = "Si";
            }
            else {
                Pollo = "No";
            }
            if (checkBoxQueso.Checked == true)
            {
                Queso = "Si";
            }
            else {
                Queso = "No";
            }
            if (checkBoxRes.Checked == true)
            {
                Res = "Si";
            }
            else {
                Res = "No";
            }
            if (checkBoxTocino.Checked == true)
            {
                Tocino = "Si";
            }
            else {
                Tocino = "No";
            }
            if (checkBoxHuevo.Checked == true)
            {

                Huevo = "Si";
            }
            else {
                Huevo = "No";
            }
            codCliente = lblcodpaciente.Text;


            QueryDo.registrarGustos(codCliente, Pollo, Cerdo, Tocino, Pescado, Res, Aguacate, Brocoli, Esparragos, Coliflor, Calabazin, Champiñon, Huevo, Mantequilla, Nueces, Queso, Pastas);
        }

        private float CalcCalorias() {
            float[,] calorias = new float[2, 20];
            calorias[0, 0] = 1200;
            calorias[1, 0] = 1140;
            calorias[0, 1] = 1420;
            calorias[1, 1] = 1310;
            calorias[0, 2] = 1560;
            calorias[1, 2] = 1440;
            calorias[0, 3] = 1690;
            calorias[1, 3] = 1540;
            calorias[0, 4] = 1810;
            calorias[1, 4] = 1630;
            calorias[0, 5] = 1900;
            calorias[1, 5] = 1700;
            calorias[0, 6] = 1990;
            calorias[1, 6] = 1770;
            calorias[0, 7] = 2070;
            calorias[1, 7] = 1830;
            calorias[0, 8] = 2150;
            calorias[1, 8] = 1880;
            calorias[0, 9] = 2140;
            calorias[1, 9] = 1970;
            calorias[0, 10] = 2240;
            calorias[1, 10] = 1980;
            calorias[0, 11] = 2370;
            
            calorias[1, 11] = 2050;
            calorias[0, 12] = 2440;
            calorias[1, 12] = 2050;
            calorias[0, 13] = 2590;
            calorias[1, 13] = 2160;
            calorias[0, 14] = 2700;
            calorias[1, 14] = 2140;
            calorias[0, 15] = 2800;
            calorias[1, 15] = 2130;
            calorias[0, 16] = 2870;
            calorias[1, 16] = 2140;
            calorias[0, 17] = 2400;
            calorias[1, 17] = 2000;
            calorias[0, 18] = 2220;
            calorias[1, 18] = 1800;
            calorias[0, 19] = 2000;
            calorias[1, 19] = 1600;
            int sexo;
            if (radioBtnFemenino.Checked == true)
            {
                sexo = 1;

            }
            else {

                sexo = 0;
            }
            int rango=18;
            float CaloriasB;
            int edad =  int.Parse(txtBEdad.Text);
            switch (edad) {
                case 1:
                    rango = 0;
                    break;
                case 2:
                    rango = 1;
                    break;
                case 3:
                    rango = 2;
                    break;
                case 4:
                    rango = 3;
                    break;
                case 5:
                    rango = 4;
                    break;
                case 6:
                    rango = 5;
                    break;
                case 7:
                    rango = 6;
                    break;
                case 8:
                    rango = 7;
                    break;
                case 9:
                    rango = 8;
                    break;
                case 10:
                    rango = 9;
                    break;
                case 11:
                    rango = 10;
                    break;
                case 12:
                    rango = 11;
                    break;
                case 13:
                    rango = 12;
                    break;
                case 14:
                    rango = 13;
                    break;
                case 15:
                    rango = 14;
                    break;
                case 16:
                    rango = 15;
                    break;
                case 17:
                    rango = 16;
                    break;
                case 18:
                    rango = 16;
                    break;


            }
            if (edad < 18) {
                if (edad > 18 && edad < 31)
                {

                    rango = 17;
                }
                else {
                    if (edad > 30 && edad < 51)
                    {
                        rango = 18;
                    }
                    else {
                        
                            rango = 19;
                        
                    }
                }

            }
            
            CaloriasB = calorias[sexo, rango];
            if (txtEstadoFisico.Text== "Obesidad"|| txtEstadoFisico.Text == "Sobrepeso")
            {
                CaloriasB = CaloriasB - 500;
            }
            if (txtEstadoFisico.Text == "Bajo de peso")
            {
                CaloriasB = CaloriasB + 500;
            }
            txtCaloriasR.Text = ""+CaloriasB;
            Calorias = "" + CaloriasB;
            return CaloriasB;


        }

        private void MostrarData() {
            string[] data = new string[7];
           data= QueryDo.MostrardatosC(txtBCodCliente.Text);
            txtBNombre.Text= data[0];
            txtBApellidoP.Text = data[1];
            txtBApellidoM.Text = data[2];
            txtContacto.Text = data[3];
            lblcodpaciente.Text = data[5];
            
            string sexo = data[4];
            if (sexo == "F         ") {
                radioBtnFemenino.Checked= true;
                
                
            }
            else
            {
                
                radioBtnmasculino.Checked = true;
                
            }

        }
        private void MostrarDatosFC() {
            string[] data = new string[10];
            data=QueryDo.MostrarDatosFC(txtBCodCliente.Text);
            txtBPeso.Text = data[0];
            txtBAltura.Text = data[1];
            txtBEdad.Text = data[2];
            comboBoxEmbarazo.SelectedItem = data[3];
            comboBoxAlergia.SelectedItem = data[4];
            comboBoxActFisica.SelectedItem = data[5];
            txtEstadoFisico.Text = data[8];
        }
        private void VaciarCampos() {
            txtBAltura.Text = "";
            txtBApellidoM.Text = "";
            txtBApellidoP.Text = "";
            txtBCodCliente.Text = "";
            txtBEdad.Text = "";
            txtBNombre.Text = "";
            txtBPeso.Text = "";
            txtCaloriasR.Text = "";
            txtDietaR.Text = "";
            txtEstadoFisico.Text = "";
            txtIMC.Text = "";
            lblcodpaciente.Text = "";
            lblError.Text = "";
            txtContacto.Text = "";
            radioBtnFemenino.Checked = false;
            radioBtnmasculino.Checked = true;
            radioBtnmasculino.Checked = false;

        }

        private bool ValidarCliente() {
            bool var;
            var=QueryDo.ValidarCliente(txtBCodCliente.Text);
            return var;

        }
        private void definirMacNutrientes() {
            string nombre = cbTDietas.SelectedItem.ToString();
            string[] data = new string[3];
            data = QueryDo.ObtenerMacNutrientesPorcentaje(nombre);
            pporcentajes = new int[3];

            pporcentajes[0] = Int32.Parse( data[0]);
            pporcentajes[1] = Int32.Parse(data[1]);
            pporcentajes[2] = Int32.Parse(data[2]);
            pruebMac = new string[3];
            pruebMac[0] = "Carbohidratos";
            pruebMac[1] = "Lipidos";
            pruebMac[2] = "Proteinas";
            LoadMacronutrientes(pruebMac, pporcentajes);
        }
        public string[] datosADD() {
            string[] data = new string[3];
            data[0] = Calorias;
            data[1] = CodCliente;
            data[2] = TipoDieta;
            return data;
        }

        #endregion
        #region elementosForm
       
        private void radioButton6_CheckedChanged(object sender, EventArgs e)
        {
            comboBoxEmbarazo.Visible = true;
            LabelEmbarazo.Visible = true;
        }

        private void radioBtnmasculino_CheckedChanged(object sender, EventArgs e)
        {
            comboBoxEmbarazo.Visible = false;
            LabelEmbarazo.Visible = false;
        }

        

        private void btnCalcular_Click(object sender, EventArgs e)
        {
            CodCliente = txtBCodCliente.Text;
            TipoDieta = cbTDietas.SelectedItem.ToString();
            if (rbtnGuardar.Checked == true)
            {

                bool var;
                var = ValidarCliente();
                if (var == true)
                {
                    mostrarcodigo();
                    GuardarFisicoCliente();
                    GuardarGustos();
                    CalcCalorias();

                }
                else
                {
                    lblError.Text = "El cliente ingresado no existe";
                    lblError.Visible = true;
                }
            }
            else { CalcCalorias();
                txtEstadoFisico.Text= CalcularEstadoF(txtBEdad.Text,txtBPeso.Text,txtBAltura.Text);
                txtDietaR.Text = CalcTipoDieta(txtEstadoFisico.Text);
            }
                
            
        }
        #endregion

        private void btnSearch_Click(object sender, EventArgs e)
        {
            MostrarData();
            MostrarDatosFC();
        }
        

        private void btnVaciar_Click(object sender, EventArgs e)
        {
            VaciarCampos();
        }
        private void FormAnalisisDatos_Load(object sender, EventArgs e)
        {
            pporcentajes = new int[3];
            pporcentajes[0] = 50;
            pporcentajes[1] = 30;
            pporcentajes[2] = 20;
            pruebMac = new string[3];
            pruebMac[0] = "Carbohidratos";
            pruebMac[1] = "Lipidos";
            pruebMac[2] = "Proteinas";
            LoadMacronutrientes(pruebMac, pporcentajes);
            llenarcbTDietas();
            cbTDietas.SelectedIndex = 0;
        }
        private void llenarcbTDietas() {
            QueryDo.MostrarTDDietas(cbTDietas);
            cbTDietas.SelectedIndex = 0;
        }

        private void rbtnGuardar_CheckedChanged(object sender, EventArgs e)
        {
            if (rbtnGuardar.Checked == false)
            {
                
                radioBtnmasculino.Enabled = true;
                radioBtnFemenino.Enabled = true;
                radioBtnFemenino.AutoCheck = true;
                radioBtnmasculino.AutoCheck = true;
            }
            else
            {

                radioBtnFemenino.AutoCheck = false;
                radioBtnmasculino.AutoCheck = false;

            }
        }

        private void cbTDietas_SelectedIndexChanged(object sender, EventArgs e)
        {
            definirMacNutrientes();
        }

        private void btnGenerarD_Click(object sender, EventArgs e)
        {
            
        }
    }
}
