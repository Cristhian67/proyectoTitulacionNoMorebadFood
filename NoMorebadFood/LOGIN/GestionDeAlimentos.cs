using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using System.Data.SqlClient;
using Domain;

namespace LOGIN
{
    public partial class GestionDeAlimentos : Form
    {
        public GestionDeAlimentos()
        {
            InitializeComponent();
            tablaEt.ReadOnly = true;
            TablaAlimentos.ReadOnly = true;
            
        }
        QuerytoSqlDo QueryDo = new QuerytoSqlDo();
        private void Eliminarcaractyeristica() {
            string id, Car;
            id = this.TablaAlimentos.CurrentRow.Cells[0].Value.ToString();
            Car= this.tablaEt.CurrentRow.Cells[0].Value.ToString();
            QueryDo.EliminarCaracteristica(id,Car);
        }
        private void GestionDeAlimentos_Load(object sender, EventArgs e)
        {
            QueryDo.CargarTabla(this.TablaAlimentos);
            cbPropiedadesAlimentos.SelectedIndex = 0;
        }

        private void btnExaminar_Click(object sender, EventArgs e)
        {
            this.openFileDialog1.ShowDialog();
        }

        private void openFileDialog1_FileOk(object sender, CancelEventArgs e)
        {
           
        }

        private void button2_Click(object sender, EventArgs e)
        {
            if (QueryDo.InsertarAlimento(txtNombre.Text, float.Parse(txtCH.Text), float.Parse(txtProteina.Text), float.Parse(txtGrasas.Text), float.Parse(txtCalorias.Text))) {
                MessageBox.Show("Resgitro insertado con exito");
            }
            else { MessageBox.Show("Error al insertar"); }
            QueryDo.CargarTabla(this.TablaAlimentos);
        }

        private void TablaAlimentos_CellClick(object sender, DataGridViewCellEventArgs e)
        {
            string cod;
            try
            {
                cod = this.TablaAlimentos.CurrentRow.Cells[0].Value.ToString();
                
                string[] data = new string[4];
                data = QueryDo.CamposAlimento(cod);
                txtNombre.Text = data[0];
                txtCH.Text = data[1];
                txtProteina.Text = data[2];
                txtGrasas.Text = data[3];
                txtCalorias.Text = data[4];
                QueryDo.verPropiedades(cod, tablaEt);
            }
            catch (Exception ex) {

            }
            
            
        }

        private void btnActualizarAlimento_Click(object sender, EventArgs e)
        {
            string cod;
            cod = this.TablaAlimentos.CurrentRow.Cells[0].Value.ToString();
            
            if (QueryDo.ActualizarAlimento(cod ,txtNombre.Text, float.Parse(txtCH.Text), float.Parse(txtProteina.Text), float.Parse(txtGrasas.Text), float.Parse(txtCalorias.Text)))
            {
                MessageBox.Show("Actualizado con exito");
            }
            else { MessageBox.Show("Error al insertar"); }
            QueryDo.CargarTabla(this.TablaAlimentos);

        }

        private void btnBorrarAlimento_Click(object sender, EventArgs e)
        {
            string cod;
            DialogResult oDlgRes;
            oDlgRes = MessageBox.Show("Esta seguro que quiere eliminar a este usuario?", "Confirmacion", MessageBoxButtons.YesNo, MessageBoxIcon.Exclamation);
            if (oDlgRes == DialogResult.Yes)
            {
                try
                {
                    cod = this.TablaAlimentos.CurrentRow.Cells[0].Value.ToString();
                    
                    if (QueryDo.EliminarAlimento(cod))
                    {
                        MessageBox.Show("Eliminado con exito");
                    }
                    else { MessageBox.Show("Error al eliminar"); }
                    QueryDo.CargarTabla(this.TablaAlimentos);
                    txtCH.Text = "";
                    txtGrasas.Text = "";
                    txtNombre.Text = "";
                    txtProteina.Text = "";
                    
                }
                catch
                {
                }
            }
            

        }

        private void button1_Click(object sender, EventArgs e)
        {
            string idA;
            string propiedad;
            propiedad = cbPropiedadesAlimentos.SelectedItem.ToString();
            idA= this.TablaAlimentos.CurrentRow.Cells[0].Value.ToString();
            
            
            
            
            if (QueryDo.registrarPropiedad(idA, propiedad))
            {
                MessageBox.Show("registrado");
                QueryDo.verPropiedades(idA, tablaEt);
            }
            else {
                MessageBox.Show("Error");
            }
        }

        private void button2_Click_1(object sender, EventArgs e)
        {
            string idA = this.TablaAlimentos.CurrentRow.Cells[0].Value.ToString();
            Eliminarcaractyeristica();
            QueryDo.verPropiedades(idA, tablaEt);
        }

        private void btnCargar_Click(object sender, EventArgs e)
        {
            QueryDo.CargarTabla(this.TablaAlimentos);

        }

        private void TablaAlimentos_CellContentClick(object sender, DataGridViewCellEventArgs e)
        {

        }

        private void txtGrasas_TextChanged(object sender, EventArgs e)
        {

        }

        private void label1_Click(object sender, EventArgs e)
        {

        }
    }
}
