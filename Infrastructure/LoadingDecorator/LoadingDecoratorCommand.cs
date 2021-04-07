using System;
using System.Collections.Generic;
using System.Linq;

namespace Infrastructure.LoadingDecorator
{
    public static class LoadingDecoratorCommand 
    {
        public static event Action CurrentContextChanged;

        private static readonly List<LoadingDecoratorContext> ContextList = new List<LoadingDecoratorContext>();
        private static readonly object Locker = new object();

        static LoadingDecoratorCommand()
        {
            ContextList.Add(LoadingDecoratorContext.GetEmpty());
        }

        public static ILoadingDecoratorProperties Show(string loadingText = null, bool showProgress = false)
        {
            var context = new LoadingDecoratorContext
            {
                Visible = true,
                ShowPercentage = showProgress
            };

            if (loadingText != null)
            {
                context.Text = loadingText;
            }

            lock (Locker)
            {
                ContextList.Add(context);
            }

            CurrentContextChanged?.Invoke();

            return context;
        }

        public static ILoadingDecoratorProperties Suppress()
        {
            var context = LoadingDecoratorContext.GetEmpty();

            lock (Locker)
            {
                ContextList.Add(context);
            }

            CurrentContextChanged?.Invoke();

            return context;
        }

        public static void Release(ILoadingDecoratorProperties properties)
        {
            lock (Locker)
            {
                LoadingDecoratorContext context = ContextList.FirstOrDefault(i => i.Id == properties.Id);
                if (context == null)
                    return;

                ContextList.Remove(context);
            }

            CurrentContextChanged?.Invoke();
        }

        public static LoadingDecoratorContext GetContext()
        {
            lock (Locker)
            {
                return ContextList.Last();
            }
        }
    }
    public class LoadingDecoratorSuppressor : IDisposable
    {
        private readonly ILoadingDecoratorProperties loadingDecoratorProperties;

        public LoadingDecoratorSuppressor()
        {
            loadingDecoratorProperties = LoadingDecoratorCommand.Suppress();
        }

        public void Dispose()
        {
            LoadingDecoratorCommand.Release(loadingDecoratorProperties);
        }
    }
}
