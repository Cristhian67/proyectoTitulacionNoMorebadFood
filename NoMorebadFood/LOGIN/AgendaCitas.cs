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
    public partial class AgendaCitas : Form
    {
        QuerytoSqlDo QueryDo = new QuerytoSqlDo();
        UserModel UsM = new UserModel();

        public AgendaCitas()
        {
            InitializeComponent();
        }

        private void AgendaCitas_Load(object sender, EventArgs e)
        {
            string[] datos = new string[3];
            
            datos = UsM.DatosUser();
            txtEmpleado.Text = ""+datos[0];

            string Fecha = DateTime.Now.ToString("yyyy-MM-dd").Split(' ')[0];

            QueryDo.CargarTablaCitas(this.TablaCitas,datos[0]);
            QueryDo.CargarTablaCitasClientes(this.tablaClientes);
            QueryDo.CargarTablaCitasFecha(this.TablaCitasFecha,Fecha);
        }

        private void dateTimePicker2_ValueChanged(object sender, EventArgs e)
        {
            DateTime Fecha = dateTimePicker2.Value;
            txtFecha.Text = Fecha.ToString("yyyy-MM-dd");
        }

        private void button2_Click(object sender, EventArgs e)
        {
            string[] datos = new string[3];

            datos = UsM.DatosUser();
            txtEmpleado.Text = "" + datos[0];
            string Cliente, idCliente, Fecha, Empleado, Asunto;
            Cliente = txtCliente.Text;
            idCliente = txtIdCliente.Text;
            Fecha = txtFecha.Text;
            Empleado = txtEmpleado.Text;
            Asunto = txtAsunto.Text;
            bool var =QueryDo.insertarCita(Fecha, idCliente, Cliente, Empleado, Asunto);
            QueryDo.CargarTablaCitas(this.TablaCitas,datos[0]);
            QueryDo.CargarTablaCitasFecha(this.TablaCitasFecha, Fecha);
            if (var == false) {
                MessageBox.Show("Fallo al insertar");
            }
        }

        private void tablaClientes_CellClick(object sender, DataGridViewCellEventArgs e)
        {
            string Cod = this.tablaClientes.CurrentRow.Cells[0].Value.ToString();
            string Cliente = this.tablaClientes.CurrentRow.Cells[1].Value.ToString();


            txtIdCliente.Text = Cod;
            txtCliente.Text = Cliente;

        }

        private void dateTimePicker1_ValueChanged(object sender, EventArgs e)
        {
            DateTime Fecha = dateTimePicker1.Value;


            QueryDo.CargarTablaCitasFecha(this.TablaCitasFecha, Fecha.ToString("yyyy-MM-dd").Split(' ')[0]);

        }

        private void TablaCitas_CellFormatting(object sender, DataGridViewCellFormattingEventArgs e)
        {
            if (this.TablaCitas.Columns[e.ColumnIndex].Name == "Estado") {
                if (e.Value.ToString() == "Hecho") {
                    e.CellStyle.BackColor = Color.BlueViolet;
                }
            }
            if (this.TablaCitas.Columns[e.ColumnIndex].Name== "Fecha") {
                string f=e.Value.ToString().Split(' ')[0];

                string ff = f.Split('/')[2] + "-" + f.Split('/')[1] + "-" + f.Split('/')[0];
                
                int dias =QueryDo.DiasF(ff);
                
                if (dias == 0)
                {
                    e.CellStyle.BackColor = Color.Red;
                }
                else if (dias == 1)
                {
                    e.CellStyle.BackColor = Color.Orange;
                }
                else if (dias > 1 && dias < 7)
                {
                    e.CellStyle.BackColor = Color.DarkGreen;
                }
                else {
                    
                    
                }
                

            }
            }

        private void button1_Click(object sender, EventArgs e)
        {
            int Id = int.Parse(this.TablaCitas.CurrentRow.Cells[0].Value.ToString());
            string Estado = "Hecho";
            QueryDo.CitaHecha(Id, Estado);
            string[] datos = new string[3];
            datos = UsM.DatosUser();
            
            QueryDo.CargarTablaCitas(this.TablaCitas, datos[0]);

        }

        private void button3_Click(object sender, EventArgs e)
        {
            int Id = int.Parse(this.TablaCitas.CurrentRow.Cells[0].Value.ToString());
            
            QueryDo.EliminarCita(Id);
            string[] datos = new string[3];
            datos = UsM.DatosUser();

            QueryDo.CargarTablaCitas(this.TablaCitas, datos[0]);
        }
    }
    }

