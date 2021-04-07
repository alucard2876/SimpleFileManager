namespace CourseProject
{
    /// <summary>
    /// Interaction logic for Shell.xaml
    /// </summary>
    public partial class Shell
    {
        public Shell()
        {
            InitializeComponent();
            ViewModel = DataContext as ShellViewModel;
            Loaded += ViewModel.OnInitialized;
        }

        private ShellViewModel ViewModel;
    }
}
