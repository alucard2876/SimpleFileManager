using System;

namespace CourseProject.BL.FileReader
{
    public class File : IFile
    {
        public string Name { get; set; }

        public string Extension { get; set; }

        public double Size { get; set; }

        public string FilePath { get; set; }

        public DateTime ModifyDate { get; set; }
    }
}
