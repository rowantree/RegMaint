   M S B A M L   `   `   `  ����C  ?RegMaint, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null#clr-namespace:RegMaintRegMaint  5	   	       RegMaint.MainWindow   5   	   d `DevExpress.Xpf.Docking.v15.2, Version=15.2.5.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a@dxdo5http://schemas.devexpress.com/winfx/2008/xaml/docking  j fDevExpress.Xpf.LayoutControl.v15.2, Version=15.2.5.0, Culture=neutral, PublicKeyToken=b88d1754d700e49aFdxlc;http://schemas.devexpress.com/winfx/2008/xaml/layoutcontrol  5   	   a ]DevExpress.Xpf.Core.v15.2, Version=15.2.5.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a?dxe5http://schemas.devexpress.com/winfx/2008/xaml/editors  5   	   f bDevExpress.Xpf.Grid.v15.2.Core, Version=15.2.5.0, Culture=neutral, PublicKeyToken=b88d1754d700e49aa ]DevExpress.Xpf.Grid.v15.2, Version=15.2.5.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a>dxg2http://schemas.devexpress.com/winfx/2008/xaml/grid   5   	   ;dx2http://schemas.devexpress.com/winfx/2008/xaml/core  5   	   <dxb2http://schemas.devexpress.com/winfx/2008/xaml/bars  5   	   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R	 NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml  	   5   	   (localclr-namespace:RegMaint  	   5	   	   Gdxgt<http://schemas.devexpress.com/winfx/2008/xaml/grid/themekeys  5
   	     � Title$  EarthSpirit Registration��5   	   $	��800��6*   $
��1200��67    � Icon$ register.ico��6D    � 	Resources 5      $  DevExpress.Xpf.Grid.GridColumn �� 
TargetType$  DevExpress.Xpf.Grid.ColumnBase �� Property �� Value]
 YDevExpress.Data.v15.2, Version=15.2.5.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a5 
 /DevExpress.Utils.Design.DefaultBooleanConverter   RegMaint.Conv   c  OddEvenRowStyle$  DevExpress.Xpf.Grid.RowControl �� 	Converter�� 5   
   %�   '        &	  W     &	 j     7   �� 5   
   "  6   .�5      ��  �@ AllowBestFit$
 True 6-   5        5      6   �� 5      "  5      .�5      ��  � �� 6/   �� *Row.AttentionFlag+8   5      5      .��5"      �  � RowDefinitions 5'   
   �� 5(      $��* �6   �� 5)      $��25 �6   .+�5,   
   $  DevExpress.Xpf.Bars.BarManager     Bars 5=   
     DevExpress.Xpf.Bars.Bar  5?      /  )DevExpress.Xpf.Bars.BarItemLinkHolderBase	   Items.	 5@      $	  DevExpress.Xpf.Bars.BarSubItem	  !
  DevExpress.Xpf.Bars.BarItem
 
  Content)  #DevExpress.Xpf.Core.ObjectConverter$

 File 6%    	  Items. 5A      '  !DevExpress.Xpf.Bars.BarButtonItem  $
 
Load MySql 6,    
  CommandParameter$ MYSQL��6a    
  Command 6A   �� *LoadDataCmd+6a     5B      $
 
Load Local 6,   $ LOCAL��6a    6A   �� *LoadDataCmd+6a     5C      $
 
Save Local 6,   5D        5E      $

 Copy 6(    �� 	IsEnabled .  67     5F      $
 Paste 6(    .  68   *  $DevExpress.Xpf.Bars.BarItemSeparator  5G      5H      ._�5e   
   .  (DevExpress.Xpf.Docking.DockLayoutManager     
LayoutRoot. 5f      (  "DevExpress.Xpf.Docking.LayoutGroup  +  %DevExpress.Xpf.Docking.BaseLayoutItem   	ItemWidth$ 1* �6      Items. 5h           Orientation$ Vertical=�6#   . 5i      (  "DevExpress.Xpf.Docking.LayoutPanel     Caption$ 	Dashboard��6'      
ItemHeight$ 1* �6;   (  "DevExpress.Xpf.Docking.ContentItem   Content. 5j      0  *DevExpress.Xpf.LayoutControl.LayoutControl  .  (DevExpress.Xpf.LayoutControl.LayoutGroup   Orientation$ Vertical=�6-   .+�5k        .+�5l   "     -   5          Name$ layoutGroup��5l   3   $ Vertical=�6H   $	��Top=�6_   .+�5m   &   -  'DevExpress.Xpf.LayoutControl.LayoutItem     
IsRequired .    Label$ Event:��6H   $
��Left=�6W      Content. 5n   *   %  DevExpress.Xpf.Editors.TextEdit  $��70��67   %  DevExpress.Xpf.Editors.BaseEdit   	EditValue$ ROS 38 6B   5o   '     5p   &    . $ Registrations:��6H   $
��Left=�6_   . 5q   *     $��70��67    6B   �� *regDB.RegCount+5r   '     5s   &    . $ People:��6H   $
��Left=�6X   . 5t   *     $��70��67    6B   �� *regDB.PersonCount+5u   '   5v   #   5w      5x      5y        5z      $ Messages��6'   $ 3* �6:   5{        5}      $ Registration Information��6#   $ 4* �6F   . 5~      &   DevExpress.Xpf.Core.DXTabControl  -   5        $��
tabControl��5~   &   $��0,30,0,0q�68   $��0��6k   ��5   %   �� *
TabItems+   SelectedTabItem 5�   &   �� *CurrentTabItem+5�      5�      5�      5�      5�      �� 5�      $��Bottom=�6   $��1��63   .@�5�      �� -   5        $��txtDbSource��5�      ��6+   �� *	StatusMsg+5�      5�      5�      