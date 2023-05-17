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
    public partial class GestionDeUsuarios : Form
    {
        public GestionDeUsuarios()
        {
            InitializeComponent();
        }
        QuerytoSqlDo QueryDo = new QuerytoSqlDo();
        private void GestionDeUsuarios_Load(object sender, EventArgs e)
        {
            QueryDo.CargarTablaUsuarios(this.TablaUsuarios);
            txtContraseña1.UseSystemPasswordChar = true;
            txtContraseña2.UseSystemPasswordChar = true;
        }

        private void button3_Click(object sender, EventArgs e)
        {
            string Puesto = this.TablaUsuarios.CurrentRow.Cells[4].Value.ToString();
            if (Puesto == "SuperAdmin")
            {
                MessageBox.Show("No puedes eliminar al propietario de la aplicacion");
            }
            else
            {
                DialogResult oDlgRes;
                oDlgRes = MessageBox.Show("Esta seguro que quiere eliminar a este usuario?", "Confirmacion", MessageBoxButtons.YesNo, MessageBoxIcon.Exclamation);
                if (oDlgRes == DialogResult.Yes)
                {
                    if (QueryDo.EliminarUsuario(txtUsuario.Text) == true)
                    {

                    }
                    else
                    {
                        MessageBox.Show("Error al eliminar usuario");
                    }
                }
                else
                {

                }
                QueryDo.CargarTablaUsuarios(this.TablaUsuarios);

            }
        }

        private void textBox1_TextChanged(object sender, EventArgs e)
        {

        }

        private void TablaUsuarios_CellContentClick(object sender, DataGridViewCellEventArgs e)
        {
            string Nombre = this.TablaUsuarios.CurrentRow.Cells[0].Value.ToString();
            string Email = this.TablaUsuarios.CurrentRow.Cells[1].Value.ToString();
            string Password = this.TablaUsuarios.CurrentRow.Cells[2].Value.ToString();
            string Usuario = this.TablaUsuarios.CurrentRow.Cells[3].Value.ToString();
            string Puesto = this.TablaUsuarios.CurrentRow.Cells[4].Value.ToString();
            
            txtNombre.Text = Nombre;
            txtEmail.Text = Email;
            txtContraseña1.Text = Password;
            txtContraseña2.Text = Password;
            txtUsuario.Text = Usuario;
            cbPuesto.SelectedItem= Puesto;
        }

        private void btnCargar_Click(object sender, EventArgs e)
        {
            QueryDo.CargarTablaUsuarios(this.TablaUsuarios);

        }

        private void button1_Click(object sender, EventArgs e)
        {
            string Nombre = txtNombre.Text;
            string Email = txtEmail.Text;
            string Usuario = txtUsuario.Text;
            string Puesto = cbPuesto.SelectedItem.ToString();
            string Puesto1 = this.TablaUsuarios.CurrentRow.Cells[4].Value.ToString();
            
                if (Puesto == "SuperAdmin")
                {
                    MessageBox.Show("No puede haber 2 o mas SuperAdmin");
                }
            else
            {
                if (Puesto1 == "SuperAdmin")
            { Puesto = Puesto1; }
            
                    if (txtContraseña1.Text == txtContraseña2.Text)
                    {
                        string Password = txtContraseña2.Text;
                        QueryDo.ActualizarUsuario(Nombre, Email, Password, Usuario, Puesto);
                    }
                }
            
        }

        private void button2_Click(object sender, EventArgs e)
        {
            string Puesto1 = cbPuesto.SelectedItem.ToString();
            if (Puesto1 == "SuperAdmin")
            {
                MessageBox.Show("No puede haber 2 o mas SuperAdmin");
            }
            else
            {
                string Nombre = txtNombre.Text;
                string Email = txtEmail.Text;
                string Usuario = txtUsuario.Text;
                string Puesto = cbPuesto.SelectedItem.ToString();
                if (txtContraseña1.Text == txtContraseña2.Text)
                {
                    string Password = txtContraseña2.Text;
                    QueryDo.insertarUsuario(Nombre, Email, Password, Usuario, Puesto);
                }
            }
        }
    }
}
