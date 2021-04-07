using System;
using System.Linq;
using System.Windows;
using CourseProject.BL.FileReader;
using Infrastructure.Helpers;
using Infrastructure.LoadingDecorator;
using Infrastructure.Navigation;

namespace CourseProject.ViewModels
{
    public class FileEditorDialogViewModel : NavigationViewModel<IFile>
    {
        private readonly ReadFileHelper fileHelper;

        private readonly string[] notAllowedFileTypes =
        {
            ".exe",
            ".dll",
            ".sys",
            ".zip",
            ".7z",
            ".mp3",
            ".mp4",
            ".rar",
            ".torrent",
            ".pptx",
        };

        public FileEditorDialogViewModel(ReadFileHelper fileHelper)
        {
            this.fileHelper = fileHelper;
        }

        public string FileData
        {
            get => GetProperty(() => FileData);
            set => SetProperty(() => FileData, value);
        }

        public override string Title
        {
            get => GetProperty(() => Title);
            set => SetProperty(() => Title, value);
        }

        public void OnDialogOpened()
        {
            using (new LoadingDecorator("Read file"))
            {

                var filePath = Parameter.FilePath;
                if (String.IsNullOrEmpty(filePath))
                    return;

                FileData = fileHelper.GetTextFromFile(Parameter, notAllowedFileTypes);
            }
        }

        protected override void OnNavigatedTo()
        {
            if (notAllowedFileTypes.Contains(Parameter.Extension))
            {
                MessageBox.Show("File is not readable!", "error", MessageBoxButton.OK, MessageBoxImage.Error);
                NavigationService.GoBack();
            }
            OnDialogOpened();
        }
    }
}
