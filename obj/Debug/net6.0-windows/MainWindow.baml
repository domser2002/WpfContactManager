   M S B A M L   `   `   `  ����>  :sol, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullclr-namespace:solsol  5   	       sol.MainWindow   5   	   W SPresentationCore, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=6.0.2.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5   	   R NSystem.Xaml, Version=6.0.2.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   #localclr-namespace:sol     5   	     � Title$  Contact Manager��5   	   $	��800��6!   $	��600��6.   $	��500��5	   	   $	��500��6    � 	Resources 5         	ManAvatar �� 	UriSource  WomanAvatar  ContactListItemTemplate �� DataType � ColumnDefinitions �� Orientation �� 
TargetType �� Triggers �� Binding	 �� Value
 �� Property �� Value  ContactsViewSource �� Source  ContactListItemStyle P� Property P� Value��%  &	        &	 ,     &	 Z     7   7  &	 �    &	 �    �� 5   
   $ /Resources/man.png?�6(   �� 5   
   $ /Resources/woman.jpg?�6*   �� 5   
   $ ListBoxItem��67   .R�5      � $��Stretch=�6    5      �� 5      $��* �6'   �� 5      $
��Auto �6'   .+�5      �� $��0��6   $ 
Horizontal=�6-   $��Center=�5      $��Center=�6.   .+�5      �� $��20(�65   $��3,0,0,0q�6C   ��6   �� *Name+6C   �� 5      $��20(�68   $��3,0,0,0q�6F   ��6   �� *	Surname+6F   5      �� 5      $��2��6   $��Center=�6)   $��50��6D   $��50��6O   
���   �$��1q�5   -   $��3q�6A   ._�5      �� $
��Fill=�6   ��5      �� 5      " ��6$    5   "   �� 5   &    62   �� *Gender+	 Male6M   .a�5    *   �� 
 � ��8   6C   5!   '   �� 5"   &    62   �� *Gender+
	 Female6M   .a�5#   *   �� 
 � ��8  6C   5$   '   5&      5(      5)      5*      5+      �� 5,   
    6   �� 62   �� 5-   
   " ��6-    5.      P� 5/       �@��AlternationIndex$ 0��6C   . �50      �� 
 � �� �	#FFAFC5FF63   51      P� 52       �@��AlternationIndex$ 1��6C   . �53      �� 
 � �� �	#FF75A1FF63   54      56      57      .��58      �  � RowDefinitions 59   
   �� 5:      $
��Auto �6   �� 5;      $��* �6   .+�5=   
   o� $��0��6   .@�5>      m� $
��File��6   .@�5?      m� -   5        $��Import��5?      $
{�True��6+   6<   m� 5@      -   5        $��Export��5@      $
{�True��6+   6<   �� 5A      m� 5B      -   5        $
��Exit��5B      6)   5C      m� 5D      $��Contacts��6   .@�5E      m� -   5        $��Add contact��5E      60   m� 5F      -   5        $��Clear contacts��5F      63   5G      m� 5H      -   5        $��About��5H      6&   5I      �� 5J   
   $��1��6   .@�5K      �� $
��List��6   .��5L      �� #��[ 5M      #��[ 5N       �� AlternationCount$ 2��5O      $��Stretch=�5P      ��5L      ��  �� Source# [ 5P      5Q      �� 5R      $
��Grid��6   .��5S      &   System.Windows.Controls.DataGrid     AutoGenerateColumns$
 True��63      CanUserAddRows$
 True��6N   ��6   �� 6N   5T      5U      5V      5W      