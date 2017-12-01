namespace TourDuLich.Win.Controls
{
    partial class LapDiaDiemTour
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
            System.Windows.Forms.DataGridViewCellStyle dataGridViewCellStyle25 = new System.Windows.Forms.DataGridViewCellStyle();
            System.Windows.Forms.DataGridViewCellStyle dataGridViewCellStyle26 = new System.Windows.Forms.DataGridViewCellStyle();
            System.Windows.Forms.DataGridViewCellStyle dataGridViewCellStyle27 = new System.Windows.Forms.DataGridViewCellStyle();
            System.ComponentModel.ComponentResourceManager resources = new System.ComponentModel.ComponentResourceManager(typeof(LapDiaDiemTour));
            this.bunifuCustomLabel1 = new Bunifu.Framework.UI.BunifuCustomLabel();
            this.bunifuDragControl1 = new Bunifu.Framework.UI.BunifuDragControl(this.components);
            this.btnExit = new Bunifu.Framework.UI.BunifuCustomLabel();
            this.drdTourDuLich = new Bunifu.Framework.UI.BunifuDropdown();
            this.bunifuCustomLabel2 = new Bunifu.Framework.UI.BunifuCustomLabel();
            this.bunifuCustomLabel3 = new Bunifu.Framework.UI.BunifuCustomLabel();
            this.drdTinhThanh = new Bunifu.Framework.UI.BunifuDropdown();
            this.listDiaDiem = new System.Windows.Forms.ListBox();
            this.bunifuCustomLabel4 = new Bunifu.Framework.UI.BunifuCustomLabel();
            this.tblDiaDiem = new Bunifu.Framework.UI.BunifuCustomDataGrid();
            this.IndexDiaDiem = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.TenDiaDiem = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.IndexTinhThanh = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.TenTinhThanh = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.Xoa = new System.Windows.Forms.DataGridViewButtonColumn();
            this.btnXacNhan = new Bunifu.Framework.UI.BunifuFlatButton();
            this.btnAddSelected = new Bunifu.Framework.UI.BunifuFlatButton();
            this.btnCancelAll = new Bunifu.Framework.UI.BunifuFlatButton();
            this.bunifuElipse1 = new Bunifu.Framework.UI.BunifuElipse(this.components);
            this.bunifuElipse2 = new Bunifu.Framework.UI.BunifuElipse(this.components);
            this.lblStatus = new Bunifu.Framework.UI.BunifuCustomLabel();
            ((System.ComponentModel.ISupportInitialize)(this.tblDiaDiem)).BeginInit();
            this.SuspendLayout();
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
            this.bunifuCustomLabel1.Size = new System.Drawing.Size(431, 32);
            this.bunifuCustomLabel1.TabIndex = 1;
            this.bunifuCustomLabel1.Text = "Lập danh sách điểm tham quan";
            this.bunifuCustomLabel1.TextAlign = System.Drawing.ContentAlignment.MiddleCenter;
            // 
            // bunifuDragControl1
            // 
            this.bunifuDragControl1.Fixed = true;
            this.bunifuDragControl1.Horizontal = true;
            this.bunifuDragControl1.TargetControl = this;
            this.bunifuDragControl1.Vertical = true;
            // 
            // btnExit
            // 
            this.btnExit.Location = new System.Drawing.Point(0, 0);
            this.btnExit.Name = "btnExit";
            this.btnExit.Size = new System.Drawing.Size(100, 23);
            this.btnExit.TabIndex = 17;
            // 
            // drdTourDuLich
            // 
            this.drdTourDuLich.BackColor = System.Drawing.Color.Transparent;
            this.drdTourDuLich.BorderRadius = 3;
            this.drdTourDuLich.DisabledColor = System.Drawing.Color.Gray;
            this.drdTourDuLich.Font = new System.Drawing.Font("Microsoft Sans Serif", 9.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.drdTourDuLich.ForeColor = System.Drawing.Color.Black;
            this.drdTourDuLich.Items = new string[0];
            this.drdTourDuLich.Location = new System.Drawing.Point(353, 99);
            this.drdTourDuLich.Margin = new System.Windows.Forms.Padding(20, 10, 0, 0);
            this.drdTourDuLich.Name = "drdTourDuLich";
            this.drdTourDuLich.NomalColor = System.Drawing.Color.WhiteSmoke;
            this.drdTourDuLich.onHoverColor = System.Drawing.Color.WhiteSmoke;
            this.drdTourDuLich.selectedIndex = -1;
            this.drdTourDuLich.Size = new System.Drawing.Size(604, 35);
            this.drdTourDuLich.TabIndex = 6;
            this.drdTourDuLich.onItemSelected += new System.EventHandler(this.drdTourDuLich_OnItemSelected);
            // 
            // bunifuCustomLabel2
            // 
            this.bunifuCustomLabel2.AutoSize = true;
            this.bunifuCustomLabel2.Font = new System.Drawing.Font("Microsoft Sans Serif", 10.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.bunifuCustomLabel2.Location = new System.Drawing.Point(350, 72);
            this.bunifuCustomLabel2.Margin = new System.Windows.Forms.Padding(20, 20, 0, 0);
            this.bunifuCustomLabel2.Name = "bunifuCustomLabel2";
            this.bunifuCustomLabel2.Size = new System.Drawing.Size(115, 17);
            this.bunifuCustomLabel2.TabIndex = 7;
            this.bunifuCustomLabel2.Text = "Chọn tour du lịch";
            // 
            // bunifuCustomLabel3
            // 
            this.bunifuCustomLabel3.AutoSize = true;
            this.bunifuCustomLabel3.Font = new System.Drawing.Font("Microsoft Sans Serif", 10.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.bunifuCustomLabel3.Location = new System.Drawing.Point(23, 72);
            this.bunifuCustomLabel3.Margin = new System.Windows.Forms.Padding(20, 20, 0, 0);
            this.bunifuCustomLabel3.Name = "bunifuCustomLabel3";
            this.bunifuCustomLabel3.Size = new System.Drawing.Size(108, 17);
            this.bunifuCustomLabel3.TabIndex = 8;
            this.bunifuCustomLabel3.Text = "Chọn tỉnh thành";
            // 
            // drdTinhThanh
            // 
            this.drdTinhThanh.BackColor = System.Drawing.Color.Transparent;
            this.drdTinhThanh.BorderRadius = 3;
            this.drdTinhThanh.DisabledColor = System.Drawing.Color.Gray;
            this.drdTinhThanh.Font = new System.Drawing.Font("Microsoft Sans Serif", 9.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.drdTinhThanh.ForeColor = System.Drawing.Color.Black;
            this.drdTinhThanh.Items = new string[0];
            this.drdTinhThanh.Location = new System.Drawing.Point(26, 99);
            this.drdTinhThanh.Margin = new System.Windows.Forms.Padding(20, 10, 0, 0);
            this.drdTinhThanh.Name = "drdTinhThanh";
            this.drdTinhThanh.NomalColor = System.Drawing.Color.WhiteSmoke;
            this.drdTinhThanh.onHoverColor = System.Drawing.Color.WhiteSmoke;
            this.drdTinhThanh.selectedIndex = -1;
            this.drdTinhThanh.Size = new System.Drawing.Size(200, 35);
            this.drdTinhThanh.TabIndex = 9;
            this.drdTinhThanh.onItemSelected += new System.EventHandler(this.drdTinhThanh_OnItemSelected);
            // 
            // listDiaDiem
            // 
            this.listDiaDiem.AllowDrop = true;
            this.listDiaDiem.Font = new System.Drawing.Font("Microsoft Sans Serif", 10.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.listDiaDiem.FormattingEnabled = true;
            this.listDiaDiem.HorizontalScrollbar = true;
            this.listDiaDiem.ItemHeight = 17;
            this.listDiaDiem.Location = new System.Drawing.Point(26, 144);
            this.listDiaDiem.Margin = new System.Windows.Forms.Padding(20, 10, 0, 20);
            this.listDiaDiem.Name = "listDiaDiem";
            this.listDiaDiem.SelectionMode = System.Windows.Forms.SelectionMode.MultiExtended;
            this.listDiaDiem.Size = new System.Drawing.Size(200, 531);
            this.listDiaDiem.TabIndex = 10;
            // 
            // bunifuCustomLabel4
            // 
            this.bunifuCustomLabel4.AutoSize = true;
            this.bunifuCustomLabel4.Font = new System.Drawing.Font("Microsoft Sans Serif", 10.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.bunifuCustomLabel4.Location = new System.Drawing.Point(350, 154);
            this.bunifuCustomLabel4.Margin = new System.Windows.Forms.Padding(20, 20, 0, 0);
            this.bunifuCustomLabel4.Name = "bunifuCustomLabel4";
            this.bunifuCustomLabel4.Size = new System.Drawing.Size(118, 17);
            this.bunifuCustomLabel4.TabIndex = 11;
            this.bunifuCustomLabel4.Text = "Địa điểm đã chọn";
            // 
            // tblDiaDiem
            // 
            this.tblDiaDiem.AllowUserToAddRows = false;
            dataGridViewCellStyle25.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(224)))), ((int)(((byte)(224)))), ((int)(((byte)(224)))));
            this.tblDiaDiem.AlternatingRowsDefaultCellStyle = dataGridViewCellStyle25;
            this.tblDiaDiem.Anchor = ((System.Windows.Forms.AnchorStyles)((((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Bottom) 
            | System.Windows.Forms.AnchorStyles.Left) 
            | System.Windows.Forms.AnchorStyles.Right)));
            this.tblDiaDiem.AutoSizeColumnsMode = System.Windows.Forms.DataGridViewAutoSizeColumnsMode.Fill;
            this.tblDiaDiem.BackgroundColor = System.Drawing.Color.WhiteSmoke;
            this.tblDiaDiem.BorderStyle = System.Windows.Forms.BorderStyle.None;
            this.tblDiaDiem.ColumnHeadersBorderStyle = System.Windows.Forms.DataGridViewHeaderBorderStyle.None;
            dataGridViewCellStyle26.Alignment = System.Windows.Forms.DataGridViewContentAlignment.MiddleLeft;
            dataGridViewCellStyle26.BackColor = System.Drawing.Color.CornflowerBlue;
            dataGridViewCellStyle26.Font = new System.Drawing.Font("Century Gothic", 9F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            dataGridViewCellStyle26.ForeColor = System.Drawing.Color.White;
            dataGridViewCellStyle26.SelectionBackColor = System.Drawing.SystemColors.Highlight;
            dataGridViewCellStyle26.SelectionForeColor = System.Drawing.SystemColors.HighlightText;
            dataGridViewCellStyle26.WrapMode = System.Windows.Forms.DataGridViewTriState.True;
            this.tblDiaDiem.ColumnHeadersDefaultCellStyle = dataGridViewCellStyle26;
            this.tblDiaDiem.ColumnHeadersHeight = 25;
            this.tblDiaDiem.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.DisableResizing;
            this.tblDiaDiem.Columns.AddRange(new System.Windows.Forms.DataGridViewColumn[] {
            this.IndexDiaDiem,
            this.TenDiaDiem,
            this.IndexTinhThanh,
            this.TenTinhThanh,
            this.Xoa});
            this.tblDiaDiem.DoubleBuffered = true;
            this.tblDiaDiem.EditMode = System.Windows.Forms.DataGridViewEditMode.EditOnF2;
            this.tblDiaDiem.EnableHeadersVisualStyles = false;
            this.tblDiaDiem.GridColor = System.Drawing.Color.Gainsboro;
            this.tblDiaDiem.HeaderBgColor = System.Drawing.Color.CornflowerBlue;
            this.tblDiaDiem.HeaderForeColor = System.Drawing.Color.White;
            this.tblDiaDiem.Location = new System.Drawing.Point(353, 181);
            this.tblDiaDiem.Margin = new System.Windows.Forms.Padding(0, 10, 20, 20);
            this.tblDiaDiem.MultiSelect = false;
            this.tblDiaDiem.Name = "tblDiaDiem";
            this.tblDiaDiem.RowHeadersBorderStyle = System.Windows.Forms.DataGridViewHeaderBorderStyle.Single;
            this.tblDiaDiem.RowHeadersWidth = 20;
            dataGridViewCellStyle27.SelectionBackColor = System.Drawing.Color.CornflowerBlue;
            dataGridViewCellStyle27.SelectionForeColor = System.Drawing.Color.White;
            this.tblDiaDiem.RowsDefaultCellStyle = dataGridViewCellStyle27;
            this.tblDiaDiem.SelectionMode = System.Windows.Forms.DataGridViewSelectionMode.FullRowSelect;
            this.tblDiaDiem.Size = new System.Drawing.Size(604, 433);
            this.tblDiaDiem.TabIndex = 13;
            this.tblDiaDiem.CellContentClick += new System.Windows.Forms.DataGridViewCellEventHandler(this.tblDiaDiem_CellContentClick);
            // 
            // IndexDiaDiem
            // 
            this.IndexDiaDiem.HeaderText = "IndexDiaDiem";
            this.IndexDiaDiem.Name = "IndexDiaDiem";
            this.IndexDiaDiem.ReadOnly = true;
            this.IndexDiaDiem.Visible = false;
            // 
            // TenDiaDiem
            // 
            this.TenDiaDiem.FillWeight = 300F;
            this.TenDiaDiem.HeaderText = "Tên địa điểm";
            this.TenDiaDiem.Name = "TenDiaDiem";
            this.TenDiaDiem.ReadOnly = true;
            // 
            // IndexTinhThanh
            // 
            this.IndexTinhThanh.HeaderText = "IndexTinhThanh";
            this.IndexTinhThanh.Name = "IndexTinhThanh";
            this.IndexTinhThanh.ReadOnly = true;
            this.IndexTinhThanh.Visible = false;
            // 
            // TenTinhThanh
            // 
            this.TenTinhThanh.FillWeight = 150F;
            this.TenTinhThanh.HeaderText = "Tên tỉnh thành";
            this.TenTinhThanh.Name = "TenTinhThanh";
            this.TenTinhThanh.ReadOnly = true;
            // 
            // Xoa
            // 
            this.Xoa.FillWeight = 60F;
            this.Xoa.HeaderText = "Xóa";
            this.Xoa.Name = "Xoa";
            this.Xoa.Resizable = System.Windows.Forms.DataGridViewTriState.True;
            this.Xoa.SortMode = System.Windows.Forms.DataGridViewColumnSortMode.Automatic;
            // 
            // btnXacNhan
            // 
            this.btnXacNhan.Activecolor = System.Drawing.Color.RoyalBlue;
            this.btnXacNhan.BackColor = System.Drawing.Color.CornflowerBlue;
            this.btnXacNhan.BackgroundImageLayout = System.Windows.Forms.ImageLayout.Stretch;
            this.btnXacNhan.BorderRadius = 0;
            this.btnXacNhan.ButtonText = "Xác nhận tùy chọn";
            this.btnXacNhan.Cursor = System.Windows.Forms.Cursors.Hand;
            this.btnXacNhan.DisabledColor = System.Drawing.Color.Gray;
            this.btnXacNhan.Iconcolor = System.Drawing.Color.Transparent;
            this.btnXacNhan.Iconimage = ((System.Drawing.Image)(resources.GetObject("btnXacNhan.Iconimage")));
            this.btnXacNhan.Iconimage_right = null;
            this.btnXacNhan.Iconimage_right_Selected = null;
            this.btnXacNhan.Iconimage_Selected = null;
            this.btnXacNhan.IconMarginLeft = 0;
            this.btnXacNhan.IconMarginRight = 0;
            this.btnXacNhan.IconRightVisible = true;
            this.btnXacNhan.IconRightZoom = 0D;
            this.btnXacNhan.IconVisible = true;
            this.btnXacNhan.IconZoom = 90D;
            this.btnXacNhan.IsTab = false;
            this.btnXacNhan.Location = new System.Drawing.Point(766, 637);
            this.btnXacNhan.Name = "btnXacNhan";
            this.btnXacNhan.Normalcolor = System.Drawing.Color.CornflowerBlue;
            this.btnXacNhan.OnHovercolor = System.Drawing.Color.LightSteelBlue;
            this.btnXacNhan.OnHoverTextColor = System.Drawing.Color.White;
            this.btnXacNhan.selected = false;
            this.btnXacNhan.Size = new System.Drawing.Size(191, 44);
            this.btnXacNhan.TabIndex = 14;
            this.btnXacNhan.Text = "Xác nhận tùy chọn";
            this.btnXacNhan.TextAlign = System.Drawing.ContentAlignment.MiddleLeft;
            this.btnXacNhan.Textcolor = System.Drawing.Color.White;
            this.btnXacNhan.TextFont = new System.Drawing.Font("Microsoft Sans Serif", 10.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.btnXacNhan.Click += new System.EventHandler(this.btnXacNhan_Click);
            // 
            // btnAddSelected
            // 
            this.btnAddSelected.Activecolor = System.Drawing.Color.RoyalBlue;
            this.btnAddSelected.BackColor = System.Drawing.Color.CornflowerBlue;
            this.btnAddSelected.BackgroundImageLayout = System.Windows.Forms.ImageLayout.Center;
            this.btnAddSelected.BorderRadius = 0;
            this.btnAddSelected.ButtonText = "Add Selected";
            this.btnAddSelected.Cursor = System.Windows.Forms.Cursors.Hand;
            this.btnAddSelected.DisabledColor = System.Drawing.Color.Gray;
            this.btnAddSelected.Iconcolor = System.Drawing.Color.Transparent;
            this.btnAddSelected.Iconimage = null;
            this.btnAddSelected.Iconimage_right = null;
            this.btnAddSelected.Iconimage_right_Selected = null;
            this.btnAddSelected.Iconimage_Selected = null;
            this.btnAddSelected.IconMarginLeft = 0;
            this.btnAddSelected.IconMarginRight = 0;
            this.btnAddSelected.IconRightVisible = true;
            this.btnAddSelected.IconRightZoom = 0D;
            this.btnAddSelected.IconVisible = true;
            this.btnAddSelected.IconZoom = 90D;
            this.btnAddSelected.IsTab = false;
            this.btnAddSelected.Location = new System.Drawing.Point(236, 313);
            this.btnAddSelected.Margin = new System.Windows.Forms.Padding(10);
            this.btnAddSelected.Name = "btnAddSelected";
            this.btnAddSelected.Normalcolor = System.Drawing.Color.CornflowerBlue;
            this.btnAddSelected.OnHovercolor = System.Drawing.Color.LightSteelBlue;
            this.btnAddSelected.OnHoverTextColor = System.Drawing.Color.White;
            this.btnAddSelected.selected = false;
            this.btnAddSelected.Size = new System.Drawing.Size(107, 34);
            this.btnAddSelected.TabIndex = 15;
            this.btnAddSelected.Text = "Add Selected";
            this.btnAddSelected.TextAlign = System.Drawing.ContentAlignment.MiddleCenter;
            this.btnAddSelected.Textcolor = System.Drawing.Color.White;
            this.btnAddSelected.TextFont = new System.Drawing.Font("Microsoft Sans Serif", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.btnAddSelected.Click += new System.EventHandler(this.btnAddSelected_Click);
            // 
            // btnCancelAll
            // 
            this.btnCancelAll.Activecolor = System.Drawing.Color.RoyalBlue;
            this.btnCancelAll.BackColor = System.Drawing.Color.CornflowerBlue;
            this.btnCancelAll.BackgroundImageLayout = System.Windows.Forms.ImageLayout.Center;
            this.btnCancelAll.BorderRadius = 0;
            this.btnCancelAll.ButtonText = "Cancel All";
            this.btnCancelAll.Cursor = System.Windows.Forms.Cursors.Hand;
            this.btnCancelAll.DisabledColor = System.Drawing.Color.Gray;
            this.btnCancelAll.Iconcolor = System.Drawing.Color.Transparent;
            this.btnCancelAll.Iconimage = null;
            this.btnCancelAll.Iconimage_right = null;
            this.btnCancelAll.Iconimage_right_Selected = null;
            this.btnCancelAll.Iconimage_Selected = null;
            this.btnCancelAll.IconMarginLeft = 0;
            this.btnCancelAll.IconMarginRight = 0;
            this.btnCancelAll.IconRightVisible = true;
            this.btnCancelAll.IconRightZoom = 0D;
            this.btnCancelAll.IconVisible = true;
            this.btnCancelAll.IconZoom = 90D;
            this.btnCancelAll.IsTab = false;
            this.btnCancelAll.Location = new System.Drawing.Point(236, 367);
            this.btnCancelAll.Margin = new System.Windows.Forms.Padding(10);
            this.btnCancelAll.Name = "btnCancelAll";
            this.btnCancelAll.Normalcolor = System.Drawing.Color.CornflowerBlue;
            this.btnCancelAll.OnHovercolor = System.Drawing.Color.LightSteelBlue;
            this.btnCancelAll.OnHoverTextColor = System.Drawing.Color.White;
            this.btnCancelAll.selected = false;
            this.btnCancelAll.Size = new System.Drawing.Size(107, 34);
            this.btnCancelAll.TabIndex = 16;
            this.btnCancelAll.Text = "Cancel All";
            this.btnCancelAll.TextAlign = System.Drawing.ContentAlignment.MiddleCenter;
            this.btnCancelAll.Textcolor = System.Drawing.Color.White;
            this.btnCancelAll.TextFont = new System.Drawing.Font("Microsoft Sans Serif", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.btnCancelAll.Click += new System.EventHandler(this.btnCancelAll_Click);
            // 
            // bunifuElipse1
            // 
            this.bunifuElipse1.ElipseRadius = 5;
            this.bunifuElipse1.TargetControl = this.btnAddSelected;
            // 
            // bunifuElipse2
            // 
            this.bunifuElipse2.ElipseRadius = 5;
            this.bunifuElipse2.TargetControl = this.btnCancelAll;
            // 
            // lblStatus
            // 
            this.lblStatus.AutoSize = true;
            this.lblStatus.Font = new System.Drawing.Font("Microsoft Sans Serif", 10.75F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.lblStatus.ForeColor = System.Drawing.Color.ForestGreen;
            this.lblStatus.Location = new System.Drawing.Point(350, 649);
            this.lblStatus.Margin = new System.Windows.Forms.Padding(20, 15, 0, 0);
            this.lblStatus.Name = "lblStatus";
            this.lblStatus.Size = new System.Drawing.Size(0, 18);
            this.lblStatus.TabIndex = 18;
            // 
            // LapDiaDiemTour
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.BackColor = System.Drawing.SystemColors.ButtonHighlight;
            this.Controls.Add(this.lblStatus);
            this.Controls.Add(this.btnCancelAll);
            this.Controls.Add(this.btnAddSelected);
            this.Controls.Add(this.btnXacNhan);
            this.Controls.Add(this.tblDiaDiem);
            this.Controls.Add(this.bunifuCustomLabel4);
            this.Controls.Add(this.listDiaDiem);
            this.Controls.Add(this.drdTinhThanh);
            this.Controls.Add(this.bunifuCustomLabel3);
            this.Controls.Add(this.bunifuCustomLabel2);
            this.Controls.Add(this.drdTourDuLich);
            this.Controls.Add(this.btnExit);
            this.Controls.Add(this.bunifuCustomLabel1);
            this.Name = "LapDiaDiemTour";
            this.Size = new System.Drawing.Size(977, 700);
            ((System.ComponentModel.ISupportInitialize)(this.tblDiaDiem)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private Bunifu.Framework.UI.BunifuCustomLabel bunifuCustomLabel1;
        private Bunifu.Framework.UI.BunifuDragControl bunifuDragControl1;
        private Bunifu.Framework.UI.BunifuCustomLabel btnExit;
        private Bunifu.Framework.UI.BunifuDropdown drdTourDuLich;
        private Bunifu.Framework.UI.BunifuCustomLabel bunifuCustomLabel2;
        private Bunifu.Framework.UI.BunifuCustomLabel bunifuCustomLabel3;
        private Bunifu.Framework.UI.BunifuDropdown drdTinhThanh;
        private System.Windows.Forms.ListBox listDiaDiem;
        private Bunifu.Framework.UI.BunifuCustomLabel bunifuCustomLabel4;
        private Bunifu.Framework.UI.BunifuCustomDataGrid tblDiaDiem;
        private Bunifu.Framework.UI.BunifuFlatButton btnXacNhan;
        private Bunifu.Framework.UI.BunifuFlatButton btnCancelAll;
        private Bunifu.Framework.UI.BunifuFlatButton btnAddSelected;
        private Bunifu.Framework.UI.BunifuElipse bunifuElipse1;
        private Bunifu.Framework.UI.BunifuElipse bunifuElipse2;
        private System.Windows.Forms.DataGridViewTextBoxColumn IndexDiaDiem;
        private System.Windows.Forms.DataGridViewTextBoxColumn TenDiaDiem;
        private System.Windows.Forms.DataGridViewTextBoxColumn IndexTinhThanh;
        private System.Windows.Forms.DataGridViewTextBoxColumn TenTinhThanh;
        private System.Windows.Forms.DataGridViewButtonColumn Xoa;
        private Bunifu.Framework.UI.BunifuCustomLabel lblStatus;
    }
}
