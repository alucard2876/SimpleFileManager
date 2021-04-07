using Prism.Regions;
using Unity;

namespace Infrastructure.Navigation
{
    public interface INavigationService : INavigationAware
    {
        IUnityContainer UnityContainer { get; set; }

        IRegionManager RegionManager { get; set; }

        IRegion CurrentRegion { get; set; }

        void TryNavigate(string viewName);

        void TryNavigate(string viewName, object parameter);

        void GoBack();

    }
}