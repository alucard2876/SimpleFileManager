using System.Windows;
using CourseProject.Views;
using DevExpress.Mvvm.UI;
using Prism.Ioc;
using DevExpress.Xpf.Core;
using Infrastructure.Navigation;
using Prism.Modularity;
using Prism.Mvvm;
using Prism.Unity;

namespace CourseProject
{
    public class Bootstrapper : PrismBootstrapper
    {
        protected override void InitializeShell(DependencyObject shell)
        {
            base.InitializeShell(shell);
            ApplicationThemeHelper.ApplicationThemeName = Theme.MetropolisDarkName;
        }
        

        protected override void ConfigureModuleCatalog(IModuleCatalog moduleCatalog)
        {
            base.ConfigureModuleCatalog(moduleCatalog);
                                                         
            moduleCatalog.Initialize();
        }

        protected override void RegisterTypes(IContainerRegistry containerRegistry)
        {
            containerRegistry.RegisterForNavigation<FileManagerView>(ViewNames.FileManagerView);
            containerRegistry.RegisterForNavigation<FileEditorDialogView>(ViewNames.FileEditorDialogView);

            containerRegistry.Register<INavigationService, NavigationService>();
            ViewModelLocationProvider.Register(typeof(Shell).FullName, () => Container.Resolve<ShellViewModel>());
        }

        protected override DependencyObject CreateShell()
        {
            return Container.Resolve<Shell>();
        }
    }
}
