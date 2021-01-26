using System;
using System.Text;
using System.Net.Http;
using System.Net.Http.Headers;
using System.Net;
using System.IO;
using Newtonsoft.Json;

namespace SampleCRUD
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        private string GetUserId(string baseUrl, string apiKey, string userName)
        {
            var fullUrl = baseUrl + "/api/v1/users/" + userName;
            try
            {
                var endpoint = new Uri(fullUrl);
                var webRequest = WebRequest.Create(endpoint) as HttpWebRequest;
                if (webRequest != null)
                {
                    webRequest.Method = "GET";
                    webRequest.Headers.Add("Authorization", "SSWS " + apiKey);
                    webRequest.Accept = "application/json";
                    webRequest.ContentType = "application/json";
                    var response = webRequest.GetResponse();
                    using (var reader = new StreamReader(response.GetResponseStream()))
                    {
                        string jsonString = reader.ReadToEnd();
                        dynamic jsonObject = JsonConvert.DeserializeObject(jsonString, typeof(object));
                        return jsonObject.id;
                    }
                }
            }
            catch (Exception ex)
            {
                return ex.Message;
            }
            return "";
        }
        private string PostWithData(string fullUrl, string apiKey, string postData)
        {
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
        private string PostNoData(string fullUrl, string apiKey)
        {
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
                    var response = client.SendAsync(request);
                    return response.Result.Content.ReadAsStringAsync().Result;
                }
            }
            catch (Exception ex)
            {
                return ex.Message;
            }
        }
        private string DeleteUser(string fullUrl, string apiKey)
        {
            try
            {
                using (var client = new HttpClient())
                {
                    var request = new HttpRequestMessage
                    {
                        Method = HttpMethod.Delete,
                        RequestUri = new Uri(fullUrl)
                    };
                    request.Headers.Accept.Add(new MediaTypeWithQualityHeaderValue("application/json"));
                    request.Headers.Authorization = new AuthenticationHeaderValue("SSWS", apiKey);
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
                string fullUrl = TextBox6.Text + TextBox29.Text;
                string rawString = TextBox4.Text;
                string replacedFirstString = rawString.Replace("{{firstname}}", TextBox1.Text);
                string replacedLastString = replacedFirstString.Replace("{{lastname}}", TextBox2.Text);
                string replacedEmailString = replacedLastString.Replace("{{email}}", TextBox3.Text);
                TextBox5.Text = PostWithData(fullUrl, TextBox7.Text, replacedEmailString);
            }
            catch (Exception ex)
            {
                TextBox5.Text = ex.Message;
            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            string userId = GetUserId(TextBox6.Text, TextBox7.Text, TextBox8.Text);
            string fullUrl = TextBox6.Text + $"/api/v1/users/{userId}/lifecycle/reset_password?sendEmail=true";
            TextBox12.Text = PostNoData(fullUrl, TextBox7.Text);
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            string userId = GetUserId(TextBox6.Text, TextBox7.Text, TextBox16.Text);
            string fullUrl = TextBox6.Text + $"/api/v1/users/{userId}/credentials/forgot_password";
            TextBox13.Text = PostNoData(fullUrl, TextBox7.Text);
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            string rawString = TextBox28.Text;
            string oldString = rawString.Replace("{{oldPwd}}", TextBox20.Text);
            string newString = oldString.Replace("{{newPwd}}", TextBox21.Text);
            string userId = GetUserId(TextBox6.Text, TextBox7.Text, TextBox19.Text);
            string fullUrl = TextBox6.Text + $"/api/v1/users/{userId}/credentials/change_password";
            TextBox22.Text = PostWithData(fullUrl, TextBox7.Text, newString);
        }

        protected void Button5_Click(object sender, EventArgs e)
        {
            string rawString = TextBox30.Text;
            string newString = rawString.Replace("{{newPwd}}", TextBox25.Text);
            string userId = GetUserId(TextBox6.Text, TextBox7.Text, TextBox24.Text);
            string fullUrl = TextBox6.Text + $"/api/v1/users/{userId}";
            TextBox23.Text = PostWithData(fullUrl, TextBox7.Text, newString);
        }

        protected void Button6_Click(object sender, EventArgs e)
        {
            string userId = GetUserId(TextBox6.Text, TextBox7.Text, TextBox31.Text);
            string fullUrl = TextBox6.Text + $"/api/v1/users/{userId}?sendEmail=true";
            TextBox33.Text = DeleteUser(fullUrl, TextBox7.Text);
        }
    }
}