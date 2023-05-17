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

namespace LOGIN
{
    public partial class Login : Form
    {
        public Login()
        {
            InitializeComponent();
        }
        [DllImport("user32.DLL", EntryPoint = "ReleaseCapture")]
        private extern static void ReleaseCapture();
        [DllImport("user32.DLL", EntryPoint = "SendMessage")]
        private extern static void SendMessage(System.IntPtr hwnd, int wmsg, int wparam, int lparam);
       

        private void label1_Click(object sender, EventArgs e)
        {
            
        }

        private void txtpass_Enter(object sender, EventArgs e)
        {
            if (txtpass.Text == "CONTRASEÑA")
            {
                txtpass.Text = "";
                txtpass.UseSystemPasswordChar = true;
                
            }

        }

        private void txtuser_Leave(object sender, EventArgs e)
        {
            if (txtuser.Text == "")
            {
                txtuser.Text = "USUARIO";
                
            }
        }

        private void txtpass_Leave(object sender, EventArgs e)
        {
            if (txtpass.Text == "")
            {
                txtpass.Text = "CONTRASEÑA";
                txtpass.UseSystemPasswordChar = false;

            }
        }

        private void txtuser_Enter(object sender, EventArgs e)
        {
            if (txtuser.Text == "USUARIO")
            {
                txtuser.Text = "";

            }
        }

        private void btncerrar_Click(object sender, EventArgs e)
        {
            Application.Exit();
        }

        private void btnminimizar_Click(object sender, EventArgs e)
        {
            this.WindowState = FormWindowState.Minimized;
        }

        private void Form1_MouseDown(object sender, MouseEventArgs e)
        {
            ReleaseCapture();
            SendMessage(this.Handle, 0x112, 0xf012, 0);
            

        }

        private void panel1_MouseDown(object sender, MouseEventArgs e)
        {
            ReleaseCapture();
            SendMessage(this.Handle, 0x112, 0xf012, 0);
        }

        private void button1_Click(object sender, EventArgs e)
        {
            if (txtuser.Text != "USUARIO" ){
                if (txtpass.Text != "CONTRASEÑA")
                {
                    Domain.UserModel user = new Domain.UserModel();
                    var validLogin = user.LoginUser(txtuser.Text, txtpass.Text);
                    if (validLogin == true)
                    {
                        msgError("logueado correctamente");
                        FormPrincipal mainMenu = new FormPrincipal();
                        mainMenu.Show();
                        this.Hide();

                    }
                    else {
                        msgError("Usuario o contraseña incorrectos \n intente denuevo");
                    }

                }
                else {
                    msgError("Ingrese su contraseña");
                }
            }
            else {
                msgError("Ingrese su nombre de usuario");

            }
        }
        private void msgError(string msg) {
            lblError.Text = ""+ msg;
            lblError.Visible = true;
        }

        private void pictureBox3_MouseDown(object sender, MouseEventArgs e)
        {
            ReleaseCapture();
            SendMessage(this.Handle, 0x112, 0xf012, 0);
        }

        private void label2_Click(object sender, EventArgs e)
        {

        }

        private void label2_MouseDown(object sender, MouseEventArgs e)
        {
            ReleaseCapture();
            SendMessage(this.Handle, 0x112, 0xf012, 0);
        }

        private void linkLabel1_LinkClicked(object sender, LinkLabelLinkClickedEventArgs e)
        {
            var recuperarContraseña = new RecuperarContraseña();
            recuperarContraseña.ShowDialog();
        }

        private void Login_Load(object sender, EventArgs e)
        {

        }

        private void txtpass_KeyPress(object sender, KeyPressEventArgs e)
        {
            if((int)e.KeyChar == (int)Keys.Enter)
            {
                if (txtuser.Text != "USUARIO")
                {
                    if (txtpass.Text != "CONTRASEÑA")
                    {
                        Domain.UserModel user = new Domain.UserModel();
                        var validLogin = user.LoginUser(txtuser.Text, txtpass.Text);
                        if (validLogin == true)
                        {
                            msgError("logueado correctamente");
                            FormPrincipal mainMenu = new FormPrincipal();
                            mainMenu.Show();
                            this.Hide();

                        }
                        else
                        {
                            msgError("Usuario o contraseña incorrectos \n intente denuevo");
                        }

                    }
                    else
                    {
                        msgError("Ingrese su contraseña");
                    }
                }
                else
                {
                    msgError("Ingrese su nombre de usuario");

                }

            }
        }

        private void txtuser_TextChanged(object sender, EventArgs e)
        {

        }
    }
    }

