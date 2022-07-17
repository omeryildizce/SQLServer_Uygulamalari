using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using System.Data.SqlClient;
namespace Proje_Sql_DB
{
    public partial class FrmKategoriler : Form
    {
        // Data Source=localhost;Initial Catalog=Satis;Integrated Security=True
        public FrmKategoriler()
        {
            InitializeComponent();
           
        }
        SqlConnection baglanti = new SqlConnection(@"Data Source=localhost;Initial Catalog=Satis;Integrated Security=True");
        private void btnListele_Click(object sender, EventArgs e)
        {
            Listele();
        }

        private void Listele()
        {
            SqlCommand cmd = new SqlCommand("select * from Kategori", baglanti);
            SqlDataAdapter sqlDataAdapter = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            sqlDataAdapter.Fill(dt);
            dataGridView1.DataSource = dt;
        }

        private void btnKaydet_Click(object sender, EventArgs e)
        {
            baglanti.Open();
            SqlCommand cmd = new SqlCommand("insert into kategori (kategoriad) values (@p1)", baglanti);
            cmd.Parameters.AddWithValue("@p1", txtKategoriAd.Text);
            cmd.ExecuteNonQuery();
            baglanti.Close();
            Listele();
            txtKategoriAd.Clear();
            txtKategoriId.Clear();
        }

        private void dataGridView1_CellClick(object sender, DataGridViewCellEventArgs e)
        {
            txtKategoriId.Text = dataGridView1.Rows[e.RowIndex].Cells[0].Value.ToString();
            txtKategoriAd.Text = dataGridView1.Rows[e.RowIndex].Cells[1].Value.ToString();
        }

        private void btnSil_Click(object sender, EventArgs e)
        {
            baglanti.Open();
            SqlCommand cmd = new SqlCommand("delete from kategori where KategoriId = @p1", baglanti);
            cmd.Parameters.AddWithValue("@p1", txtKategoriId.Text);
            cmd.ExecuteNonQuery();
            baglanti.Close();
            Listele();
            txtKategoriAd.Clear();
            txtKategoriId.Clear();
        }

        private void btnGuncelle_Click(object sender, EventArgs e)
        {
            baglanti.Open();
            SqlCommand cmd = new SqlCommand("update kategori set KategoriAd = @p1 where KategoriId = @p2", baglanti);
            cmd.Parameters.AddWithValue("@p2", txtKategoriId.Text);
            cmd.Parameters.AddWithValue("@p1", txtKategoriAd.Text);
            
            cmd.ExecuteNonQuery();
            baglanti.Close();
            Listele();
            txtKategoriAd.Clear();
            txtKategoriId.Clear();
        }

        private void FrmKategoriler_Load(object sender, EventArgs e)
        {
            Listele();
            
        }
    }
}
