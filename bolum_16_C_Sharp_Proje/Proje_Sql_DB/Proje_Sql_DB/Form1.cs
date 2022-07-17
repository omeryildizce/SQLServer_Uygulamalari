using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Data.SqlClient;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace Proje_Sql_DB
{
    public partial class Form1 : Form
    {
        public Form1()
        {
            InitializeComponent();
        }
        SqlConnection baglanti = new SqlConnection(@"Data Source=localhost;Initial Catalog=Satis;Integrated Security=True");

        private void btnKategori_Click(object sender, EventArgs e)
        {
            FrmKategoriler frm = new FrmKategoriler();
            frm.Show();
           
        }

        private void btnMusteriler_Click(object sender, EventArgs e)
        {
            FrmMusteri frm = new FrmMusteri();
            frm.Show();
        }

        private void Form1_Load(object sender, EventArgs e)
        {
            UrunStok();
            Chart_Veri();
            Chart_veri_2();
        }

        private void Chart_veri_2()
        {
            baglanti.Open();
            SqlCommand command = new SqlCommand("select * from kategori_view", baglanti);
            SqlDataReader dataReader = command.ExecuteReader();
            while (dataReader.Read())
            {
                chart2.Series["Kategoriler"].Points.AddXY(dataReader[0], dataReader[1]);
            }
            baglanti.Close();
        }

        private void Chart_Veri()
        {
            baglanti.Open();
            SqlCommand command = new SqlCommand("select * from kategori_view", baglanti);
            SqlDataReader dataReader = command.ExecuteReader();
            while (dataReader.Read())
            {
                chart1.Series["Kategoriler"].Points.AddXY(dataReader[0], dataReader[1]);
            }
            baglanti.Close();
        }

        private void UrunStok()
        {
            SqlCommand command = new SqlCommand("Execute test4", baglanti);
            SqlDataAdapter da = new SqlDataAdapter(command);
            DataTable dataTable = new DataTable();
            da.Fill(dataTable);
            dataGridView1.DataSource = dataTable;
        }
    }
}
