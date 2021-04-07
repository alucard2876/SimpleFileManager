using System;
using System.Collections.ObjectModel;
using System.IO;
using System.Windows;
using CourseProject.BL.FileReader;
using DevExpress.Mvvm.DataAnnotations;
using Infrastructure.Navigation;
using Prism.Regions;
using Unity;
using File = System.IO.File;

namespace CourseProject.ViewModels
{
    public class FileManagerViewModel : NavigationViewModel
    {
        public override string Title
        {
            get => GetProperty(() => Title);
            set => SetProperty(() => Title, value);
        }

        public ObservableCollection<IFile> Files
        {
            get => GetProperty(() => Files);
            set => SetProperty(() => Files, value);
        }

        public IFile SelectedFile
        {
            get => GetProperty(() => SelectedFile);
            set => SetProperty(() => SelectedFile, value);
        }

        public string FilePath
        {
            get => GetProperty(() => FilePath);
            set => SetProperty(() => FilePath, value);
        }

        public bool CanOpenFiles() => SelectedFile != null;

        [Command]
        public void OpenFiles()
        {
            NavigationService.TryNavigate(ViewNames.FileEditorDialogView, SelectedFile);
        }

        public bool CanReadFiles() => !String.IsNullOrEmpty(FilePath) && Path.IsPathRooted(FilePath);

        public bool CanRemoveFile() => SelectedFile != null;

        [Command]
        public void RemoveFile()
        {
            if (MessageBox.Show("Remove file?", "Confirmation", MessageBoxButton.YesNo, MessageBoxImage.Question) ==
                MessageBoxResult.No)
                return;

            File.Delete(SelectedFile.FilePath);
            Files.Remove(SelectedFile);
        }

        [Command]
        public void ReadFiles()
        {
            var reader = new FileReader();

            using (new Infrastructure.LoadingDecorator.LoadingDecorator("Reading files"))
                Files = new ObservableCollection<IFile>(reader.ReadFiles(FilePath));
        }
        
    }
}
