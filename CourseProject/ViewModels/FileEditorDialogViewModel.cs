using System;
using System.IO;
using Infrastructure.Navigation;

namespace CourseProject.ViewModels
{
    public class FileEditorDialogViewModel : NavigationViewModel<string>
    {

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

        public void OnDialogOpened(string filePath)
        {
            if (String.IsNullOrEmpty(filePath))
                return;

            using (var streamReader = new StreamReader(filePath)) FileData = streamReader.ReadToEnd(); 
        }

        protected override void OnNavigatedTo()
        {
            base.OnNavigatedTo();
            OnDialogOpened(Parameter);
        }
    }
}
