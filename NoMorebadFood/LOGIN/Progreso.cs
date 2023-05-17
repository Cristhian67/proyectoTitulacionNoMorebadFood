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
using Domain;
using System.Collections;

namespace LOGIN
{
    public partial class Progreso : Form
    {
        public Progreso()
        {
            InitializeComponent();
        }
        QuerytoSqlDo Querys = new QuerytoSqlDo();

        private void Progreso_Load(object sender, EventArgs e)
        {

        }
        private void obtenerDatos() {
            ArrayList peso = new ArrayList();
            ArrayList fechas = new ArrayList();
            peso = Querys.obtenerPeso(txtBCodCliente.Text);
            fechas = Querys.obtenerFechas(txtBCodCliente.Text);
            chartProgresoPaciente.Series[0].Points.DataBindXY(fechas, peso);

        }

        private void btnSearch_Click(object sender, EventArgs e)
        {
            obtenerDatos();
        }
    }
}
