using System;
using System.Text;
using System.Net.Http;
using System.Net.Http.Headers;

namespace SampleCRUD
{
    public partial class WebForm1 : System.Web.UI.Page
    {

        private string CreateUser(string baseUrl, string apiKey, string postData)
        {
            var fullUrl = baseUrl + "/api/v1/users?activate=true";
            try
            {
                using (var client = new HttpClient())
                {
                    var request = new HttpRequestMessage
                    {
                        Method = HttpMethod.Post,
                        RequestUri = new Uri(fullUrl)
                    };
                    request.Headers.Accept.Add(new MediaTypeWithQualityHeaderValue("application/json"));
                    request.Headers.Authorization = new AuthenticationHeaderValue("SSWS", apiKey);
                    request.Content = new StringContent(postData, Encoding.UTF8, "application/json");
                    var response = client.SendAsync(request);
                    return response.Result.Content.ReadAsStringAsync().Result;
                }
            }
            catch (Exception ex)
            {
                return ex.Message;
            }
        }
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
                string rawString = TextBox4.Text;
                string replacedFirstString = rawString.Replace("{{firstname}}", TextBox1.Text);
                string replacedLastString = replacedFirstString.Replace("{{lastname}}", TextBox2.Text);
                string replacedEmailString = replacedLastString.Replace("{{email}}", TextBox3.Text);
                TextBox5.Text = CreateUser(TextBox6.Text, TextBox7.Text, replacedEmailString);
            }
            catch (Exception ex)
            {
                TextBox5.Text = ex.Message;
            }
        }
    }
}