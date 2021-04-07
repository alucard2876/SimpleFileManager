using System;
using System.Windows;
using Prism.Regions;
using Unity;

namespace Infrastructure.Navigation
{
    public class NavigationService : INavigationService
    {
        [Dependency]
        public IUnityContainer UnityContainer { get; set; }

        [Dependency]
        public IRegionManager RegionManager { get; set; }

        public IRegion CurrentRegion { get; set; }
        
        public void TryNavigate(string viewName) => TryNavigate(viewName, null);

        public void TryNavigate(string viewName, object parameter)
        {
            if (String.IsNullOrEmpty(viewName))
                return;

            if (!UnityContainer.IsRegistered<object>(viewName))
                return;

            CurrentRegion = RegionManager.Regions[GlobalRegionNames.MainRegion];
            
            CurrentRegion.NavigationService.RequestNavigate(viewName, new NavigationParameters{{"", parameter}});
            
        }

        public void GoBack()
        {
            RegionManager.Regions[GlobalRegionNames.MainRegion].NavigationService.Journal.GoBack();
        }

        public  void OnNavigatedTo(NavigationContext navigationContext)
        {

        }

        public  bool IsNavigationTarget(NavigationContext navigationContext)
        {
            return true;
        }

        public void OnNavigatedFrom(NavigationContext navigationContext)
        {

        }
    }
}
