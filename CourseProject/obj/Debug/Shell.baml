   M S B A M L   `   `   `  ����F  BCalcBinding, Version=2.5.2.0, Culture=neutral, PublicKeyToken=null>.clr-namespace:CalcBinding;assembly=CalcBindingCalcBinding  5   	    CourseProject   CourseProject.Shell   5   	   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35a ]DevExpress.Xpf.Core.v20.1, Version=20.1.6.0, Culture=neutral, PublicKeyToken=b88d1754d700e49aF 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   l hDevExpress.Xpf.Core.v20.1.Extensions, Version=20.1.6.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a=dx2http://schemas.devexpress.com/winfx/2008/xaml/core   5   	   BcalcBinding.clr-namespace:CalcBinding;assembly=CalcBinding   5   	   Y UPrism.Unity.Wpf, Version=8.0.0.1909, Culture=neutral, PublicKeyToken=40ee6c3a2184dc59S	 OPrism.Wpf, Version=8.0.0.1909, Culture=neutral, PublicKeyToken=40ee6c3a2184dc59&prismhttp://prismlibrary.com/  	 5   	   e
 aDevExpress.Xpf.Controls.v20.1, Version=20.1.6.0, Culture=neutral, PublicKeyToken=b88d1754d700e49aOinternal@http://schemas.devexpress.com/winfx/2008/xaml/windowsui/internal 
 5   	   Ithemes<http://schemas.devexpress.com/winfx/2008/xaml/core/themekeys  5   	     � WindowStartupLocation$  CenterScreen=�5	   	    � ShowInTaskbar . $��0q�6C   ! 	 Prism.Mvvm.ViewModelLocator   AutoWireViewModel$
 TrueX�5
   	    � WindowState$ 	Maximized=�5   	    � WindowStyle$
 None=�5   	    � Title$ File Manager��5   	    � 	Resources 5       �� 
TargetType   RestoreButtonStyle �� Property	 �� Value
 �� Triggers   System.Windows.WindowState   	Maximized �� Value �� Binding �� Path  MaximizeButtonStyle   	Minimized   Normal �� 
TargetTypeD  >DevExpress.Xpf.Utils.Themes.FloatingContainerThemeKeyExtension:  4DevExpress.Xpf.Utils.Themes.ThemeKeyExtensionGeneric   	ThemeName�  �DevExpress.Xpf.Utils.Themes.ThemeKeyExtensionInternalBase`1[[DevExpress.Xpf.Utils.Themes.FloatingContainerThemeKey, DevExpress.Xpf.Core.v20.1, Version=20.1.6.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a]]   ResourceKey�  �DevExpress.Xpf.Utils.Themes.ThemeKeyExtensionBase`1[[DevExpress.Xpf.Utils.Themes.FloatingContainerThemeKey, DevExpress.Xpf.Core.v20.1, Version=20.1.6.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a]]   IsThemeIndependent �Name'  !System.Windows.VisualStateManager   VisualStateGroups%  System.Windows.VisualStateGroup   States 	  System.Windows.VisualState 	  
Storyboard �� 
TargetName �� TargetProperty g� Duration	 W� To	 �� To ��Name  BorderColor J� Opacity  F�Name! �� Stretch" ��Name�� 5   
   %K  &	        &	 �     (  &    5'      $ TouchlineDark��$- 'FloatingContainerMaximizeButtonTemplate=� . )(  F    5[      $ TouchlineDark��$, &FloatingContainerRestoreButtonTemplate=�)(  �    5�      $ TouchlineDark��$- 'FloatingContainerMinimizeButtonTemplate=�)(  �    5�      $ TouchlineDark��$* $FloatingContainerCloseButtonTemplate=�)�� 5      " ��6   .�5      ��  � y�$	 	Collapsed=�6/   
 5      �� 5      # Z 6S    6"   �� $ MainWindow.WindowState�.a�5      ��  � y�$	 Visible=�67   5      5      �� 5      " ��6   .�5      ��  � y�$	 	Collapsed=�6/   
 5      �� 5      # Z 6R    6"   �� $ MainWindow.WindowState�.a�5      ��  � y�$	 Visible=�67   5       �� 5!      # Z 6R    6"   �� $ MainWindow.WindowState�.a�5"      ��  � y�$	 Visible=�67   5#      5%      �� 5&      " ��5(      .R�5)      � $ Button��6   
������  5*        5+      CommonStates��. 5,      	  
Normal��6*   	  5-      	MouseOver��. 5.   "   �� .��5/   &   W� $ 
HoverState��66   $ Opacity�6Y   $ 0D�50   2   $ 1X�6?   �� 51   &   $
 Path��65   $) #(Path.Fill).(SolidColorBrush.Color)�52   1   $ 0D�53   1   $ 	#FFCACACAX�6>   54   #   55      	  56      Focused��. 57   "   �� .��58   &   W� $ 
HoverState��66   $ Opacity�6Y   $ 0D�59   2   $ 1X�6?   �� 5:   &   $
 Path��65   $) #(Path.Fill).(SolidColorBrush.Color)�5;   1   $ 0D�5<   1   $ 	#FFCACACAX�6>   5=   #   5>      	  5?      Pressed��. 5@   "   �� .��5A   &   W� $ PressedState��66   $ Opacity�5B   2   $ 0D�6V   $ 1X�6c   �� 5C   &   $
 Path��65   $) #(Path.Fill).(SolidColorBrush.Color)�5D   1   $ 0D�5E   1   $ 	#FF828282X�6>   5F   #   5G      	  5H      Disabled��. 5I   "   �� .��5J   &   W� $
 Path��66   $ Opacity�6S   $ 0D�5K   2   $	 0.5X�6?   5L   #   5M      5N      .+�5P      �� $ 
HoverState��6   ���	#FF333333#���  6H   $��1q�6t   $ 0Q�5Q      �� 5R      $ PressedState��6   ���	#FF3C3C3C#���  6J   $��1q�6v   $ 0Q�5S      � 5T      $ Glyph��6   $��18��6*   $��14��65   .+�5U      F� $
  Path��6   $
! Fill=�6-   ���	#FFCACACAa���� ��{��@l��{��@l��K�� ��K�� ��{��@Z
@ ��@Z
@	�� *u@	�� *u@ ��@Z
@ �5V      5W      5X      5Y      �� 5Z      " ��5\      .R�5]      � $ Button��6   
������  5^        5_      CommonStates��. 5`      	  
Normal��6*   	  5a      Focused��. 5b   "   �� .��5c   &   W� $ 
HoverState��66   $ Opacity�6Y   $ 0D�5d   2   $ 1X�6?   �� 5e   &   $
 Path��65   $) #(Path.Fill).(SolidColorBrush.Color)�5f   1   $ 0D�5g   1   $ 	#FFCACACAX�6>   5h   #   5i      	  5j      	MouseOver��. 5k   "   �� .��5l   &   W� $ 
