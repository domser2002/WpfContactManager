   M S B A M L   `   `   `  ����>  :sol, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullclr-namespace:solsol  5   	   O Kmscorlib, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e0891&clr-namespace:System;assembly=mscorlibSystem 5   	       sol.AddContactWindow   5   	   W SPresentationCore, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=6.0.2.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5   	   R NSystem.Xaml, Version=6.0.2.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   #localclr-namespace:sol     5   	   9System&clr-namespace:System;assembly=mscorlib     5   	     � Title$  Add contact��5	   	   $	��250��6   $	��350��6*    � WindowStartupLocation$ CenterScreen=�5
   	    � 
ResizeMode$ NoResize=�6.    � ShowInTaskbar$ False��5   	    � WindowStyle$
 None=�6   
���   �$��3q�5       � 	Resources 5         
GenderList S� 
MethodName S� 
ObjectTypeU QSystem.Runtime, Version=6.0.0.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a  System.Enum S� MethodParameters	 M� TypeName��%w   &	        S� 5   
   $ 	GetValues��60   "  5       5      M� 5      $	 local:Gender��6   5      5      .��5      � 
 � RowDefinitions
 5   
   �� 5      $
��Auto �6   �� 5      $��* �6   �� 5      $
��Auto �6   .+�5   
   �� $��0��6   $��Center=�6   $��24(�6:   .��6H   Add new contact5      � 5   
   $��1��6    � ColumnDefinitions 5      �� 5       �� 5!      
 5#      �� 5$      �� 5%      �� 5&      �� 5'      �� 5(      .+�5*      �� $��0��6   $��0��6$   .��61   Name:5,      �� 5-      $��0��6   $��1��6$   .��61   
Surname:5/      �� 50      $��0��6   $��2��6$   .��61   Email:52      �� 53      $��0��6   $��3��6$   .��61   Phone:55      �� 56      $��0��6   $��4��6$   .��61   	Gender:58      �� 59      $��1��6   $��0��6&   $��24��63   ��5:      �� *Name+ �� UpdateSourceTrigger$ PropertyChanged=��� 5;      $��1��6   $��1��6&   $��24��63   ��5<      �� *	Surname+$ PropertyChanged=��� 5=      $��1��6   $��2��6&   $��24��63   ��5>      �� *Email+$ PropertyChanged=��� 5?      $��1��6   $��3��6&   $��24��63   ��5@      �� *Phone+$ PropertyChanged=��� 5A      $��1��6   $��4��6'   $��24��64   ��5B      ��  �� Source# [   �� SelectedItem 5C      ��  �� Path$ Gender�5D      �� 5E   
   $��2��6    �� Orientation$ 
Horizontal=�6"   $��Center=�5F      .+�5G      �� -   5        $	��100��5G      $��30��6!   .��6@   Add contact5I      �� 5J      -   5        $	��100��5J      $��30��6!   $��15,0,0,0q�5K      .��6'   Cancel5M      5N      5O      5P      