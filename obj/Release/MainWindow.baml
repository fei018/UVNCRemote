   M S B A M L   `   `   `  ���� H  DRemoteSupport, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null'clr-namespace:UVNCRemote
UVNCRemote      UVNCRemote.MainWindow   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     @d2http://schemas.microsoft.com/expression/blend/2008     Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     *localclr-namespace:UVNCRemote     -     � Title$  RemoteSupport 1.2��$	��400��$	��350�� � WindowStartupLocation$ CenterScreen=� � 
ResizeMode$ CanMinimize=� � Icon$ 	logo2.png��.���  � RowDefinitions �� $
��25px ��� $��110px ��� $��150px ��� $
��40px ��� .+�� $��0��.+�o� .@�m� $��16(�$��系統命令��.@�m� -   $��
menuReboot��$��重啟系統��$��16(�m� -   $��
menuLogOff��$��登出��$��16(�m� -   $��menuLockComputer��$��鎖定��$��16(�� $��1��.+��� $��logo.jpg��$��280px��� $��2�� � ColumnDefinitions �� $��110px ��� .+��� .+��� $��14(�$��電腦名稱:�� �� Left$ 40��
 �� Top$ 25���� $��16(�$	��IP:��$ 81��$ 65���� $��16(�$��密碼:��$ 63��$	 105���� $��1��.+��� -    ��Name$ txtBlockHostName��$��16(�$�� ��$ 10��$ 24���� -   $ txtBlockHostIP��$��16(�$�� ��$ 10��$ 65���� -   $ txtBlockVNCPasswd��$��16(�$�� ��$ 10��$	 105��� $��3�� �� �� .+�� -   	 �Name$	 progressBar1��
 � IsIndeterminate
 . $
��20px��$
��80px��$y�Hidden=��� -	   $��btnCloseApp��$��1��$
��25px��$
��70px��$��16(�.��關閉� $��4��.+��� .@��� $��
  狀態: ��$��12(��� -
   $ txtBlockStatus��$��12(