HoverState��66   $ Opacity�6Y   $ 0D�5m   2   $ 1X�6?   �� 5n   &   $
 Path��65   $) #(Path.Fill).(SolidColorBrush.Color)�5o   1   $ 0D�5p   1   $ 	#FFCACACAX�6>   5q   #   5r      	  5s      Pressed��. 5t   "   �� .��5u   &   W� $ PressedState��66   $ Opacity�5v   2   $ 0D�6V   $ 1X�6c   �� 5w   &   $
 Path��65   $) #(Path.Fill).(SolidColorBrush.Color)�5x   1   $ 0D�5y   1   $ 	#FF828282X�6>   5z   #   5{      	  5|      Disabled��. 5}   "   �� .��5~   &   W� $
 Path��66   $ Opacity�6S   $ 0D�5   2   $	 0.5X�6?   5�   #   5�      5�      .+�5�      �� $ 
HoverState��6   ���	#FF333333#���  6H   $��1q�6t   $ 0Q�5�      �� 5�      $ PressedState��6   ���	#FF3C3C3C#���  6J   $��1q�6v   $ 0Q�5�      � 5�      $ Glyph��6   $��20��6*   $��18��65   .+�5�      F� $
  Path��6   $
! Fill=�6-   ���	#FFCACACA�������� ���@u� ���@u�@�j� E,@�j� E,����@~�����@~��K�р���K�р�� ���@~� ���@~��B����B����{�р���{�р�� ���@~� ������B����@	�� <�@	�� <��B�����B�5�      5�      5�      5�      �� 5�      " ��5�      .R�5�      � $ Button��6   
������  5�        5�      CommonStates��. 5�      	  
Normal��6*   	  5�      Focused��. 5�   "   �� .��5�   &   W� $ 
HoverState��66   $ Opacity�6Y   $ 0D�5�   2   $ 1X�6?   �� 5�   &   $
 Path��65   $) #(Path.Fill).(SolidColorBrush.Color)�5�   1   $ 0D�5�   1   $ 	#FFCACACAX�6>   5�   #   5�      	  5�      	MouseOver��. 5�   "   �� .��5�   &   W� $ 
