using System;
using System.Collections.Generic;
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
using System.Windows.Shapes;
using VncHelperLib;

namespace UVNCRemote
{
    /// <summary>
    /// InputAccountWindow.xaml 的互動邏輯
    /// </summary>
    public partial class InputAccountWindow : Window
    {
        public InputAccountWindow()
        {
            InitializeComponent();

            txtAdminUser.Focus();
        }

        private void btnOK_Click(object sender, RoutedEventArgs e)
        {
            e.Handled = true;
            UVncOption.AdminUser = txtAdminUser.Text?.Trim();
            UVncOption.AdminPasswd = txtAdminPasswd.Password?.Trim();
            if (UVncOption.ValidateInputAccount())
            {
                Close();
            }
            else
            {
                txtAdminUser.Clear();
                txtAdminPasswd.Clear();
            }
        }

        private void btnCancel_Click(object sender, RoutedEventArgs e)
        {
            e.Handled = true;
            UVncOption.AdminUser = null;
            UVncOption.AdminPasswd = null;

            Close();
        }

        private void AccountWindow_KeyDown(object sender, KeyEventArgs e)
        {
            if (e.Key == Key.Enter)
            {
                btnOK_Click(sender, e);
            }
        }
    }
}
