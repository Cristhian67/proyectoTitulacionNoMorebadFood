namespace LOGIN
{
    partial class FormDietas
    {
        /// <summary>
        /// Required designer variable.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary>
        /// Clean up any resources being used.
        /// </summary>
        /// <param name="disposing">true if managed resources should be disposed; otherwise, false.</param>
        protected override void Dispose(bool disposing)
        {
            if (disposing && (components != null))
            {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

        #region Windows Form Designer generated code

        /// <summary>
        /// Required method for Designer support - do not modify
        /// the contents of this method with the code editor.
        /// </summary>
        private void InitializeComponent()
        {
            System.Windows.Forms.DataGridViewCellStyle dataGridViewCellStyle10 = new System.Windows.Forms.DataGridViewCellStyle();
            System.Windows.Forms.DataGridViewCellStyle dataGridViewCellStyle11 = new System.Windows.Forms.DataGridViewCellStyle();
            System.Windows.Forms.DataGridViewCellStyle dataGridViewCellStyle12 = new System.Windows.Forms.DataGridViewCellStyle();
            System.Windows.Forms.DataVisualization.Charting.ChartArea chartArea2 = new System.Windows.Forms.DataVisualization.Charting.ChartArea();
            System.Windows.Forms.DataVisualization.Charting.Legend legend2 = new System.Windows.Forms.DataVisualization.Charting.Legend();
            System.Windows.Forms.DataVisualization.Charting.Series series2 = new System.Windows.Forms.DataVisualization.Charting.Series();
            System.ComponentModel.ComponentResourceManager resources = new System.ComponentModel.ComponentResourceManager(typeof(FormDietas));
            System.Windows.Forms.DataGridViewCellStyle dataGridViewCellStyle13 = new System.Windows.Forms.DataGridViewCellStyle();
            System.Windows.Forms.DataGridViewCellStyle dataGridViewCellStyle14 = new System.Windows.Forms.DataGridViewCellStyle();
            System.Windows.Forms.DataGridViewCellStyle dataGridViewCellStyle15 = new System.Windows.Forms.DataGridViewCellStyle();
            System.Windows.Forms.DataGridViewCellStyle dataGridViewCellStyle16 = new System.Windows.Forms.DataGridViewCellStyle();
            System.Windows.Forms.DataGridViewCellStyle dataGridViewCellStyle17 = new System.Windows.Forms.DataGridViewCellStyle();
            System.Windows.Forms.DataGridViewCellStyle dataGridViewCellStyle18 = new System.Windows.Forms.DataGridViewCellStyle();
            this.TablaTDietasDesayuno = new System.Windows.Forms.DataGridView();
            this.txtNombre = new System.Windows.Forms.TextBox();
            this.label3 = new System.Windows.Forms.Label();
            this.ChartmacronutrientesPorc = new System.Windows.Forms.DataVisualization.Charting.Chart();
            this.txtLP = new System.Windows.Forms.Label();
            this.label5 = new System.Windows.Forms.Label();
            this.txtPT = new System.Windows.Forms.Label();
            this.label2 = new System.Windows.Forms.Label();
            this.txtCH = new System.Windows.Forms.Label();
            this.label6 = new System.Windows.Forms.Label();
            this.panel1 = new System.Windows.Forms.Panel();
            this.txtCal = new System.Windows.Forms.Label();
            this.label4 = new System.Windows.Forms.Label();
            this.btnSearch = new System.Windows.Forms.Button();
            this.txtCaloriasFA = new System.Windows.Forms.Label();
            this.label7 = new System.Windows.Forms.Label();
            this.TablaTDietasComida = new System.Windows.Forms.DataGridView();
            this.TablaTDietasCena = new System.Windows.Forms.DataGridView();
            this.btnBorrarAlimento = new System.Windows.Forms.Button();
            this.btnActualizarAlimento = new System.Windows.Forms.Button();
            ((System.ComponentModel.ISupportInitialize)(this.TablaTDietasDesayuno)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.ChartmacronutrientesPorc)).BeginInit();
            this.panel1.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.TablaTDietasComida)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.TablaTDietasCena)).BeginInit();
            this.SuspendLayout();
            // 
            // TablaTDietasDesayuno
            // 
            this.TablaTDietasDesayuno.AllowUserToAddRows = false;
            this.TablaTDietasDesayuno.AllowUserToDeleteRows = false;
            this.TablaTDietasDesayuno.AllowUserToResizeColumns = false;
            this.TablaTDietasDesayuno.AllowUserToResizeRows = false;
            this.TablaTDietasDesayuno.Anchor = ((System.Windows.Forms.AnchorStyles)((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Bottom)));
            this.TablaTDietasDesayuno.BackgroundColor = System.Drawing.Color.FromArgb(((int)(((byte)(62)))), ((int)(((byte)(83)))), ((int)(((byte)(104)))));
            this.TablaTDietasDesayuno.BorderStyle = System.Windows.Forms.BorderStyle.None;
            this.TablaTDietasDesayuno.ColumnHeadersBorderStyle = System.Windows.Forms.DataGridViewHeaderBorderStyle.Single;
            dataGridViewCellStyle10.Alignment = System.Windows.Forms.DataGridViewContentAlignment.MiddleLeft;
            dataGridViewCellStyle10.BackColor = System.Drawing.Color.DarkViolet;
            dataGridViewCellStyle10.Font = new System.Drawing.Font("Century Gothic", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            dataGridViewCellStyle10.ForeColor = System.Drawing.SystemColors.Control;
            dataGridViewCellStyle10.SelectionBackColor = System.Drawing.Color.Indigo;
            dataGridViewCellStyle10.SelectionForeColor = System.Drawing.SystemColors.HighlightText;
            dataGridViewCellStyle10.WrapMode = System.Windows.Forms.DataGridViewTriState.True;
            this.TablaTDietasDesayuno.ColumnHeadersDefaultCellStyle = dataGridViewCellStyle10;
            this.TablaTDietasDesayuno.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            dataGridViewCellStyle11.Alignment = System.Windows.Forms.DataGridViewContentAlignment.MiddleLeft;
            dataGridViewCellStyle11.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(62)))), ((int)(((byte)(83)))), ((int)(((byte)(104)))));
            dataGridViewCellStyle11.Font = new System.Drawing.Font("Microsoft Sans Serif", 8.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            dataGridViewCellStyle11.ForeColor = System.Drawing.SystemColors.Control;
            dataGridViewCellStyle11.SelectionBackColor = System.Drawing.SystemColors.Highlight;
            dataGridViewCellStyle11.SelectionForeColor = System.Drawing.SystemColors.HighlightText;
            dataGridViewCellStyle11.WrapMode = System.Windows.Forms.DataGridViewTriState.False;
            this.TablaTDietasDesayuno.DefaultCellStyle = dataGridViewCellStyle11;
            this.TablaTDietasDesayuno.EnableHeadersVisualStyles = false;
            this.TablaTDietasDesayuno.GridColor = System.Drawing.Color.DarkViolet;
            this.TablaTDietasDesayuno.Location = new System.Drawing.Point(1, 212);
            this.TablaTDietasDesayuno.Name = "TablaTDietasDesayuno";
            this.TablaTDietasDesayuno.RowHeadersBorderStyle = System.Windows.Forms.DataGridViewHeaderBorderStyle.None;
            dataGridViewCellStyle12.Alignment = System.Windows.Forms.DataGridViewContentAlignment.MiddleLeft;
            dataGridViewCellStyle12.BackColor = System.Drawing.Color.BlueViolet;
            dataGridViewCellStyle12.Font = new System.Drawing.Font("Century Gothic", 8.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            dataGridViewCellStyle12.ForeColor = System.Drawing.SystemColors.Control;
            dataGridViewCellStyle12.SelectionBackColor = System.Drawing.Color.Indigo;
            dataGridViewCellStyle12.SelectionForeColor = System.Drawing.Color.White;
            dataGridViewCellStyle12.WrapMode = System.Windows.Forms.DataGridViewTriState.True;
            this.TablaTDietasDesayuno.RowHeadersDefaultCellStyle = dataGridViewCellStyle12;
            this.TablaTDietasDesayuno.RowHeadersVisible = false;
            this.TablaTDietasDesayuno.SelectionMode = System.Windows.Forms.DataGridViewSelectionMode.FullRowSelect;
            this.TablaTDietasDesayuno.Size = new System.Drawing.Size(961, 146);
            this.TablaTDietasDesayuno.TabIndex = 2;
            // 
            // txtNombre
            // 
            this.txtNombre.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(72)))), ((int)(((byte)(83)))), ((int)(((byte)(104)))));
            this.txtNombre.BorderStyle = System.Windows.Forms.BorderStyle.None;
            this.txtNombre.Font = new System.Drawing.Font("Century Gothic", 8.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.txtNombre.ForeColor = System.Drawing.SystemColors.Menu;
            this.txtNombre.Location = new System.Drawing.Point(179, 9);
            this.txtNombre.Margin = new System.Windows.Forms.Padding(0);
            this.txtNombre.Name = "txtNombre";
            this.txtNombre.Size = new System.Drawing.Size(109, 14);
            this.txtNombre.TabIndex = 113;
            // 
            // label3
            // 
            this.label3.AutoSize = true;
            this.label3.Font = new System.Drawing.Font("Century Gothic", 11.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label3.ForeColor = System.Drawing.Color.White;
            this.label3.Location = new System.Drawing.Point(9, 5);
            this.label3.Name = "label3";
            this.label3.Size = new System.Drawing.Size(145, 20);
            this.label3.TabIndex = 112;
            this.label3.Text = "Codigo del cliente";
            // 
            // ChartmacronutrientesPorc
            // 
            this.ChartmacronutrientesPorc.BackColor = System.Drawing.Color.Transparent;
            this.ChartmacronutrientesPorc.BackgroundImageLayout = System.Windows.Forms.ImageLayout.None;
            this.ChartmacronutrientesPorc.BorderlineColor = System.Drawing.Color.FromArgb(((int)(((byte)(52)))), ((int)(((byte)(73)))), ((int)(((byte)(94)))));
            chartArea2.BackColor = System.Drawing.Color.Transparent;
            chartArea2.Name = "ChartArea1";
            this.ChartmacronutrientesPorc.ChartAreas.Add(chartArea2);
            legend2.BackColor = System.Drawing.Color.Transparent;
            legend2.Font = new System.Drawing.Font("Segoe UI Emoji", 8.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            legend2.ForeColor = System.Drawing.Color.White;
            legend2.IsTextAutoFit = false;
            legend2.Name = "Legend1";
            this.ChartmacronutrientesPorc.Legends.Add(legend2);
            this.ChartmacronutrientesPorc.Location = new System.Drawing.Point(750, 9);
            this.ChartmacronutrientesPorc.Margin = new System.Windows.Forms.Padding(0);
            this.ChartmacronutrientesPorc.Name = "ChartmacronutrientesPorc";
            this.ChartmacronutrientesPorc.Palette = System.Windows.Forms.DataVisualization.Charting.ChartColorPalette.SeaGreen;
            series2.BackGradientStyle = System.Windows.Forms.DataVisualization.Charting.GradientStyle.DiagonalLeft;
            series2.BackImageTransparentColor = System.Drawing.Color.Transparent;
            series2.BackSecondaryColor = System.Drawing.Color.BlueViolet;
            series2.BorderColor = System.Drawing.SystemColors.ActiveBorder;
            series2.BorderDashStyle = System.Windows.Forms.DataVisualization.Charting.ChartDashStyle.NotSet;
            series2.ChartArea = "ChartArea1";
            series2.ChartType = System.Windows.Forms.DataVisualization.Charting.SeriesChartType.Doughnut;
            series2.Color = System.Drawing.Color.Black;
            series2.Font = new System.Drawing.Font("Consolas", 8.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            series2.IsValueShownAsLabel = true;
            series2.LabelBackColor = System.Drawing.Color.Transparent;
            series2.LabelBorderColor = System.Drawing.Color.Transparent;
            series2.LabelForeColor = System.Drawing.Color.White;
            series2.Legend = "Legend1";
            series2.MarkerBorderColor = System.Drawing.Color.FromArgb(((int)(((byte)(52)))), ((int)(((byte)(73)))), ((int)(((byte)(94)))));
            series2.MarkerColor = System.Drawing.Color.FromArgb(((int)(((byte)(52)))), ((int)(((byte)(73)))), ((int)(((byte)(94)))));
            series2.Name = "Series1";
            series2.Palette = System.Windows.Forms.DataVisualization.Charting.ChartColorPalette.Berry;
            this.ChartmacronutrientesPorc.Series.Add(series2);
            this.ChartmacronutrientesPorc.Size = new System.Drawing.Size(203, 123);
            this.ChartmacronutrientesPorc.TabIndex = 114;
            this.ChartmacronutrientesPorc.Text = "Macronutrientes";
            this.ChartmacronutrientesPorc.Visible = false;
            this.ChartmacronutrientesPorc.Click += new System.EventHandler(this.ChartmacronutrientesPorc_Click);
            // 
            // txtLP
            // 
            this.txtLP.Anchor = System.Windows.Forms.AnchorStyles.Top;
            this.txtLP.AutoSize = true;
            this.txtLP.Font = new System.Drawing.Font("Century Gothic", 11.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.txtLP.ForeColor = System.Drawing.Color.White;
            this.txtLP.Location = new System.Drawing.Point(159, 27);
            this.txtLP.Name = "txtLP";
            this.txtLP.Size = new System.Drawing.Size(33, 20);
            this.txtLP.TabIndex = 130;
            this.txtLP.Text = "000";
            // 
            // label5
            // 
            this.label5.Anchor = System.Windows.Forms.AnchorStyles.Top;
            this.label5.AutoSize = true;
            this.label5.Font = new System.Drawing.Font("Century Gothic", 11.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label5.ForeColor = System.Drawing.Color.White;
            this.label5.Location = new System.Drawing.Point(39, 27);
            this.label5.Name = "label5";
            this.label5.Size = new System.Drawing.Size(62, 20);
            this.label5.TabIndex = 129;
            this.label5.Text = "Lipidos:";
            // 
            // txtPT
            // 
            this.txtPT.Anchor = System.Windows.Forms.AnchorStyles.Top;
            this.txtPT.AutoSize = true;
            this.txtPT.Font = new System.Drawing.Font("Century Gothic", 11.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.txtPT.ForeColor = System.Drawing.Color.White;
            this.txtPT.Location = new System.Drawing.Point(159, 47);
            this.txtPT.Name = "txtPT";
            this.txtPT.Size = new System.Drawing.Size(33, 20);
            this.txtPT.TabIndex = 132;
            this.txtPT.Text = "000";
            this.txtPT.Click += new System.EventHandler(this.label1_Click);
            // 
            // label2
            // 
            this.label2.Anchor = System.Windows.Forms.AnchorStyles.Top;
            this.label2.AutoSize = true;
            this.label2.Font = new System.Drawing.Font("Century Gothic", 11.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label2.ForeColor = System.Drawing.Color.White;
            this.label2.Location = new System.Drawing.Point(39, 47);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(80, 20);
            this.label2.TabIndex = 131;
            this.label2.Text = "Proteinas:";
            // 
            // txtCH
            // 
            this.txtCH.Anchor = System.Windows.Forms.AnchorStyles.Top;
            this.txtCH.AutoSize = true;
            this.txtCH.Font = new System.Drawing.Font("Century Gothic", 11.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.txtCH.ForeColor = System.Drawing.Color.White;
            this.txtCH.Location = new System.Drawing.Point(159, 7);
            this.txtCH.Name = "txtCH";
            this.txtCH.Size = new System.Drawing.Size(33, 20);
            this.txtCH.TabIndex = 134;
            this.txtCH.Text = "000";
            // 
            // label6
            // 
            this.label6.Anchor = System.Windows.Forms.AnchorStyles.Top;
            this.label6.AutoSize = true;
            this.label6.Font = new System.Drawing.Font("Century Gothic", 11.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label6.ForeColor = System.Drawing.Color.White;
            this.label6.Location = new System.Drawing.Point(39, 7);
            this.label6.Name = "label6";
            this.label6.Size = new System.Drawing.Size(118, 20);
            this.label6.TabIndex = 133;
            this.label6.Text = "Carbohidratos:";
            // 
            // panel1
            // 
            this.panel1.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(52)))), ((int)(((byte)(73)))), ((int)(((byte)(94)))));
            this.panel1.Controls.Add(this.txtPT);
            this.panel1.Controls.Add(this.txtCH);
            this.panel1.Controls.Add(this.label5);
            this.panel1.Controls.Add(this.label6);
            this.panel1.Controls.Add(this.txtLP);
            this.panel1.Controls.Add(this.label2);
            this.panel1.Location = new System.Drawing.Point(750, 135);
            this.panel1.Name = "panel1";
            this.panel1.Size = new System.Drawing.Size(200, 71);
            this.panel1.TabIndex = 135;
            // 
            // txtCal
            // 
            this.txtCal.Anchor = System.Windows.Forms.AnchorStyles.Top;
            this.txtCal.AutoSize = true;
            this.txtCal.Font = new System.Drawing.Font("Century Gothic", 11.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.txtCal.ForeColor = System.Drawing.Color.White;
            this.txtCal.Location = new System.Drawing.Point(716, 162);
            this.txtCal.Name = "txtCal";
            this.txtCal.Size = new System.Drawing.Size(33, 20);
            this.txtCal.TabIndex = 136;
            this.txtCal.Text = "000";
            this.txtCal.Click += new System.EventHandler(this.txtCal_Click);
            // 
            // label4
            // 
            this.label4.Anchor = System.Windows.Forms.AnchorStyles.Top;
            this.label4.AutoSize = true;
            this.label4.Font = new System.Drawing.Font("Century Gothic", 11.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label4.ForeColor = System.Drawing.Color.White;
            this.label4.Location = new System.Drawing.Point(572, 162);
            this.label4.Name = "label4";
            this.label4.Size = new System.Drawing.Size(142, 20);
            this.label4.TabIndex = 135;
            this.label4.Text = "Total de KCalorias:";
            this.label4.Click += new System.EventHandler(this.label4_Click);
            // 
            // btnSearch
            // 
            this.btnSearch.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(44)))), ((int)(((byte)(62)))), ((int)(((byte)(80)))));
            this.btnSearch.Cursor = System.Windows.Forms.Cursors.Hand;
            this.btnSearch.FlatAppearance.BorderSize = 0;
            this.btnSearch.FlatStyle = System.Windows.Forms.FlatStyle.Flat;
            this.btnSearch.Font = new System.Drawing.Font("Century Gothic", 8.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.btnSearch.ForeColor = System.Drawing.SystemColors.Control;
            this.btnSearch.Image = ((System.Drawing.Image)(resources.GetObject("btnSearch.Image")));
            this.btnSearch.Location = new System.Drawing.Point(302, 1);
            this.btnSearch.Margin = new System.Windows.Forms.Padding(0);
            this.btnSearch.Name = "btnSearch";
            this.btnSearch.Size = new System.Drawing.Size(33, 33);
            this.btnSearch.TabIndex = 137;
            this.btnSearch.UseVisualStyleBackColor = false;
            this.btnSearch.Click += new System.EventHandler(this.btnSearch_Click);
            // 
            // txtCaloriasFA
            // 
            this.txtCaloriasFA.Anchor = System.Windows.Forms.AnchorStyles.Top;
            this.txtCaloriasFA.AutoSize = true;
            this.txtCaloriasFA.Font = new System.Drawing.Font("Century Gothic", 11.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.txtCaloriasFA.ForeColor = System.Drawing.Color.White;
            this.txtCaloriasFA.Location = new System.Drawing.Point(716, 189);
            this.txtCaloriasFA.Name = "txtCaloriasFA";
            this.txtCaloriasFA.Size = new System.Drawing.Size(33, 20);
            this.txtCaloriasFA.TabIndex = 139;
            this.txtCaloriasFA.Text = "000";
            this.txtCaloriasFA.Click += new System.EventHandler(this.txtCaloriasFA_Click);
            // 
            // label7
            // 
            this.label7.Anchor = System.Windows.Forms.AnchorStyles.Top;
            this.label7.AutoSize = true;
            this.label7.Font = new System.Drawing.Font("Century Gothic", 11.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label7.ForeColor = System.Drawing.Color.White;
            this.label7.Location = new System.Drawing.Point(572, 189);
            this.label7.Name = "label7";
            this.label7.Size = new System.Drawing.Size(139, 20);
            this.label7.TabIndex = 138;
            this.label7.Text = "Kcalorias a cubrir:";
            this.label7.Click += new System.EventHandler(this.label7_Click);
            // 
            // TablaTDietasComida
            // 
            this.TablaTDietasComida.AllowUserToAddRows = false;
            this.TablaTDietasComida.AllowUserToDeleteRows = false;
            this.TablaTDietasComida.AllowUserToResizeColumns = false;
            this.TablaTDietasComida.AllowUserToResizeRows = false;
            this.TablaTDietasComida.Anchor = ((System.Windows.Forms.AnchorStyles)((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Bottom)));
            this.TablaTDietasComida.BackgroundColor = System.Drawing.Color.FromArgb(((int)(((byte)(62)))), ((int)(((byte)(83)))), ((int)(((byte)(104)))));
            this.TablaTDietasComida.BorderStyle = System.Windows.Forms.BorderStyle.None;
            this.TablaTDietasComida.ColumnHeadersBorderStyle = System.Windows.Forms.DataGridViewHeaderBorderStyle.Single;
            dataGridViewCellStyle13.Alignment = System.Windows.Forms.DataGridViewContentAlignment.MiddleLeft;
            dataGridViewCellStyle13.BackColor = System.Drawing.Color.DarkViolet;
            dataGridViewCellStyle13.Font = new System.Drawing.Font("Century Gothic", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            dataGridViewCellStyle13.ForeColor = System.Drawing.SystemColors.Control;
            dataGridViewCellStyle13.SelectionBackColor = System.Drawing.Color.Indigo;
            dataGridViewCellStyle13.SelectionForeColor = System.Drawing.SystemColors.HighlightText;
            dataGridViewCellStyle13.WrapMode = System.Windows.Forms.DataGridViewTriState.True;
            this.TablaTDietasComida.ColumnHeadersDefaultCellStyle = dataGridViewCellStyle13;
            this.TablaTDietasComida.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            dataGridViewCellStyle14.Alignment = System.Windows.Forms.DataGridViewContentAlignment.MiddleLeft;
            dataGridViewCellStyle14.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(62)))), ((int)(((byte)(83)))), ((int)(((byte)(104)))));
            dataGridViewCellStyle14.Font = new System.Drawing.Font("Microsoft Sans Serif", 8.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            dataGridViewCellStyle14.ForeColor = System.Drawing.SystemColors.Control;
            dataGridViewCellStyle14.SelectionBackColor = System.Drawing.SystemColors.Highlight;
            dataGridViewCellStyle14.SelectionForeColor = System.Drawing.SystemColors.HighlightText;
            dataGridViewCellStyle14.WrapMode = System.Windows.Forms.DataGridViewTriState.False;
            this.TablaTDietasComida.DefaultCellStyle = dataGridViewCellStyle14;
            this.TablaTDietasComida.EnableHeadersVisualStyles = false;
            this.TablaTDietasComida.GridColor = System.Drawing.Color.DarkViolet;
            this.TablaTDietasComida.Location = new System.Drawing.Point(1, 364);
            this.TablaTDietasComida.Name = "TablaTDietasComida";
            this.TablaTDietasComida.RowHeadersBorderStyle = System.Windows.Forms.DataGridViewHeaderBorderStyle.None;
            dataGridViewCellStyle15.Alignment = System.Windows.Forms.DataGridViewContentAlignment.MiddleLeft;
            dataGridViewCellStyle15.BackColor = System.Drawing.Color.BlueViolet;
            dataGridViewCellStyle15.Font = new System.Drawing.Font("Century Gothic", 8.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            dataGridViewCellStyle15.ForeColor = System.Drawing.SystemColors.Control;
            dataGridViewCellStyle15.SelectionBackColor = System.Drawing.Color.Indigo;
            dataGridViewCellStyle15.SelectionForeColor = System.Drawing.Color.White;
            dataGridViewCellStyle15.WrapMode = System.Windows.Forms.DataGridViewTriState.True;
            this.TablaTDietasComida.RowHeadersDefaultCellStyle = dataGridViewCellStyle15;
            this.TablaTDietasComida.RowHeadersVisible = false;
            this.TablaTDietasComida.SelectionMode = System.Windows.Forms.DataGridViewSelectionMode.FullRowSelect;
            this.TablaTDietasComida.Size = new System.Drawing.Size(961, 146);
            this.TablaTDietasComida.TabIndex = 140;
            // 
            // TablaTDietasCena
            // 
            this.TablaTDietasCena.AllowUserToAddRows = false;
            this.TablaTDietasCena.AllowUserToDeleteRows = false;
            this.TablaTDietasCena.AllowUserToResizeColumns = false;
            this.TablaTDietasCena.AllowUserToResizeRows = false;
            this.TablaTDietasCena.Anchor = ((System.Windows.Forms.AnchorStyles)((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Bottom)));
            this.TablaTDietasCena.BackgroundColor = System.Drawing.Color.FromArgb(((int)(((byte)(62)))), ((int)(((byte)(83)))), ((int)(((byte)(104)))));
            this.TablaTDietasCena.BorderStyle = System.Windows.Forms.BorderStyle.None;
            this.TablaTDietasCena.ColumnHeadersBorderStyle = System.Windows.Forms.DataGridViewHeaderBorderStyle.Single;
            dataGridViewCellStyle16.Alignment = System.Windows.Forms.DataGridViewContentAlignment.MiddleLeft;
            dataGridViewCellStyle16.BackColor = System.Drawing.Color.DarkViolet;
            dataGridViewCellStyle16.Font = new System.Drawing.Font("Century Gothic", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            dataGridViewCellStyle16.ForeColor = System.Drawing.SystemColors.Control;
            dataGridViewCellStyle16.SelectionBackColor = System.Drawing.Color.Indigo;
            dataGridViewCellStyle16.SelectionForeColor = System.Drawing.SystemColors.HighlightText;
            dataGridViewCellStyle16.WrapMode = System.Windows.Forms.DataGridViewTriState.True;
            this.TablaTDietasCena.ColumnHeadersDefaultCellStyle = dataGridViewCellStyle16;
            this.TablaTDietasCena.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            dataGridViewCellStyle17.Alignment = System.Windows.Forms.DataGridViewContentAlignment.MiddleLeft;
            dataGridViewCellStyle17.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(62)))), ((int)(((byte)(83)))), ((int)(((byte)(104)))));
            dataGridViewCellStyle17.Font = new System.Drawing.Font("Microsoft Sans Serif", 8.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            dataGridViewCellStyle17.ForeColor = System.Drawing.SystemColors.Control;
            dataGridViewCellStyle17.SelectionBackColor = System.Drawing.SystemColors.Highlight;
            dataGridViewCellStyle17.SelectionForeColor = System.Drawing.SystemColors.HighlightText;
            dataGridViewCellStyle17.WrapMode = System.Windows.Forms.DataGridViewTriState.False;
            this.TablaTDietasCena.DefaultCellStyle = dataGridViewCellStyle17;
            this.TablaTDietasCena.EnableHeadersVisualStyles = false;
            this.TablaTDietasCena.GridColor = System.Drawing.Color.DarkViolet;
            this.TablaTDietasCena.Location = new System.Drawing.Point(1, 516);
            this.TablaTDietasCena.Name = "TablaTDietasCena";
            this.TablaTDietasCena.RowHeadersBorderStyle = System.Windows.Forms.DataGridViewHeaderBorderStyle.None;
            dataGridViewCellStyle18.Alignment = System.Windows.Forms.DataGridViewContentAlignment.MiddleLeft;
            dataGridViewCellStyle18.BackColor = System.Drawing.Color.BlueViolet;
            dataGridViewCellStyle18.Font = new System.Drawing.Font("Century Gothic", 8.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            dataGridViewCellStyle18.ForeColor = System.Drawing.SystemColors.Control;
            dataGridViewCellStyle18.SelectionBackColor = System.Drawing.Color.Indigo;
            dataGridViewCellStyle18.SelectionForeColor = System.Drawing.Color.White;
            dataGridViewCellStyle18.WrapMode = System.Windows.Forms.DataGridViewTriState.True;
            this.TablaTDietasCena.RowHeadersDefaultCellStyle = dataGridViewCellStyle18;
            this.TablaTDietasCena.RowHeadersVisible = false;
            this.TablaTDietasCena.SelectionMode = System.Windows.Forms.DataGridViewSelectionMode.FullRowSelect;
            this.TablaTDietasCena.Size = new System.Drawing.Size(961, 146);
            this.TablaTDietasCena.TabIndex = 141;
            // 
            // btnBorrarAlimento
            // 
            this.btnBorrarAlimento.BackColor = System.Drawing.Color.Transparent;
            this.btnBorrarAlimento.BackgroundImage = ((System.Drawing.Image)(resources.GetObject("btnBorrarAlimento.BackgroundImage")));
            this.btnBorrarAlimento.BackgroundImageLayout = System.Windows.Forms.ImageLayout.Zoom;
            this.btnBorrarAlimento.Cursor = System.Windows.Forms.Cursors.Hand;
            this.btnBorrarAlimento.FlatAppearance.BorderSize = 0;
            this.btnBorrarAlimento.FlatStyle = System.Windows.Forms.FlatStyle.Flat;
            this.btnBorrarAlimento.Font = new System.Drawing.Font("Century Gothic", 14.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.btnBorrarAlimento.ForeColor = System.Drawing.SystemColors.Control;
            this.btnBorrarAlimento.Location = new System.Drawing.Point(13, 135);
            this.btnBorrarAlimento.Margin = new System.Windows.Forms.Padding(0);
            this.btnBorrarAlimento.Name = "btnBorrarAlimento";
            this.btnBorrarAlimento.Size = new System.Drawing.Size(63, 63);
            this.btnBorrarAlimento.TabIndex = 144;
            this.btnBorrarAlimento.UseVisualStyleBackColor = false;
            // 
            // btnActualizarAlimento
            // 
            this.btnActualizarAlimento.BackColor = System.Drawing.Color.Transparent;
            this.btnActualizarAlimento.BackgroundImage = ((System.Drawing.Image)(resources.GetObject("btnActualizarAlimento.BackgroundImage")));
            this.btnActualizarAlimento.BackgroundImageLayout = System.Windows.Forms.ImageLayout.Zoom;
            this.btnActualizarAlimento.Cursor = System.Windows.Forms.Cursors.Hand;
            this.btnActualizarAlimento.FlatAppearance.BorderSize = 0;
            this.btnActualizarAlimento.FlatStyle = System.Windows.Forms.FlatStyle.Flat;
            this.btnActualizarAlimento.Font = new System.Drawing.Font("Century Gothic", 14.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.btnActualizarAlimento.ForeColor = System.Drawing.SystemColors.Control;
            this.btnActualizarAlimento.Location = new System.Drawing.Point(9, 53);
            this.btnActualizarAlimento.Margin = new System.Windows.Forms.Padding(0);
            this.btnActualizarAlimento.Name = "btnActualizarAlimento";
            this.btnActualizarAlimento.Size = new System.Drawing.Size(72, 79);
            this.btnActualizarAlimento.TabIndex = 143;
            this.btnActualizarAlimento.UseVisualStyleBackColor = false;
            this.btnActualizarAlimento.Click += new System.EventHandler(this.btnActualizarAlimento_Click);
            // 
            // FormDietas
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(44)))), ((int)(((byte)(62)))), ((int)(((byte)(80)))));
            this.ClientSize = new System.Drawing.Size(962, 661);
            this.Controls.Add(this.btnBorrarAlimento);
            this.Controls.Add(this.btnActualizarAlimento);
            this.Controls.Add(this.TablaTDietasCena);
            this.Controls.Add(this.TablaTDietasComida);
            this.Controls.Add(this.txtCaloriasFA);
            this.Controls.Add(this.label7);
            this.Controls.Add(this.btnSearch);
            this.Controls.Add(this.txtCal);
            this.Controls.Add(this.label4);
            this.Controls.Add(this.panel1);
            this.Controls.Add(this.ChartmacronutrientesPorc);
            this.Controls.Add(this.txtNombre);
            this.Controls.Add(this.label3);
            this.Controls.Add(this.TablaTDietasDesayuno);
            this.FormBorderStyle = System.Windows.Forms.FormBorderStyle.None;
            this.Name = "FormDietas";
            this.Text = "FormDietas";
            ((System.ComponentModel.ISupportInitialize)(this.TablaTDietasDesayuno)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.ChartmacronutrientesPorc)).EndInit();
            this.panel1.ResumeLayout(false);
            this.panel1.PerformLayout();
            ((System.ComponentModel.ISupportInitialize)(this.TablaTDietasComida)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.TablaTDietasCena)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.DataGridView TablaTDietasDesayuno;
        private System.Windows.Forms.Label label3;
        private System.Windows.Forms.DataVisualization.Charting.Chart ChartmacronutrientesPorc;
        private System.Windows.Forms.Label txtLP;
        private System.Windows.Forms.Label label5;
        private System.Windows.Forms.Label txtPT;
        private System.Windows.Forms.Label label2;
        private System.Windows.Forms.Label txtCH;
        private System.Windows.Forms.Label label6;
        private System.Windows.Forms.Panel panel1;
        private System.Windows.Forms.Label txtCal;
        private System.Windows.Forms.Label label4;
        public System.Windows.Forms.TextBox txtNombre;
        private System.Windows.Forms.Button btnSearch;
        private System.Windows.Forms.Label txtCaloriasFA;
        private System.Windows.Forms.Label label7;
        private System.Windows.Forms.DataGridView TablaTDietasComida;
        private System.Windows.Forms.DataGridView TablaTDietasCena;
        private System.Windows.Forms.Button btnBorrarAlimento;
        private System.Windows.Forms.Button btnActualizarAlimento;
    }
}