using System.Linq;
using DevExpress.Mvvm;
using Prism.Regions;
using Unity;

namespace Infrastructure.Navigation
{
    public abstract class NavigationViewModel : NavigationViewModel<object>
    {
        
    }

    public abstract class NavigationViewModel<TParameter> : NavigationViewModelBase, INavigationAware where TParameter : class
    {
        public new TParameter Parameter
        {
            get => GetProperty(() => Parameter);
            set => SetProperty(() => Parameter, value);
        }

        [Dependency]
        public IRegionManager RegionManager { get; set; }

        [Dependency]
        public  INavigationService NavigationService { get; set; }


        public virtual string Title
        {
            get => GetProperty(() => Title);
            set => SetProperty(() => Title, value);
        }

        void INavigationAware.OnNavigatedTo(NavigationContext navigationContext)
        {
            Parameter = (TParameter)navigationContext.Parameters.First().Value;
            OnNavigatedTo();
            OnNavigatedTo(navigationContext);
        }

        public bool IsNavigationTarget(NavigationContext navigationContext)
            => true;

        void INavigationAware.OnNavigatedFrom(NavigationContext navigationContext)
        {
            
            OnNavigatedFrom();
            OnNavigatedFrom(navigationContext);
        }

        protected virtual void OnNavigatedTo()
        {

        }
        protected virtual void OnNavigatedTo(NavigationContext navigationContext)
        {

        }

        protected virtual void OnNavigatedFrom()
        {

        }
        protected virtual void OnNavigatedFrom(NavigationContext navigationContext)
        {

        }

    }
}
