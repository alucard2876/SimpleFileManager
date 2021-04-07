using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;

namespace CourseProject.BL.FileReader
{
    public class FileReader : IFileReader
    {
        public IEnumerable<IFile> ReadFiles(string folder)
        {
            if (String.IsNullOrEmpty(folder))
                throw new ArgumentNullException(nameof(folder));

            List<IFile> result = new List<IFile>();
            
           List<string> folders = Directory.GetDirectories(folder).ToList();
           folders.Add(folder);
            
            foreach (string currentFolder in folders)
            {
                string[] files = Directory.GetFiles(currentFolder, "*", SearchOption.AllDirectories);

                foreach (string currentFile in files)
                {
                    result.Add(GetFile(currentFile));
                }
            }
            return result;
        }

        private IFile GetFile(string currentFile)
        {
            if (String.IsNullOrEmpty(currentFile))
                return null;

            FileInfo fileInfo = new FileInfo(currentFile);

            return new File
            {
                Name = fileInfo.Name,
                Extension = fileInfo.Extension,
                ModifyDate = fileInfo.LastWriteTime,
                Size = fileInfo.Length,
                FilePath = currentFile
            };
        }
    }
}
