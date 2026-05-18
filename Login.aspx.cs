using System;

namespace WebApplication4
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            // تحقق بسيط من اسم المستخدم وكلمة المرور
            string kullanici = txtKullaniciAdi.Text;
            string sifre = txtSifre.Text;

            if (kullanici == "admin" && sifre == "1234")
            {
                // الانتقال إلى الصفحة الرئيسية بعد تسجيل الدخول
                Response.Redirect("anasayfa.aspx");
            }
            else
            {
                // رسالة تنبيه في حال خطأ
                ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('Kullanıcı adı veya şifre hatalı!');", true);
            }
        }
    }
}
