using System.Collections.Generic;

namespace CourseProject.BL.FileReader
{
    public interface IFileReader
    {
        IEnumerable<IFile> ReadFiles(string folder);
    }
}
