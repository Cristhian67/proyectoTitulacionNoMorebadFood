using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using System.Runtime.InteropServices;
using Domain;
namespace LOGIN
{
    public partial class FormPrincipal : Form
    {
        public FormPrincipal()
        {
            InitializeComponent();
            this.ttLogout.SetToolTip(this.picBoxLogout, "Salir de la cuenta actual");
            this.ttUsuarios.SetToolTip(this.btnUsuarios,"En esta ventana podras ver y administrar \n los usuarios registrados en el sistema si eres Admin");
            this.ttEvaluacionNutricional.SetToolTip(this.btnEvaluacionNutricional, "En esta ventana se ingresaran los datos fisicos del \n cliente, sus gustos y se calculara su estado fisico, \n pudiendo guardar o no los datos");
            this.ttProgreso.SetToolTip(this.btnProgreso, "En esta ventana podras ver la evolucion fisica \n de un cliente respecto a sus citas anteriores");
            this.ttAlimentos.SetToolTip(this.btnAlimentos, "En esta ventana podras:\n Ver los alimentos  disponibles en la base de datos \n Agregar nuevos alimentos \n Editar los alimentos ya existentes  \n Borrar los alimentos ya existentes");
            this.ttClientes.SetToolTip(this.btnClientes, "En esta ventana podras:\n Ver los Clientes  registrados en la base de datos \n Agregar nuevos Clientes \n Editar los datos de los Clientes ya existentes  \n Borrar los Clientes ya existentes");
            this.ttListaDeDietas.SetToolTip(this.btnListaDeDietas, "En esta ventana podras ver una lista de dietas, \n eliminarlas y ver el contenido de estas \n tambien podras cargar la dieta a la ventana de dietas para editarla");
            this.ttTiposDeDieta.SetToolTip(this.btnTiposDeDieta, "En esta ventana poidras crear un tipo de dieta a tu \n criterio, manipulando datos como macronutrientes, ganancia \n o perdida de calorias, tipos de alimento permitidos \n y el nombre para identificar el tipo de dieta");
            this.ttCitas.SetToolTip(this.btnCitas, "Agregar y administrar tus citas pendientes");
            this.ttDietas.SetToolTip(this.btnDietas, "Formato para visualizar, crear y editar dietas");
            Query.AlertaCita();
        }
        UserModel QueryDo = new UserModel();
        QuerytoSqlDo Query = new QuerytoSqlDo();
        //abrir forms dentroi del panel
        #region abrirForms
        private void AbrirFormulario<MiForm>() where MiForm : Form, new() {
            Form formulario;
            formulario = panelPrincipal.Controls.OfType<MiForm>().FirstOrDefault();//Busca en la coleccion el form
            //si el formulario no existe
            if (formulario == null)
            {
                formulario = new MiForm();
                formulario.TopLevel = false;
                panelPrincipal.Controls.Add(formulario);
                panelPrincipal.Tag = formulario;
                formulario.Show();
                formulario.BringToFront();
                formulario.Dock = DockStyle.Fill;
            }
            //si el formulario existe
            else {
                formulario.BringToFront();

            }
        }
        #endregion
        [DllImport("user32.DLL", EntryPoint = "ReleaseCapture")]
        private extern static void ReleaseCapture();
        [DllImport("user32.DLL", EntryPoint = "SendMessage")]
        private extern static void SendMessage(System.IntPtr hwnd, int wmsg, int wparam, int lparam);

        private void panel2_MouseDown(object sender, MouseEventArgs e)
        {
            ReleaseCapture();
            SendMessage(this.Handle, 0x112, 0xf012, 0);
        }

        private void pictureBox4_Click(object sender, EventArgs e)
        {
            if (panelMenuLateral.Width == 70)
            {
                panelMenuLateral.Width = 270;
                
                txtCorreo.Visible = true;

            }
            
            else {
                if (panelMenuLateral.Width == 270)
                {
                    panelMenuLateral.Width = 70;
                    txtCorreo.Visible = false;
                }
            }

        }

        private void pictureBox2_Click(object sender, EventArgs e)
        {
            Application.Exit();
        }

        private void pictureBox1_Click(object sender, EventArgs e)
        {
            this.WindowState = FormWindowState.Maximized;
            maximizar.Visible = false;
            restaurar.Visible = true;


        }

        private void restaurar_Click(object sender, EventArgs e)
        {
            this.WindowState = FormWindowState.Normal;
            maximizar.Visible = true;
            restaurar.Visible = false;
        }

        private void minimizar_Click(object sender, EventArgs e)
        {
            this.WindowState = FormWindowState.Minimized;
        }

        private void btnAnD_Click(object sender, EventArgs e)
        {
            AbrirFormulario<FormAnalisisDatos>();
        }

        private void button2_Click(object sender, EventArgs e)
        {
            AbrirFormulario<GestionDeAlimentos>();
        }

        private void panelSuperior_Paint(object sender, PaintEventArgs e)
        {

        }

        private void button5_Click(object sender, EventArgs e)
        {
            AbrirFormulario<GestionDeClientes>();

        }

        private void FormPrincipal_Load(object sender, EventArgs e)
        {
            
            string[] datos = new string[3];
            datos = QueryDo.DatosUser();
            txtCorreo.Text =datos[2];
            txtNombre.Text = datos[0];
            txtPuesto.Text = datos[1];
            if (txtPuesto.Text == "SuperAdmin")
            {
                btnUsuarios.Enabled = true;
                
            }
            else
            {
                if (txtPuesto.Text == "Admin")
                {
                    btnUsuarios.Enabled = true;
                }
                else
                {
                    btnUsuarios.Enabled = false;

                }

            }

        }

        private void pictureBox2_Click_1(object sender, EventArgs e)
        {
            Login mainMenu = new Login();
            mainMenu.Show();
            this.Hide();
        }

        private void btnUsuarios_Click(object sender, EventArgs e)
        {
            AbrirFormulario<GestionDeUsuarios>();
        }

        private void btnCitas_Click(object sender, EventArgs e)
        {
            AbrirFormulario<AgendaCitas>();

        }

        private void btnTiposDeDieta_Click(object sender, EventArgs e)
        {
            AbrirFormulario<TiposDeDieta>();
        }

        private void btnProgreso_Click(object sender, EventArgs e)
        {
            AbrirFormulario<Progreso>();
        }

        private void txtCorreo_Click(object sender, EventArgs e)
        {

        }

        private void btnDietas_Click(object sender, EventArgs e)
        {
            AbrirFormulario<FormDietas>();
        }
    }
}
