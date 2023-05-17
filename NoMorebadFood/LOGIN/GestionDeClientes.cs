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
    public partial class GestionDeClientes : Form
    {
        public GestionDeClientes()
        {
            InitializeComponent();
            TablaClientes.ReadOnly=true;

        }
        QuerytoSqlDo QueryDo = new QuerytoSqlDo();
        public string cod;
        private void radioBtnFemenino_CheckedChanged(object sender, EventArgs e)
        {

        }

        private void GestionDeClientes_Load(object sender, EventArgs e)
        {
            QueryDo.CargarTablaClientes(this.TablaClientes);
        }
        private void GuardarDataCliente()
        {
            string nombre, ApellidoP, ApellidoM, Contacto, sexo;
            nombre = txtNombre.Text;
            ApellidoP = txtApellidoP.Text;
            ApellidoM = txtApellidoM.Text;
            Contacto = txtContacto.Text;
            if (radioBtnFemenino.Checked == true)
            {
                sexo = "F";
                QueryDo.insertarDatosCliente(nombre, ApellidoP, ApellidoM, Contacto, sexo);
            }
            else
            {
                if (radioBtnmasculino.Checked == true)
                {
                    sexo = "M";
                    QueryDo.insertarDatosCliente(nombre, ApellidoP, ApellidoM, Contacto, sexo);
                }
                else
                {
                    lblError.Text = "Escoja el sexo";
                }
            }



        }

        private void TablaClientes_CellContentClick(object sender, DataGridViewCellEventArgs e)
        {
            
            try
            {
                cod = this.TablaClientes.CurrentRow.Cells[0].Value.ToString();
                string Nombre = this.TablaClientes.CurrentRow.Cells[1].Value.ToString();
                string ApellidoP = this.TablaClientes.CurrentRow.Cells[2].Value.ToString();
                string ApellidoM = this.TablaClientes.CurrentRow.Cells[3].Value.ToString();
                string Contacto = this.TablaClientes.CurrentRow.Cells[4].Value.ToString();
                string Sexo = this.TablaClientes.CurrentRow.Cells[5].Value.ToString();
                txtApellidoM.Text = ApellidoM;
                txtApellidoP.Text = ApellidoP;
                txtContacto.Text = Contacto;
                
                txtNombre.Text = Nombre;
                
                if (Sexo == "F         ")
                {
                    radioBtnFemenino.Checked = true;


                }
                else
                {

                    radioBtnmasculino.Checked = true;

                }



            }
            catch (Exception ex)
            {
                MessageBox.Show("algo paso :(");
            }
        }

        private void btnBorrarAlimento_Click(object sender, EventArgs e)
        {
            DialogResult oDlgRes;
            oDlgRes = MessageBox.Show("Esta seguro que quiere eliminar a este usuario?", "Confirmacion", MessageBoxButtons.YesNo, MessageBoxIcon.Exclamation);
            if (oDlgRes == DialogResult.Yes)
            {
                string id;
                id = this.TablaClientes.CurrentRow.Cells[0].Value.ToString();

                if (QueryDo.EliminarClienteYDatos(id))
                {
                    MessageBox.Show("Eliminado con exito");
                }


                else { MessageBox.Show("Error al eliminar"); }
                    QueryDo.CargarTablaClientes(this.TablaClientes);
                    txtApellidoM.Text = "";
                    txtApellidoP.Text = "";
                    txtContacto.Text = "";

                    txtNombre.Text = "";
                
                QueryDo.CargarTablaClientes(this.TablaClientes);
            }
            }
        private void btnActualizarAlimento_Click(object sender, EventArgs e)
        {
            string id = this.TablaClientes.CurrentRow.Cells[0].Value.ToString();
            if (QueryDo.ActualizarCliente(id, txtNombre.Text, txtApellidoP.Text, txtApellidoM.Text, txtContacto.Text))
            {
                MessageBox.Show("Actualizado con exito");
            }
            else { MessageBox.Show("Error al actualizar"); }
            QueryDo.CargarTablaClientes(this.TablaClientes);
        }

        private void btnAgregarCliente_Click(object sender, EventArgs e)
        {
            GuardarDataCliente();
            QueryDo.CargarTablaClientes(this.TablaClientes);
        }

        private void btnCargar_Click(object sender, EventArgs e)
        {
            QueryDo.CargarTablaClientes(this.TablaClientes);
        }
    }

        
    }

