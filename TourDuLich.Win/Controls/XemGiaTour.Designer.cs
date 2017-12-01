namespace TourDuLich.Win.Controls
{
    partial class XemGiaTour
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

        #region Component Designer generated code

        /// <summary> 
        /// Required method for Designer support - do not modify 
        /// the contents of this method with the code editor.
        /// </summary>
        private void InitializeComponent()
        {
            this.components = new System.ComponentModel.Container();
            System.Windows.Forms.DataGridViewCellStyle dataGridViewCellStyle1 = new System.Windows.Forms.DataGridViewCellStyle();
            System.Windows.Forms.DataGridViewCellStyle dataGridViewCellStyle2 = new System.Windows.Forms.DataGridViewCellStyle();
            System.Windows.Forms.DataGridViewCellStyle dataGridViewCellStyle3 = new System.Windows.Forms.DataGridViewCellStyle();
            System.Windows.Forms.DataGridViewCellStyle dataGridViewCellStyle4 = new System.Windows.Forms.DataGridViewCellStyle();
            System.ComponentModel.ComponentResourceManager resources = new System.ComponentModel.ComponentResourceManager(typeof(XemGiaTour));
            this.bunifuDragControl1 = new Bunifu.Framework.UI.BunifuDragControl(this.components);
            this.bunifuCustomLabel1 = new Bunifu.Framework.UI.BunifuCustomLabel();
            this.dateFrom = new Bunifu.Framework.UI.BunifuDatepicker();
            this.dateTo = new Bunifu.Framework.UI.BunifuDatepicker();
            this.lblDen = new Bunifu.Framework.UI.BunifuCustomLabel();
            this.btnKiemTra = new Bunifu.Framework.UI.BunifuFlatButton();
            this.bunifuElipse1 = new Bunifu.Framework.UI.BunifuElipse(this.components);
            this.bunifuElipse2 = new Bunifu.Framework.UI.BunifuElipse(this.components);
            this.bunifuElipse3 = new Bunifu.Framework.UI.BunifuElipse(this.components);
            this.tblGiaTour = new Bunifu.Framework.UI.BunifuCustomDataGrid();
            this.bunifuElipse4 = new Bunifu.Framework.UI.BunifuElipse(this.components);
            this.pnlSearch = new Bunifu.Framework.UI.BunifuGradientPanel();
            this.txtSearch = new System.Windows.Forms.TextBox();
            this.panel1 = new System.Windows.Forms.Panel();
            this.tourViewModelBindingSource = new System.Windows.Forms.BindingSource(this.components);
            this.maTourDataGridViewTextBoxColumn = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.tenLoaiHinhDataGridViewTextBoxColumn = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.tenTourDataGridViewTextBoxColumn = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.soNgayDataGridViewTextBoxColumn = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.soDemDataGridViewTextBoxColumn = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.giaDataGridViewTextBoxColumn = new System.Windows.Forms.DataGridViewTextBoxColumn();
            ((System.ComponentModel.ISupportInitialize)(this.tblGiaTour)).BeginInit();
            this.pnlSearch.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.tourViewModelBindingSource)).BeginInit();
            this.SuspendLayout();
            // 
            // bunifuDragControl1
            // 
            this.bunifuDragControl1.Fixed = true;
            this.bunifuDragControl1.Horizontal = true;
            this.bunifuDragControl1.TargetControl = this;
            this.bunifuDragControl1.Vertical = true;
            // 
            // bunifuCustomLabel1
            // 
            this.bunifuCustomLabel1.Anchor = ((System.Windows.Forms.AnchorStyles)(((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Left) 
            | System.Windows.Forms.AnchorStyles.Right)));
            this.bunifuCustomLabel1.AutoSize = true;
            this.bunifuCustomLabel1.BackColor = System.Drawing.Color.Transparent;
            this.bunifuCustomLabel1.FlatStyle = System.Windows.Forms.FlatStyle.Flat;
            this.bunifuCustomLabel1.Font = new System.Drawing.Font("Arial", 20F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.bunifuCustomLabel1.ForeColor = System.Drawing.Color.CornflowerBlue;
            this.bunifuCustomLabel1.Location = new System.Drawing.Point(20, 20);
            this.bunifuCustomLabel1.Margin = new System.Windows.Forms.Padding(20, 20, 0, 0);
            this.bunifuCustomLabel1.Name = "bunifuCustomLabel1";
            this.bunifuCustomLabel1.RightToLeft = System.Windows.Forms.RightToLeft.No;
            this.bunifuCustomLabel1.Size = new System.Drawing.Size(289, 32);
            this.bunifuCustomLabel1.TabIndex = 2;
            this.bunifuCustomLabel1.Text = "Xem giá tour hiện tại";
            this.bunifuCustomLabel1.TextAlign = System.Drawing.ContentAlignment.MiddleCenter;
            // 
            // dateFrom
            // 
            this.dateFrom.BackColor = System.Drawing.Color.WhiteSmoke;
            this.dateFrom.BorderRadius = 0;
            this.dateFrom.Font = new System.Drawing.Font("Microsoft Sans Serif", 9.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.dateFrom.ForeColor = System.Drawing.Color.Black;
            this.dateFrom.Format = System.Windows.Forms.DateTimePickerFormat.Custom;
            this.dateFrom.FormatCustom = "dd / MM / yyyy";
            this.dateFrom.Location = new System.Drawing.Point(20, 72);
            this.dateFrom.Margin = new System.Windows.Forms.Padding(20, 20, 0, 0);
            this.dateFrom.Name = "dateFrom";
            this.dateFrom.Size = new System.Drawing.Size(200, 35);
            this.dateFrom.TabIndex = 3;
            this.dateFrom.Value = new System.DateTime(2017, 12, 1, 17, 0, 1, 0);
            // 
            // dateTo
            // 
            this.dateTo.BackColor = System.Drawing.Color.WhiteSmoke;
            this.dateTo.BorderRadius = 0;
            this.dateTo.Font = new System.Drawing.Font("Microsoft Sans Serif", 9.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.dateTo.ForeColor = System.Drawing.Color.Black;
            this.dateTo.Format = System.Windows.Forms.DateTimePickerFormat.Custom;
            this.dateTo.FormatCustom = "dd / MM / yyyy";
            this.dateTo.Location = new System.Drawing.Point(299, 72);
            this.dateTo.Margin = new System.Windows.Forms.Padding(20, 20, 0, 0);
            this.dateTo.Name = "dateTo";
            this.dateTo.Size = new System.Drawing.Size(200, 35);
            this.dateTo.TabIndex = 4;
            this.dateTo.Value = new System.DateTime(2017, 12, 13, 0, 0, 0, 0);
            // 
            // lblDen
            // 
            this.lblDen.AutoSize = true;
            this.lblDen.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.lblDen.Location = new System.Drawing.Point(240, 78);
            this.lblDen.Margin = new System.Windows.Forms.Padding(20, 20, 0, 0);
            this.lblDen.Name = "lblDen";
            this.lblDen.Size = new System.Drawing.Size(39, 20);
            this.lblDen.TabIndex = 5;
            this.lblDen.Text = "Đến";
            // 
            // btnKiemTra
            // 
            this.btnKiemTra.Activecolor = System.Drawing.Color.RoyalBlue;
            this.btnKiemTra.BackColor = System.Drawing.Color.CornflowerBlue;
            this.btnKiemTra.BackgroundImageLayout = System.Windows.Forms.ImageLayout.Stretch;
            this.btnKiemTra.BorderRadius = 0;
            this.btnKiemTra.ButtonText = "Kiểm tra";
            this.btnKiemTra.Cursor = System.Windows.Forms.Cursors.Hand;
            this.btnKiemTra.DisabledColor = System.Drawing.Color.Gray;
            this.btnKiemTra.Iconcolor = System.Drawing.Color.Transparent;
            this.btnKiemTra.Iconimage = null;
            this.btnKiemTra.Iconimage_right = null;
            this.btnKiemTra.Iconimage_right_Selected = null;
            this.btnKiemTra.Iconimage_Selected = null;
            this.btnKiemTra.IconMarginLeft = 0;
            this.btnKiemTra.IconMarginRight = 0;
            this.btnKiemTra.IconRightVisible = true;
            this.btnKiemTra.IconRightZoom = 0D;
            this.btnKiemTra.IconVisible = true;
            this.btnKiemTra.IconZoom = 90D;
            this.btnKiemTra.IsTab = false;
            this.btnKiemTra.Location = new System.Drawing.Point(519, 72);
            this.btnKiemTra.Margin = new System.Windows.Forms.Padding(20, 20, 0, 0);
            this.btnKiemTra.Name = "btnKiemTra";
            this.btnKiemTra.Normalcolor = System.Drawing.Color.CornflowerBlue;
            this.btnKiemTra.OnHovercolor = System.Drawing.Color.RoyalBlue;
            this.btnKiemTra.OnHoverTextColor = System.Drawing.Color.White;
            this.btnKiemTra.selected = false;
            this.btnKiemTra.Size = new System.Drawing.Size(100, 35);
            this.btnKiemTra.TabIndex = 6;
            this.btnKiemTra.Text = "Kiểm tra";
            this.btnKiemTra.TextAlign = System.Drawing.ContentAlignment.MiddleCenter;
            this.btnKiemTra.Textcolor = System.Drawing.Color.White;
            this.btnKiemTra.TextFont = new System.Drawing.Font("Microsoft Sans Serif", 10.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.btnKiemTra.Click += new System.EventHandler(this.BtnKiemTra_Click);
            // 
            // bunifuElipse1
            // 
            this.bunifuElipse1.ElipseRadius = 5;
            this.bunifuElipse1.TargetControl = this.btnKiemTra;
            // 
            // bunifuElipse2
            // 
            this.bunifuElipse2.ElipseRadius = 5;
            this.bunifuElipse2.TargetControl = this.dateFrom;
            // 
            // bunifuElipse3
            // 
            this.bunifuElipse3.ElipseRadius = 5;
            this.bunifuElipse3.TargetControl = this.dateTo;
            // 
            // tblGiaTour
            // 
            dataGridViewCellStyle1.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(224)))), ((int)(((byte)(224)))), ((int)(((byte)(224)))));
            this.tblGiaTour.AlternatingRowsDefaultCellStyle = dataGridViewCellStyle1;
            this.tblGiaTour.AutoGenerateColumns = false;
            this.tblGiaTour.AutoSizeColumnsMode = System.Windows.Forms.DataGridViewAutoSizeColumnsMode.Fill;
            this.tblGiaTour.AutoSizeRowsMode = System.Windows.Forms.DataGridViewAutoSizeRowsMode.AllCells;
            this.tblGiaTour.BackgroundColor = System.Drawing.Color.WhiteSmoke;
            this.tblGiaTour.BorderStyle = System.Windows.Forms.BorderStyle.None;
            this.tblGiaTour.CellBorderStyle = System.Windows.Forms.DataGridViewCellBorderStyle.SunkenVertical;
            this.tblGiaTour.ColumnHeadersBorderStyle = System.Windows.Forms.DataGridViewHeaderBorderStyle.None;
            dataGridViewCellStyle2.Alignment = System.Windows.Forms.DataGridViewContentAlignment.MiddleLeft;
            dataGridViewCellStyle2.BackColor = System.Drawing.Color.CornflowerBlue;
            dataGridViewCellStyle2.Font = new System.Drawing.Font("Century Gothic", 11.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            dataGridViewCellStyle2.ForeColor = System.Drawing.Color.White;
            dataGridViewCellStyle2.SelectionBackColor = System.Drawing.Color.CornflowerBlue;
            dataGridViewCellStyle2.SelectionForeColor = System.Drawing.SystemColors.HighlightText;
            dataGridViewCellStyle2.WrapMode = System.Windows.Forms.DataGridViewTriState.True;
            this.tblGiaTour.ColumnHeadersDefaultCellStyle = dataGridViewCellStyle2;
            this.tblGiaTour.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.tblGiaTour.Columns.AddRange(new System.Windows.Forms.DataGridViewColumn[] {
            this.maTourDataGridViewTextBoxColumn,
            this.tenLoaiHinhDataGridViewTextBoxColumn,
            this.tenTourDataGridViewTextBoxColumn,
            this.soNgayDataGridViewTextBoxColumn,
            this.soDemDataGridViewTextBoxColumn,
            this.giaDataGridViewTextBoxColumn});
            this.tblGiaTour.DataSource = this.tourViewModelBindingSource;
            this.tblGiaTour.DoubleBuffered = true;
            this.tblGiaTour.EnableHeadersVisualStyles = false;
            this.tblGiaTour.HeaderBgColor = System.Drawing.Color.CornflowerBlue;
            this.tblGiaTour.HeaderForeColor = System.Drawing.Color.White;
            this.tblGiaTour.Location = new System.Drawing.Point(20, 212);
            this.tblGiaTour.Margin = new System.Windows.Forms.Padding(20);
            this.tblGiaTour.Name = "tblGiaTour";
            this.tblGiaTour.ReadOnly = true;
            this.tblGiaTour.RowHeadersBorderStyle = System.Windows.Forms.DataGridViewHeaderBorderStyle.None;
            dataGridViewCellStyle3.Alignment = System.Windows.Forms.DataGridViewContentAlignment.MiddleLeft;
            dataGridViewCellStyle3.BackColor = System.Drawing.SystemColors.Control;
            dataGridViewCellStyle3.Font = new System.Drawing.Font("Microsoft Sans Serif", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            dataGridViewCellStyle3.ForeColor = System.Drawing.SystemColors.WindowText;
            dataGridViewCellStyle3.SelectionBackColor = System.Drawing.SystemColors.Highlight;
            dataGridViewCellStyle3.SelectionForeColor = System.Drawing.SystemColors.HighlightText;
            dataGridViewCellStyle3.WrapMode = System.Windows.Forms.DataGridViewTriState.True;
            this.tblGiaTour.RowHeadersDefaultCellStyle = dataGridViewCellStyle3;
            this.tblGiaTour.RowHeadersWidth = 30;
            this.tblGiaTour.RowHeadersWidthSizeMode = System.Windows.Forms.DataGridViewRowHeadersWidthSizeMode.DisableResizing;
            dataGridViewCellStyle4.Font = new System.Drawing.Font("Microsoft Sans Serif", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.tblGiaTour.RowsDefaultCellStyle = dataGridViewCellStyle4;
            this.tblGiaTour.SelectionMode = System.Windows.Forms.DataGridViewSelectionMode.FullRowSelect;
            this.tblGiaTour.Size = new System.Drawing.Size(937, 468);
            this.tblGiaTour.TabIndex = 7;
            // 
            // bunifuElipse4
            // 
            this.bunifuElipse4.ElipseRadius = 5;
            this.bunifuElipse4.TargetControl = this.pnlSearch;
            // 
            // pnlSearch
            // 
            this.pnlSearch.BackgroundImage = ((System.Drawing.Image)(resources.GetObject("pnlSearch.BackgroundImage")));
            this.pnlSearch.BackgroundImageLayout = System.Windows.Forms.ImageLayout.Stretch;
            this.pnlSearch.Controls.Add(this.txtSearch);
            this.pnlSearch.Controls.Add(this.panel1);
            this.pnlSearch.GradientBottomLeft = System.Drawing.Color.WhiteSmoke;
            this.pnlSearch.GradientBottomRight = System.Drawing.Color.WhiteSmoke;
            this.pnlSearch.GradientTopLeft = System.Drawing.Color.WhiteSmoke;
            this.pnlSearch.GradientTopRight = System.Drawing.Color.WhiteSmoke;
            this.pnlSearch.Location = new System.Drawing.Point(20, 154);
            this.pnlSearch.Name = "pnlSearch";
            this.pnlSearch.Quality = 10;
            this.pnlSearch.Size = new System.Drawing.Size(479, 35);
            this.pnlSearch.TabIndex = 8;
            // 
            // txtSearch
            // 
            this.txtSearch.BackColor = System.Drawing.Color.WhiteSmoke;
            this.txtSearch.BorderStyle = System.Windows.Forms.BorderStyle.None;
            this.txtSearch.Font = new System.Drawing.Font("Microsoft Sans Serif", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.txtSearch.Location = new System.Drawing.Point(38, 8);
            this.txtSearch.Multiline = true;
            this.txtSearch.Name = "txtSearch";
            this.txtSearch.Size = new System.Drawing.Size(438, 19);
            this.txtSearch.TabIndex = 1;
            this.txtSearch.TextChanged += new System.EventHandler(this.txtSearch_TextChanged);
            // 
            // panel1
            // 
            this.panel1.BackColor = System.Drawing.Color.Transparent;
            this.panel1.BackgroundImage = global::TourDuLich.Win.Properties.Resources.search;
            this.panel1.BackgroundImageLayout = System.Windows.Forms.ImageLayout.Stretch;
            this.panel1.Location = new System.Drawing.Point(4, 5);
            this.panel1.Name = "panel1";
            this.panel1.Size = new System.Drawing.Size(25, 25);
            this.panel1.TabIndex = 0;
            // 
            // tourViewModelBindingSource
            // 
            this.tourViewModelBindingSource.DataSource = typeof(TourDuLich.Service.Commons.TourViewModel);
            // 
            // maTourDataGridViewTextBoxColumn
            // 
            this.maTourDataGridViewTextBoxColumn.DataPropertyName = "MaTour";
            this.maTourDataGridViewTextBoxColumn.FillWeight = 80F;
            this.maTourDataGridViewTextBoxColumn.HeaderText = "Mã Tour";
            this.maTourDataGridViewTextBoxColumn.Name = "maTourDataGridViewTextBoxColumn";
            this.maTourDataGridViewTextBoxColumn.ReadOnly = true;
            // 
            // tenLoaiHinhDataGridViewTextBoxColumn
            // 
            this.tenLoaiHinhDataGridViewTextBoxColumn.DataPropertyName = "TenLoaiHinh";
            this.tenLoaiHinhDataGridViewTextBoxColumn.FillWeight = 120F;
            this.tenLoaiHinhDataGridViewTextBoxColumn.HeaderText = "Loại hình du lịch";
            this.tenLoaiHinhDataGridViewTextBoxColumn.Name = "tenLoaiHinhDataGridViewTextBoxColumn";
            this.tenLoaiHinhDataGridViewTextBoxColumn.ReadOnly = true;
            // 
            // tenTourDataGridViewTextBoxColumn
            // 
            this.tenTourDataGridViewTextBoxColumn.DataPropertyName = "TenTour";
            this.tenTourDataGridViewTextBoxColumn.FillWeight = 150F;
            this.tenTourDataGridViewTextBoxColumn.HeaderText = "Tên Tour";
            this.tenTourDataGridViewTextBoxColumn.Name = "tenTourDataGridViewTextBoxColumn";
            this.tenTourDataGridViewTextBoxColumn.ReadOnly = true;
            // 
            // soNgayDataGridViewTextBoxColumn
            // 
            this.soNgayDataGridViewTextBoxColumn.DataPropertyName = "SoNgay";
            this.soNgayDataGridViewTextBoxColumn.FillWeight = 60F;
            this.soNgayDataGridViewTextBoxColumn.HeaderText = "Số ngày";
            this.soNgayDataGridViewTextBoxColumn.Name = "soNgayDataGridViewTextBoxColumn";
            this.soNgayDataGridViewTextBoxColumn.ReadOnly = true;
            // 
            // soDemDataGridViewTextBoxColumn
            // 
            this.soDemDataGridViewTextBoxColumn.DataPropertyName = "SoDem";
            this.soDemDataGridViewTextBoxColumn.FillWeight = 60F;
            this.soDemDataGridViewTextBoxColumn.HeaderText = "Số đêm";
            this.soDemDataGridViewTextBoxColumn.Name = "soDemDataGridViewTextBoxColumn";
            this.soDemDataGridViewTextBoxColumn.ReadOnly = true;
            // 
            // giaDataGridViewTextBoxColumn
            // 
            this.giaDataGridViewTextBoxColumn.DataPropertyName = "Gia";
            this.giaDataGridViewTextBoxColumn.HeaderText = "Giá tour";
            this.giaDataGridViewTextBoxColumn.Name = "giaDataGridViewTextBoxColumn";
            this.giaDataGridViewTextBoxColumn.ReadOnly = true;
            // 
            // XemGiaTour
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.BackColor = System.Drawing.Color.White;
            this.Controls.Add(this.pnlSearch);
            this.Controls.Add(this.tblGiaTour);
            this.Controls.Add(this.btnKiemTra);
            this.Controls.Add(this.lblDen);
            this.Controls.Add(this.dateTo);
            this.Controls.Add(this.dateFrom);
            this.Controls.Add(this.bunifuCustomLabel1);
            this.Margin = new System.Windows.Forms.Padding(20, 30, 0, 0);
            this.Name = "XemGiaTour";
            this.Size = new System.Drawing.Size(977, 700);
            ((System.ComponentModel.ISupportInitialize)(this.tblGiaTour)).EndInit();
            this.pnlSearch.ResumeLayout(false);
            this.pnlSearch.PerformLayout();
            ((System.ComponentModel.ISupportInitialize)(this.tourViewModelBindingSource)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private Bunifu.Framework.UI.BunifuDragControl bunifuDragControl1;
        private Bunifu.Framework.UI.BunifuCustomLabel bunifuCustomLabel1;
        private Bunifu.Framework.UI.BunifuDatepicker dateTo;
        private Bunifu.Framework.UI.BunifuDatepicker dateFrom;
        private Bunifu.Framework.UI.BunifuCustomLabel lblDen;
        private Bunifu.Framework.UI.BunifuFlatButton btnKiemTra;
        private Bunifu.Framework.UI.BunifuElipse bunifuElipse1;
        private Bunifu.Framework.UI.BunifuElipse bunifuElipse2;
        private Bunifu.Framework.UI.BunifuElipse bunifuElipse3;
        private Bunifu.Framework.UI.BunifuCustomDataGrid tblGiaTour;
        private Bunifu.Framework.UI.BunifuElipse bunifuElipse4;
        private System.Windows.Forms.Panel panel1;
        private System.Windows.Forms.TextBox txtSearch;
        private Bunifu.Framework.UI.BunifuGradientPanel pnlSearch;
        private System.Windows.Forms.BindingSource tourViewModelBindingSource;
        private System.Windows.Forms.DataGridViewTextBoxColumn maTourDataGridViewTextBoxColumn;
        private System.Windows.Forms.DataGridViewTextBoxColumn tenLoaiHinhDataGridViewTextBoxColumn;
        private System.Windows.Forms.DataGridViewTextBoxColumn tenTourDataGridViewTextBoxColumn;
        private System.Windows.Forms.DataGridViewTextBoxColumn soNgayDataGridViewTextBoxColumn;
        private System.Windows.Forms.DataGridViewTextBoxColumn soDemDataGridViewTextBoxColumn;
        private System.Windows.Forms.DataGridViewTextBoxColumn giaDataGridViewTextBoxColumn;
    }
}
