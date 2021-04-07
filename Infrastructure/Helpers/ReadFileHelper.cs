using System;
using System.IO;
using System.Text;
using CourseProject.BL.FileReader;
using iTextSharp.text.pdf;
using Microsoft.Office.Interop.Word;

namespace Infrastructure.Helpers
{
    public class ReadFileHelper
    {
        public string GetTextFromFile(IFile file, string[] allowedFiles)
        {
            if (file.Extension.Equals(".doc") || file.Extension.Equals(".docx"))
                return ReadWordFile(file.FilePath);

            if (file.Extension.Contains("pdf"))
                return ReadPDF(file.FilePath);

            using (var streamReader = new StreamReader(file.FilePath, Encoding.UTF8)) 
                return streamReader.ReadToEnd();
        }

        private string ReadWordFile(string fileFilePath)
        {
            StringBuilder builder = new StringBuilder();
            Application application = new Application { Visible = false };

            Document document = application.Documents.Open(fileFilePath, ReadOnly: true);
            try
            {
                for (int i = 1; i <= document.Words.Count; i++)
                {
                    builder.Append(document.Words[i].Text);
                }
            }
            catch (Exception e)
            {
                builder.Append(e.Message);
            }
            finally
            {
                document.Close(false);
                application.Quit(false);
            }
            return builder.ToString();
        }

        private string ReadPDF(string filePath)
        {
            var builder = new StringBuilder();
            PdfReader document = null;
            try
            {
                document = new PdfReader(filePath);

                for (int i = 1; i <= document.NumberOfPages; i++)
                {
                    byte[] stream = document.GetPageContent(i);
                    var tokenizer = new PRTokeniser(new RandomAccessFileOrArray(stream));
                    while (tokenizer.NextToken())
                    {
                        if(tokenizer.TokenType == PRTokeniser.TokType.STRING)
                            builder.Append(tokenizer.StringValue);
                    }
                }
            }
            catch (Exception e)
            {
                builder.Append(e.Message);
            }
            finally
            {
                document?.Close();
            }

            return builder.ToString();
        }
    }
}
