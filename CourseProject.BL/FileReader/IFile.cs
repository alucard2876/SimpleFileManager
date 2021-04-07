using System;

namespace CourseProject.BL.FileReader
{
    public interface IFile
    {
        string Name { get; set; }

        string Extension { get; set; }

        double Size { get; set; }

        string FilePath { get; set; }

        DateTime ModifyDate { get; set; }
    }
}
