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
    public partial class FrmMusteri : Form
    {
        SqlConnection baglanti = new SqlConnection(@"Data Source=localhost;Initial Catalog=Satis;Integrated Security=True");
        public FrmMusteri()
        {
            InitializeComponent();
        }

        private void dataGridView1_CellClick(object sender, DataGridViewCellEventArgs e)
        {
            txtid.Text = dataGridView1.Rows[e.RowIndex].Cells[0].Value.ToString();
            txtAd.Text = dataGridView1.Rows[e.RowIndex].Cells[1].Value.ToString();
            cbxSehir.Text = dataGridView1.Rows[e.RowIndex].Cells[3].Value.ToString();
            txtSoyad.Text = dataGridView1.Rows[e.RowIndex].Cells[2].Value.ToString();
            txtBakiye.Text = dataGridView1.Rows[e.RowIndex].Cells[4].Value.ToString();
        }

        private void FrmMusteri_Load(object sender, EventArgs e)
        {
            Listele();
            Sehir();
        }

        private void Sehir()
        {
            baglanti.Open();
            SqlCommand cmd = new SqlCommand("select * from City", baglanti);
            SqlDataReader read = cmd.ExecuteReader();
            while (read.Read())
            {
                cbxSehir.Items.Add(read["Sehir"]);
            }
            baglanti.Close();
        }

        private void Listele()
        {
            SqlCommand cmd = new SqlCommand("select * from Musteri", baglanti);
            SqlDataAdapter sqlDataAdapter = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            sqlDataAdapter.Fill(dt);
            dataGridView1.DataSource = dt;
        }

        private void btnKaydet_Click(object sender, EventArgs e)
        {
            baglanti.Open();
            SqlCommand cmd = new SqlCommand("insert into Musteri ( MusteriAd, MusteriSoyad, MusteriSehir, MusteriBakiye) values (@p1,@p2,@p3,@p4)", baglanti);
            cmd.Parameters.AddWithValue("@p1", txtAd.Text);
            cmd.Parameters.AddWithValue("@p2", txtSoyad.Text);
            cmd.Parameters.AddWithValue("@p3", cbxSehir.Text);
            cmd.Parameters.AddWithValue("@p4", decimal.Parse(txtBakiye.Text));

            cmd.ExecuteNonQuery();
            baglanti.Close();
            Listele();
            Clear();

        }

        private void Clear()
        {
            txtid.Clear();
            txtAd.Clear();
            txtSoyad.Clear();
            txtBakiye.Clear();
            Sehir();
        }

        private void btnGuncelle_Click(object sender, EventArgs e)
        {
            baglanti.Open(); 

            SqlCommand cmd = new SqlCommand("update Musteri set MusteriAd = @p1, MusteriSoyad = @p2, MusteriSehir = @p3, MusteriBakiye =@p4 where MusteriId =@p5", baglanti);
            cmd.Parameters.AddWithValue("@p1", txtAd.Text);
            cmd.Parameters.AddWithValue("@p2", txtSoyad.Text);
            cmd.Parameters.AddWithValue("@p3", cbxSehir.Text);
            cmd.Parameters.AddWithValue("@p4", decimal.Parse(txtBakiye.Text));
            cmd.Parameters.AddWithValue("@p5", txtid.Text);

            cmd.ExecuteNonQuery();
            baglanti.Close();
            Listele();
            Clear();
        }

        private void btnSil_Click(object sender, EventArgs e)
        {
            baglanti.Open();
            SqlCommand cmd = new SqlCommand("delete from Musteri where MusteriId = @p1", baglanti);
            cmd.Parameters.AddWithValue("@p1", txtid.Text);
            cmd.ExecuteNonQuery();
            baglanti.Close();
            Listele();
            Clear(); 
           
        }

        private void btnAra_Click(object sender, EventArgs e)
        { 
            SqlCommand cmd = new SqlCommand("select * from Musteri where MusteriAd = '@p1'", baglanti);
            cmd.Parameters.AddWithValue("@p1", txtAd.Text);
            SqlDataAdapter sqlDataAdapter = new SqlDataAdapter(cmd);
            DataTable dataTable = new DataTable();
            sqlDataAdapter.Fill(dataTable);
            dataGridView1.DataSource = dataTable;
            
            Clear(); 
        }

        private void groupBox1_Enter(object sender, EventArgs e)
        {

        }
    }
}

 