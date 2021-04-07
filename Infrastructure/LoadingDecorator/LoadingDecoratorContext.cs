using System;
using DevExpress.Mvvm;

namespace Infrastructure.LoadingDecorator
{
    public class LoadingDecoratorContext : BindableBase, ILoadingDecoratorProperties
    {
        public LoadingDecoratorContext()
        {
            Id = Guid.NewGuid();    
        }

        public Guid Id { get; }

        public string Text
        {
            get => GetProperty(() => Text);
            set => SetProperty(() => Text, value);
        }

        public bool Visible
        {
            get => GetProperty(() => Visible);
            set => SetProperty(() => Visible, value);
        }

        public bool ShowPercentage
        {
            get => GetProperty(() => ShowPercentage);
            set => SetProperty(() => ShowPercentage, value);
        }

        public static LoadingDecoratorContext GetEmpty() => new LoadingDecoratorContext {Text = null}; 
    }
}
