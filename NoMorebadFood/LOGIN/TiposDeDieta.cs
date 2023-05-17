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
    public partial class TiposDeDieta : Form
    {
        QuerytoSqlDo Querys = new QuerytoSqlDo();
        bool permitir = true;
        public TiposDeDieta()
        {
            InitializeComponent();
        }

        private void btnCambiarPolaridad_Click(object sender, EventArgs e)
        {
            if (permitir == false)
            {
                permitir = true;
                btnCambiarPolaridad.BackColor = Color.MediumAquamarine;
                btnCambiarPolaridad.Text = "Solo permitir";
            }
            else if (permitir == true)
            {
                permitir = false;
                btnCambiarPolaridad.BackColor = Color.DeepPink;
                btnCambiarPolaridad.Text = "No permitir";
            }

        }

        private void button3_Click(object sender, EventArgs e)
        {
            if (permitir == false)
            {
                permitir = true;
                button3.BackColor = Color.MediumAquamarine;
                button3.Text = "Compensar";
            }
            else if (permitir == true)
            {
                permitir = false;
                button3.BackColor = Color.DeepPink;
                button3.Text = "Descompensar";

            }
        }

        private void TiposDeDieta_Load(object sender, EventArgs e)
        {
            Querys.CargarTablaTDieta(TablaTDietas);
        }

        private void btnRegTDieta_Click(object sender, EventArgs e)
        {
            string NombreTD;
            float Carbohidratos;
            float Lipidos;
            float Proteinas;
            float FCalorias;
            string TipoF= "P";
            NombreTD = txtNombre.Text;
            Carbohidratos = float.Parse(txtCarbohidratos.Text);
            Lipidos = float.Parse(txtLipidos.Text);
            Proteinas = float.Parse(txtProteinas.Text);
            FCalorias = float.Parse(txtFCalorias.Text);
            string op = btnCambiarPolaridad.Text;
            if (op == "Solo permitir")
            {
                TipoF = "SP";
            }
            else if (op == "No permitir") {
                TipoF = "NP";

            }
            if (txtTotalMacroN.Text == "100")
            {

                Querys.InsertarTDieta(NombreTD, Carbohidratos, Lipidos, Proteinas, FCalorias, TipoF);
                Querys.CargarTablaTDieta(TablaTDietas);
                
            }
            else {
                MessageBox.Show("El total de los macronutrientes no cubre el 100%");

            }
            vaciarElementos();
        }
        private void vaciarElementos() {
            txtCarbohidratos.Text = "";
            txtFCalorias.Text = "";
            txtLipidos.Text = "";
            txtNombre.Text = "";
            txtProteinas.Text = "";
            txtTotalMacroN.Text = "000";
        }

        private void label9_Click(object sender, EventArgs e)
        {

        }

        private void txtCarbohidratos_TextChanged(object sender, EventArgs e)
        {
            calcularTotal(); }

        private void txtLipidos_TextChanged(object sender, EventArgs e)
        {
            calcularTotal();
        }

        private void txtProteinas_TextChanged(object sender, EventArgs e)
        {
            calcularTotal();
        }
        private void calcularTotal() {

            float CH = 0;
            float LP = 0;
            float PT = 0;
            float total;
            if (txtCarbohidratos.Text != "")
            {
                CH = float.Parse(txtCarbohidratos.Text);
            }
            if (txtLipidos.Text != "")
            {
                LP = float.Parse(txtLipidos.Text);
            }

            if (txtProteinas.Text != "")
            {
                PT = float.Parse(txtProteinas.Text);
            }
            total = CH + LP + PT;
            txtTotalMacroN.Text=("" + total);
            if (total != 100)
            {
                txtTotalMacroN.ForeColor = Color.DeepPink;
            }
            else txtTotalMacroN.ForeColor = Color.White;
        }

        private void TablaTDietas_CellClick(object sender, DataGridViewCellEventArgs e)
        {
            string cod;
            try
            {
                cod = this.TablaTDietas.CurrentRow.Cells[0].Value.ToString();
                
                string[] data = new string[6];
                data = Querys.CamposTDieta(cod);
                txtNombre.Text = data[0];
                txtCarbohidratos.Text = data[1];
                txtLipidos.Text = data[2];
                txtProteinas.Text = data[3];
                txtFCalorias.Text = data[4];
                string TipoF = data[5];
                if (TipoF == "SP")
                {
                    permitir = true;
                    btnCambiarPolaridad.BackColor = Color.MediumAquamarine;
                    btnCambiarPolaridad.Text = "Solo permitir";

                }
                else if (TipoF == "NP")
                {
                    permitir = false;
                    btnCambiarPolaridad.BackColor = Color.DeepPink;
                    btnCambiarPolaridad.Text = "No permitir";
                }
                Querys.CargarTablaPTDieta(TablaPTDieta, cod);

            }
            catch (Exception ex)
            {

            }
        }

        private void btnActualizarTDieta_Click(object sender, EventArgs e)
        {
            string id = this.TablaTDietas.CurrentRow.Cells[0].Value.ToString();
            string NombreTD = txtNombre.Text;
            float Carbohidratos = float.Parse(txtCarbohidratos.Text);
            float Lipidos = float.Parse(txtLipidos.Text);
            float Proteinas = float.Parse(txtProteinas.Text);
            float FCalorias = float.Parse(txtFCalorias.Text);
            string TipoF="P";
            string op = btnCambiarPolaridad.Text;
            if (op == "Solo permitir")
            {
                TipoF = "SP";
            }
            else if (op == "No permitir")
            {
                TipoF = "NP";

            }

            Querys.ActualizarTDieta(id, NombreTD, Carbohidratos, Lipidos, Proteinas, FCalorias, TipoF);
            Querys.CargarTablaTDieta(TablaTDietas);
        }

        private void button1_Click(object sender, EventArgs e)
        {
            string id = this.TablaTDietas.CurrentRow.Cells[0].Value.ToString();
            string propiedad = cbFiltro.SelectedItem.ToString();
            
            Querys.registrarPTDieta(id, propiedad);
            Querys.CargarTablaPTDieta(TablaPTDieta, id);



        }

        private void btnBorrarTDieta_Click(object sender, EventArgs e)
        {
            string id = this.TablaTDietas.CurrentRow.Cells[0].Value.ToString();
            Querys.EliminarTDieta(id);
            Querys.eliminarPTDietaID(id);
            Querys.CargarTablaTDieta(TablaTDietas);
        }

        private void button2_Click(object sender, EventArgs e)
        {

            string id = this.TablaPTDieta.CurrentRow.Cells[0].Value.ToString();
            string propiedad = this.TablaPTDieta.CurrentRow.Cells[1].Value.ToString();
            bool var=Querys.eliminarPTDieta(id, propiedad);
            if (var == true)
            {
                MessageBox.Show("Propiedad eliminada correctamente ."+id+"."+propiedad+".");
            }
            vaciarElementos();
            Querys.CargarTablaPTDieta(TablaPTDieta, id);
        }
    }
}
