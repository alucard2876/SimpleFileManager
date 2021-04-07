using System;

namespace Infrastructure.LoadingDecorator
{
    public class LoadingDecorator : IDisposable
    {
        public LoadingDecorator()
        {
            Properties = LoadingDecoratorCommand.Show();
        }

        public LoadingDecorator(string loadingText)
        {
            Properties = LoadingDecoratorCommand.Show(loadingText);
        }

        public LoadingDecorator(string loadingText, bool showProgress)
        {
            Properties = LoadingDecoratorCommand.Show(loadingText, showProgress);
        }

        public ILoadingDecoratorProperties Properties { get; }

        public void Dispose()
        {
            LoadingDecoratorCommand.Release(Properties);
        }
    }
    public interface ILoadingDecoratorProperties
    {
        Guid Id { get; }

        string Text { get; set; }
        
    }
}
