   M S B A M L   `   `   `  ����  CourseProject)    #CourseProject.Views.FileManagerView   5      R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35a ]DevExpress.Xpf.Core.v20.1, Version=20.1.6.0, Culture=neutral, PublicKeyToken=b88d1754d700e49aF 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      Y UPrism.Unity.Wpf, Version=8.0.0.1909, Culture=neutral, PublicKeyToken=40ee6c3a2184dc59S OPrism.Wpf, Version=8.0.0.1909, Culture=neutral, PublicKeyToken=40ee6c3a2184dc59&prismhttp://prismlibrary.com/   5      f bDevExpress.Xpf.Grid.v20.1.Core, Version=20.1.6.0, Culture=neutral, PublicKeyToken=b88d1754d700e49aa	 ]DevExpress.Xpf.Grid.v20.1, Version=20.1.6.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a>dxg2http://schemas.devexpress.com/winfx/2008/xaml/grid  	 5      ?dxe5http://schemas.devexpress.com/winfx/2008/xaml/editors  5      ]
 YDevExpress.Mvvm.v20.1, Version=20.1.6.0, Culture=neutral, PublicKeyToken=b88d1754d700e49aAdxmvvm2http://schemas.devexpress.com/winfx/2008/xaml/mvvm 
  5	      !  Prism.Mvvm.ViewModelLocator    AutoWireViewModel$
  TrueX�5
       � 	Resources 5         CardCellTemplate�� 5   
   %�   &	        �� 5      .R�5      � .+�5      �� $
��Left=�67   $��6 0 0 0 q�6R   ��6    �� *Value+6R   5      5      5      .��5      �  � RowDefinitions 5   
   �� 5      $
��Auto �6   �� 5      $
��1200 �6   �� 5      .+�5   
   � $��0��6    � ColumnDefinitions 5      �� 5       $
��Auto �6#   �� 5!      $
��Auto �6#   �� 5"      �� 5#      $
��Auto �6#   �� 5$      $
��Auto �6#   .+�5&      �� $��	ReadFiles��6   $��5q�6)   $��Center=�5'      $
��Left=�60   ��5&   4   �� *ReadFilesCommand+5'   0   %  DevExpress.Xpf.Editors.TextEdit  5(      $��2��6   %  DevExpress.Xpf.Editors.BaseEdit   NullText$ Path to folder��6+   $��5q�6E   )  #DevExpress.Xpf.Editors.TextEditBase   Text 6P   �� *
FilePath+ �� UpdateSourceTrigger$ PropertyChanged=��� 5)      $��OpenFile��6   $��3��6(   $��5q�68   ��6C   �� *OpenFilesCommand+�� 5*      $��Remove file��6   $��4��6+   $��5q�6;   ��6F   �� *RemoveFileCommand+5+      % 	 DevExpress.Xpf.Grid.GridControl  5-   
   $��1��6   )  #DevExpress.Xpf.Grid.DataControlBase   ItemsSource 6'   �� *Files+   SelectedItem 6E   �� *SelectedFile+2  ,DevExpress.Mvvm.UI.Interactivity.Interaction	   	Behaviors	 5.      
   View
 50      # 	 DevExpress.Xpf.Grid.TableView  51      -   5          Name$ 	TableView��51       &	 	  DevExpress.Xpf.Grid.GridViewBase 	  ShowGroupPanel .  &
   DevExpress.Xpf.Grid.DataViewBase 
  ShowSearchPanelMode$ Never=�52        
  AllowEditing .   
  AllowLeaveFocusOnTab .  
  AllowScrollToFocusedRow .  
  NavigationStyle$	 Row=�54   ?   $ 
  IsSynchronizedWithCurrentItem .  
  ColumnFilterPopupMode$ 
ExcelSmart=�56          	AutoWidth .   
  AllowMoveColumnToDropArea .   
  AllowColumnMoving .  
  ShowFilterPanelMode$ Never=�59   9    
  AllowColumnFiltering .  
  AllowFilterEditor] YDevExpress.Data.v20.1, Version=20.1.6.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a5  /DevExpress.Utils.Design.DefaultBooleanConverter$ False 5:   <      Columns. 5=      $ 	 DevExpress.Xpf.Grid.GridColumn  $  DevExpress.Xpf.Grid.ColumnBase   	FieldName$
 Name��6   $  DevExpress.Xpf.Grid.BaseColumn   Header)  #DevExpress.Xpf.Core.ObjectConverter$ 	File name 6.      DisplayTemplate# [  6A     5>      $ 	Extension��6   $ 	Extension 63   # [  6F     5?      $
 Size��6   $ 	File size 6.   # [  6A   5@      5A      5B      