HoverState��66   $ Opacity�6Y   $ 0D�5�   2   $ 1X�6?   �� 5�   &   $
 Path��65   $. ((Rectangle.Fill).(SolidColorBrush.Color)�5�   1   $ 0D�5�   1   $ 	#FFCACACAX�6>   5�   #   5�      	  5�      Pressed��. 5�   "   �� .��5�   &   W� $ PressedState��66   $ Opacity�5�   2   $ 0D�6V   $ 1X�6c   �� 5�   &   $
 Path��65   $. ((Rectangle.Fill).(SolidColorBrush.Color)�5�   1   $ 0D�5�   1   $ 	#FF828282X�6>   5�   #   5�      	  5�      Disabled��. 5�   "   �� .��5�   &   W� $
 Path��66   $ Opacity�6S   $ 0D�5�   2   $	 0.5X�6?   5�   #   5�      5�      .+�5�      �� $ 
HoverState��6   ���	#FF333333#���  6H   $��1q�6t   $ 0Q�5�      �� 5�      $ PressedState��6   ���	#FF3C3C3C#���  6J   $��1q�6v   $ 0Q�5�      � 5�      $ Glyph��6   $��14��6*   $��4��65   $��0,0,0,-5q�6@   .+�5�      �� $
" Path��6$   $
! Fill=�62   ���	#FFCACACA6A   5�      5�      5�      �� 5�      " ��5�      .R�5�      � $ Button��6   
������  5�        5�      CommonStates��. 5�      	  
Normal��6*   	  5�      Focused��. 5�   "   �� .��5�   &   W� $ 
HoverState��66   $ Opacity�6Y   $ 0D�5�   2   $ 1X�6?   �� 5�   &   $
 Path��65   $) #(Path.Fill).(SolidColorBrush.Color)�5�   1   $ 0D�5�   1   $ 	#FFCACACAX�6>   5�   #   5�      	  5�      	MouseOver��. 5�   "   �� .��5�   &   W� $ 
HoverState��66   $ Opacity�6Y   $ 0D�5�   2   $ 1X�6?   �� 5�   &   $
 Path��65   $) #(Path.Fill).(SolidColorBrush.Color)�5�   1   $ 0D�5�   1   $ 	#FFCACACAX�6>   5�   #   5�      	  5�      Pressed��. 5�   "   �� .��5�   &   W� $ PressedState��66   $ Opacity�5�   2   $ 0D�6V   $ 1X�6c   �� 5�   &   $
 Path��65   $) #(Path.Fill).(SolidColorBrush.Color)�5�   1   $ 0D�5�   1   $ 	#FF828282X�6>   5�   #   5�      	  5�      Disabled��. 5�   "   �� .��5�   &   W� $
 Path��66   $ Opacity�6S   $ 0D�5�   2   $	 0.5X�6?   5�   #   5�      5�      .+�5�      �� $ 
HoverState��6   ���	#FF333333#���  6H   $��1q�6t   $ 0Q�5�      �� 5�      $ PressedState��6   ���	#FF3C3C3C#���  6J   $��1q�6v   $ 0Q�5�      � 5�      $ Glyph��6   $��16��6*   $��16��65   .+�5�      F� $
  Path��6   $
