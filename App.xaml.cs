using System;
using System.Windows;
using VncHelperLib;

namespace UVNCRemote
{
    /// <summary>
    /// App.xaml 的互動邏輯
    /// </summary>
    public partial class App : Application
    {
        private void Application_Startup(object sender, StartupEventArgs e)
        {
            System.Threading.Mutex mutex = new System.Threading.Mutex(true, "1b4e1d63-0a7d-494c-845b-f6e197aff57a", out bool flag);
            //第一个参数:true--给调用线程赋予互斥体的初始所属权  
            //第一个参数:互斥体的名称  
            //第三个参数:返回值,如果调用线程已被授予互斥体的初始所属权,则返回true  
            if (!flag)
            {
                MessageBox.Show("程式已運行！", "信息", MessageBoxButton.OK, MessageBoxImage.Exclamation);
                Environment.Exit(1);//退出程序  
            }

            if (e != null && e.Args != null)
            {
                UVncOption.ToLauchRemoteSupportGetArguments(e.Args);
            }
            else
            {
                UVncOption.ToLauchRemoteSupportGetArguments(null);
            }
        }
    }
}
