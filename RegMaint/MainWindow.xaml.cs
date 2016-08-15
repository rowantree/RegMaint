﻿using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Navigation;
using System.Windows.Shapes;
using log4net;

using RegData;

[assembly: log4net.Config.XmlConfigurator(ConfigFile = "log4net.config", Watch=true)]
namespace RegMaint
{
	/// <summary>
	/// Interaction logic for MainWindow.xaml
	/// </summary>
	public partial class MainWindow : Window
	{
		private static readonly log4net.ILog log = log4net.LogManager.GetLogger(System.Reflection.MethodBase.GetCurrentMethod().DeclaringType);


		public MainWindow()
		{
			log.Info("******* Application Startup ********");
			InitializeComponent();
			this.Loaded += MainWindow_Loaded;

		}


		void MainWindow_Loaded(object sender, RoutedEventArgs e)
		{
			this.DataContext = new MainViewModel();
			((MainViewModel)this.DataContext).LoadFromMySql();
		}


		private void Row_DoubleClick(object sender, MouseButtonEventArgs e)
		{
			DataGridRow row = sender as DataGridRow;
			Registration regData = row.Item as Registration;
			((MainViewModel)this.DataContext).OpenRegistration(regData);
		}



		private void btnLoadLocal_ItemClick(object sender, DevExpress.Xpf.Bars.ItemClickEventArgs e)
		{
			((MainViewModel)this.DataContext).LoadLocal();
		}

		private void btnLoadMySql_ItemClick(object sender, DevExpress.Xpf.Bars.ItemClickEventArgs e)
		{
			((MainViewModel)this.DataContext).LoadFromMySql();
		}

		private void btnSaveLocal_ItemClick(object sender, DevExpress.Xpf.Bars.ItemClickEventArgs e)
		{
			DbAccess.SaveLocal();
		}

		/*
		private void RegGridView_RowDoubleClick(object sender, DevExpress.Xpf.Grid.RowDoubleClickEventArgs e)
		{
			if ( e.HitInfo.InRow )
			{
				FrameworkElement el = RegGridView.GetRowElementByRowHandle(e.HitInfo.RowHandle);
				Registration reg = ((el.DataContext as DevExpress.Xpf.Grid.RowData).Row as Registration);
				OpenRegistration(reg);
			}
		}
		*/

		private void tabControl_TabHiding(object sender, DevExpress.Xpf.Core.TabControlTabHidingEventArgs e)
		{


		}

	}






    public class Conv : IValueConverter {
        public object Convert(object value, System.Type targetType, object parameter, System.Globalization.CultureInfo culture) {

			if ( value is bool )
			{
				return ((bool)value ? new SolidColorBrush(Colors.Brown) : new SolidColorBrush(Colors.LightGray));
			}
            return new SolidColorBrush(Colors.White);
        }

        public object ConvertBack(object value, System.Type targetType, object parameter, System.Globalization.CultureInfo culture) {
            throw new System.NotImplementedException();
        }
    }
}