! Fill=�6-   ���	#FFCACACA|������J�Ǝ*� W� T�*р��Ǝ*� i  K�*р����+� i  fd+р���+� W� ]'+р�J��+� E, fd+р҇��+� E, K�*р�J�Ǝ*5�      5�      5�      5�      5�      .��5�      � .+�5�   
   *
  $DevExpress.Xpf.Core.LoadingDecorator
  -   5        $��	Decorator��5�      # 
  SplashScreenLocation$# CenterWindow=�5�   C   $ 
  IsSplashScreenShown$ 5�   /   �� *!LoadingDecoratorContext.Visible+% �� Mode$% OneWay=�& 
  SplashScreenDataContext& 5�      �� ' 
  SplashScreenTemplate' 5�      �� 5�      .R�5�      '  !DevExpress.Xpf.Core.WaitIndicator  (   DeferedVisibility( . +  %DevExpress.Xpf.Core.SplashScreenOwner%)   PreferVisualTreeForOwnerSearch) . y�5�   (      CalcBinding.Binding  *!LoadingDecoratorContext.Visible+*   FalseToVisibility$* 	Collapsed=���5�   (   �� *LoadingDecoratorContext+$% OneWay=���5      �� 5     .R�5  "   �� + �� Orientation$+ Vertical=�6-   .+�5  &   �� ��60   �� *Text+� 5  &   , � Maximum$	, 100Q�6V   $	��0 5q�6d   $��10��5  �   - � Value- 5  3   �� *ProgressValuePct+y�5  3     *ShowPercentage+$* 	Collapsed=�6�   5  #   5     5	     5
     5     )  #DevExpress.Xpf.Core.BackgroundPanel  5  
   .��5     �� .��5     � . � RowDefinitions. 5     �� 5     $
��Auto �6(   �� 5     .+�5     � $��5q�6   / � ColumnDefinitions/ 5     �� 5     $
��Auto �6/   �� 5     $��* �6/   �� 5     $
��Auto �6/   �� 5     $��* �6/   �� 5     $
��Auto �6/   .+�5     � $��	10 0 10 0q�6   $��0��62   .+�5     (� $��5,0,5,0q�6&   $��26��5  &   $��26��61   y�5  &     0   Path$0 	IsEnabled��$* Hidden=�.��5   "   2 
 ,DevExpress.Xpf.WindowsUI.Internal.BackButton  -   5        1  Name$1 
BackButton��5   f   2 �� IsCancel2 . -  'System.Windows.Input.KeyboardNavigation3   	IsTabStop3 .  ��66   �� *BackCommand+6{   5!     5#     � 5$     $��2��6   .+�5&     �� $��24(�6)   
�������$��Center=�5'  '   $��Light"�6B   $��Center=�6U   ��5&  J   �� *Title+4 �� UpdateSourceTrigger$4 PropertyChanged=�5'  U   5*     � 5+     $��4��6   .+�5,     �� $+ 
Horizontal=�6)   $��Center=�5-  )   $��Right=�6D   .+�5.  "   �� $��44��6)   $��44��64   3 .  ��5/  )   C� *  $ TouchlineDark��$- 'FloatingContainerMinimizeButtonTemplate=�+��50  )   �� *MinimizeCommand+�� 51  "   $��44��6)   $��44��64   3 .  #��[  54  )   ��52  )   C� *  $ TouchlineDark��$, &FloatingContainerRestoreButtonTemplate=�+��53  )   �� *RestoreOrMaximizeCommand+54  )   �� 55  "   $��44��6)   $��44��64   3 .  #��[ 58  )   ��56  )   C� *  $ TouchlineDark��$- 'FloatingContainerMaximizeButtonTemplate=�+��57  )   �� *RestoreOrMaximizeCommand+58  )   �� 59  "   $��44��6)   $��44��64   3 .  ��5:  )   C� *  $ TouchlineDark��$* $FloatingContainerCloseButtonTemplate=�+��5;  )   �� *CloseCommand+5<     5=     5>     �� 5?     $��1��6%   ! 	 Prism.Regions.RegionManager5   
RegionName$5 
MainRegion��62   5@     5A     5B     5C     5D     