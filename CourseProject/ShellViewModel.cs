using System;
using System.Windows;
using System.Windows.Threading;
using DevExpress.Mvvm;
using DevExpress.Mvvm.DataAnnotations;
using DevExpress.Xpf.Core;
using Infrastructure;
using Infrastructure.LoadingDecorator;
using Infrastructure.Navigation;
using Prism.Regions;
using Unity;
using INavigationService = Infrastructure.Navigation.INavigationService;

namespace CourseProject
{
    public class ShellViewModel : NavigationViewModel
    {
        private readonly IUnityContainer container;
        private SplashScreenManager manager;
        
        public ShellViewModel(
            IUnityContainer container)
        {
            this.container = container;
            LoadingDecoratorCommand.CurrentContextChanged += LoadingDecoratorCommandOnCurrentContextChanged;
            LoadingDecoratorCommandOnCurrentContextChanged();
           
        }

        public Window MainWindow => Application.Current.MainWindow;

        public override string Title
        {
            get => GetProperty(() => Title);
            set => SetProperty(() => Title, value);
        }

        public LoadingDecoratorContext LoadingDecoratorContext
        {
            get => GetProperty(() => LoadingDecoratorContext);
            set => SetProperty(() => LoadingDecoratorContext, value);
        }

        public bool IsEnabled
        {
            get => GetProperty(() => IsEnabled);
            set => SetProperty(() => IsEnabled, value);
        }

        private void LoadingDecoratorCommandOnCurrentContextChanged()
        {
            Dispatcher.CurrentDispatcher.Invoke(() =>
            {
                LoadingDecoratorContext = LoadingDecoratorCommand.GetContext();
                UpdateLoadingDecorator();
            });
        }

        [Command]
        public void Back() => NavigationService.GoBack();

        [Command]
        public void Minimize()
        {
            Application.Current.MainWindow.WindowState = WindowState.Minimized;
        }

        [Command]
        public void RestoreOrMaximize()
        {
            if (MainWindow.WindowState == WindowState.Maximized)
                SystemCommands.RestoreWindow(MainWindow);
            else
                SystemCommands.MaximizeWindow(MainWindow);
        }

        [Command]
        public void Close()
        {
            SystemCommands.CloseWindow(MainWindow);
        }

        public void OnInitialized(object sender, EventArgs eventArgs)
        {
            Title = "File manager";
            container.Resolve<INavigationService>().TryNavigate(ViewNames.FileManagerView);
            
            RegionManager.Regions[GlobalRegionNames.MainRegion].NavigationService.Navigated += NavigationService_Navigated;
            
        }
        
        private void UpdateLoadingDecorator()
        {
            if (!LoadingDecoratorContext.Visible)
            {
                manager?.Close();
                return;
            }

            if (manager != null)
                manager.ViewModel.Status = LoadingDecoratorContext.Text;
            else
                manager = SplashScreenManager.CreateWaitIndicator(new DXSplashScreenViewModel
                {
                    Status = LoadingDecoratorContext.Text,
                });


            manager.Show(Application.Current.MainWindow);
        }

        private void NavigationService_Navigated(object sender, RegionNavigationEventArgs e)
        {
            IsEnabled = e.NavigationContext.NavigationService.Journal.CanGoBack;
        }
        
    }
}
