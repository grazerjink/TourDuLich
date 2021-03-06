﻿namespace TourDuLich.Win.Controls
{
    partial class DoanhThu
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
            System.Windows.Forms.DataVisualization.Charting.ChartArea chartArea2 = new System.Windows.Forms.DataVisualization.Charting.ChartArea();
            System.Windows.Forms.DataVisualization.Charting.Legend legend2 = new System.Windows.Forms.DataVisualization.Charting.Legend();
            this.bunifuDragControl1 = new Bunifu.Framework.UI.BunifuDragControl(this.components);
            this.bunifuCustomLabel1 = new Bunifu.Framework.UI.BunifuCustomLabel();
            this.chartDoanhThu = new System.Windows.Forms.DataVisualization.Charting.Chart();
            this.btnKiemTra = new Bunifu.Framework.UI.BunifuFlatButton();
            this.lblDen = new Bunifu.Framework.UI.BunifuCustomLabel();
            this.dateTo = new Bunifu.Framework.UI.BunifuDatepicker();
            this.dateFrom = new Bunifu.Framework.UI.BunifuDatepicker();
            this.bunifuElipse1 = new Bunifu.Framework.UI.BunifuElipse(this.components);
            this.bunifuElipse2 = new Bunifu.Framework.UI.BunifuElipse(this.components);
            this.bunifuElipse3 = new Bunifu.Framework.UI.BunifuElipse(this.components);
            this.bunifuCustomLabel2 = new Bunifu.Framework.UI.BunifuCustomLabel();
            this.listTour = new System.Windows.Forms.ListBox();
            this.bunifuCustomLabel3 = new Bunifu.Framework.UI.BunifuCustomLabel();
            ((System.ComponentModel.ISupportInitialize)(this.chartDoanhThu)).BeginInit();
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
            this.bunifuCustomLabel1.Size = new System.Drawing.Size(281, 32);
            this.bunifuCustomLabel1.TabIndex = 2;
            this.bunifuCustomLabel1.Text = "Thống kê doanh thu";
            this.bunifuCustomLabel1.TextAlign = System.Drawing.ContentAlignment.MiddleCenter;
            // 
            // chartDoanhThu
            // 
            this.chartDoanhThu.BackSecondaryColor = System.Drawing.Color.White;
            this.chartDoanhThu.BorderlineDashStyle = System.Windows.Forms.DataVisualization.Charting.ChartDashStyle.DashDot;
            this.chartDoanhThu.BorderlineWidth = 3;
            chartArea2.Name = "ChartDoanhThu";
            this.chartDoanhThu.ChartAreas.Add(chartArea2);
            legend2.Name = "legendTour";
            legend2.Title = "Danh sách tour";
            this.chartDoanhThu.Legends.Add(legend2);
            this.chartDoanhThu.Location = new System.Drawing.Point(20, 112);
            this.chartDoanhThu.Margin = new System.Windows.Forms.Padding(20);
            this.chartDoanhThu.Name = "chartDoanhThu";
            this.chartDoanhThu.Palette = System.Windows.Forms.DataVisualization.Charting.ChartColorPalette.SemiTransparent;
            this.chartDoanhThu.Size = new System.Drawing.Size(644, 568);
            this.chartDoanhThu.TabIndex = 3;
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
            this.btnKiemTra.Location = new System.Drawing.Point(857, 645);
            this.btnKiemTra.Margin = new System.Windows.Forms.Padding(20, 20, 0, 0);
            this.btnKiemTra.Name = "btnKiemTra";
            this.btnKiemTra.Normalcolor = System.Drawing.Color.CornflowerBlue;
            this.btnKiemTra.OnHovercolor = System.Drawing.Color.RoyalBlue;
            this.btnKiemTra.OnHoverTextColor = System.Drawing.Color.White;
            this.btnKiemTra.selected = false;
            this.btnKiemTra.Size = new System.Drawing.Size(100, 35);
            this.btnKiemTra.TabIndex = 10;
            this.btnKiemTra.Text = "Kiểm tra";
            this.btnKiemTra.TextAlign = System.Drawing.ContentAlignment.MiddleCenter;
            this.btnKiemTra.Textcolor = System.Drawing.Color.White;
            this.btnKiemTra.TextFont = new System.Drawing.Font("Microsoft Sans Serif", 10.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.btnKiemTra.Click += new System.EventHandler(this.btnKiemTra_Click);
            // 
            // lblDen
            // 
            this.lblDen.AutoSize = true;
            this.lblDen.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.lblDen.Location = new System.Drawing.Point(700, 144);
            this.lblDen.Margin = new System.Windows.Forms.Padding(20, 20, 0, 0);
            this.lblDen.Name = "lblDen";
            this.lblDen.Size = new System.Drawing.Size(39, 20);
            this.lblDen.TabIndex = 9;
            this.lblDen.Text = "Đến";
            // 
            // dateTo
            // 
            this.dateTo.BackColor = System.Drawing.Color.WhiteSmoke;
            this.dateTo.BorderRadius = 0;
            this.dateTo.Font = new System.Drawing.Font("Microsoft Sans Serif", 9.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.dateTo.ForeColor = System.Drawing.Color.Black;
            this.dateTo.Format = System.Windows.Forms.DateTimePickerFormat.Custom;
            this.dateTo.FormatCustom = "dd / MM / yyyy";
            this.dateTo.Location = new System.Drawing.Point(757, 136);
            this.dateTo.Margin = new System.Windows.Forms.Padding(20, 20, 20, 0);
            this.dateTo.Name = "dateTo";
            this.dateTo.Size = new System.Drawing.Size(200, 35);
            this.dateTo.TabIndex = 8;
            this.dateTo.Value = new System.DateTime(2017, 12, 13, 0, 0, 0, 0);
            // 
            // dateFrom
            // 
            this.dateFrom.BackColor = System.Drawing.Color.WhiteSmoke;
            this.dateFrom.BorderRadius = 0;
            this.dateFrom.Font = new System.Drawing.Font("Microsoft Sans Serif", 9.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.dateFrom.ForeColor = System.Drawing.Color.Black;
            this.dateFrom.Format = System.Windows.Forms.DateTimePickerFormat.Custom;
            this.dateFrom.FormatCustom = "dd / MM / yyyy";
            this.dateFrom.Location = new System.Drawing.Point(757, 81);
            this.dateFrom.Margin = new System.Windows.Forms.Padding(20, 20, 0, 0);
            this.dateFrom.Name = "dateFrom";
            this.dateFrom.Size = new System.Drawing.Size(200, 35);
            this.dateFrom.TabIndex = 7;
            this.dateFrom.Value = new System.DateTime(2017, 12, 1, 17, 0, 1, 0);
            // 
            // bunifuElipse1
            // 
            this.bunifuElipse1.ElipseRadius = 5;
            this.bunifuElipse1.TargetControl = this.dateFrom;
            // 
            // bunifuElipse2
            // 
            this.bunifuElipse2.ElipseRadius = 5;
            this.bunifuElipse2.TargetControl = this.dateTo;
            // 
            // bunifuElipse3
            // 
            this.bunifuElipse3.ElipseRadius = 5;
            this.bunifuElipse3.TargetControl = this.btnKiemTra;
            // 
            // bunifuCustomLabel2
            // 
            this.bunifuCustomLabel2.AutoSize = true;
            this.bunifuCustomLabel2.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.bunifuCustomLabel2.Location = new System.Drawing.Point(700, 88);
            this.bunifuCustomLabel2.Margin = new System.Windows.Forms.Padding(20, 20, 0, 0);
            this.bunifuCustomLabel2.Name = "bunifuCustomLabel2";
            this.bunifuCustomLabel2.Size = new System.Drawing.Size(27, 20);
            this.bunifuCustomLabel2.TabIndex = 11;
            this.bunifuCustomLabel2.Text = "Từ";
            // 
            // listTour
            // 
            this.listTour.Font = new System.Drawing.Font("Microsoft Sans Serif", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.listTour.FormattingEnabled = true;
            this.listTour.ItemHeight = 16;
            this.listTour.Location = new System.Drawing.Point(704, 200);
            this.listTour.Margin = new System.Windows.Forms.Padding(20, 20, 20, 0);
            this.listTour.Name = "listTour";
            this.listTour.SelectionMode = System.Windows.Forms.SelectionMode.MultiExtended;
            this.listTour.Size = new System.Drawing.Size(253, 420);
            this.listTour.TabIndex = 12;
            // 
            // bunifuCustomLabel3
            // 
            this.bunifuCustomLabel3.AutoSize = true;
            this.bunifuCustomLabel3.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.bunifuCustomLabel3.Location = new System.Drawing.Point(22, 72);
            this.bunifuCustomLabel3.Margin = new System.Windows.Forms.Padding(20, 20, 0, 0);
            this.bunifuCustomLabel3.Name = "bunifuCustomLabel3";
            this.bunifuCustomLabel3.Size = new System.Drawing.Size(323, 20);
            this.bunifuCustomLabel3.TabIndex = 13;
            this.bunifuCustomLabel3.Text = "Biểu đồ doanh thu của tour theo mỗi giá tour";
            // 
            // DoanhThu
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.BackColor = System.Drawing.Color.White;
            this.Controls.Add(this.bunifuCustomLabel3);
            this.Controls.Add(this.listTour);
            this.Controls.Add(this.bunifuCustomLabel2);
            this.Controls.Add(this.btnKiemTra);
            this.Controls.Add(this.lblDen);
            this.Controls.Add(this.dateTo);
            this.Controls.Add(this.dateFrom);
            this.Controls.Add(this.chartDoanhThu);
            this.Controls.Add(this.bunifuCustomLabel1);
            this.Name = "DoanhThu";
            this.Size = new System.Drawing.Size(977, 700);
            ((System.ComponentModel.ISupportInitialize)(this.chartDoanhThu)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private Bunifu.Framework.UI.BunifuDragControl bunifuDragControl1;
        private Bunifu.Framework.UI.BunifuCustomLabel bunifuCustomLabel1;
        private System.Windows.Forms.DataVisualization.Charting.Chart chartDoanhThu;
        private Bunifu.Framework.UI.BunifuFlatButton btnKiemTra;
        private Bunifu.Framework.UI.BunifuCustomLabel lblDen;
        private Bunifu.Framework.UI.BunifuDatepicker dateTo;
        private Bunifu.Framework.UI.BunifuDatepicker dateFrom;
        private Bunifu.Framework.UI.BunifuElipse bunifuElipse1;
        private Bunifu.Framework.UI.BunifuElipse bunifuElipse2;
        private Bunifu.Framework.UI.BunifuElipse bunifuElipse3;
        private Bunifu.Framework.UI.BunifuCustomLabel bunifuCustomLabel2;
        private System.Windows.Forms.ListBox listTour;
        private Bunifu.Framework.UI.BunifuCustomLabel bunifuCustomLabel3;
    }
}
