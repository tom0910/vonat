   M S B A M L   `   `   `  ����@  <WpfUI, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullclr-namespace:WpfUIWpfUI  5   	       WpfUI.MainWindow   5   	   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   %localclr-namespace:WpfUI     5   	   -   5        $��
mainWindow��5   	     � Title$!  hív a vasút, vár a MÁV!��5   	   $	��700��6)   $	��800��69   
����d� � WindowStartupLocation$ CenterScreen=�5
   	    � WindowState$ 	Maximized=�5   	   $��18(�5   	   .��5      �� $
��Auto=�6   .��5      ]� -   5        $��mainContainer��5      ��.  $��30q�5      
����d�.+�5   
   �� $	��Top=�6   .+�5      �� $
��Bold"�6   $��25(�6*   %#Válaszzon a lehetőségek közül:6X   5      � 5   
   $	��Top=�6    � RowDefinitions 5      �� 5       � ColumnDefinitions 5      �� 5      �� 5      �� 5       .+�5#      �� -   5        $��CityContainer��5#      $��0��6.   $��0��6;    �� Orientation$ Vertical=�6K   .+�5$      �� 
������ ���	#00ABADB3.��6K   Hová szeretne utazni?6b   	� 5%      -   5        $��Budapest��5%      $��0,10,0,0q�6C   .��6V   
Budapest6`   	� 5&      -   5        $��Hatvan��5&      $��0,10,0,0q�6A   .��6S   Hatvan6[   	� 5'      -   5        $��Székesfehérvár��5'      $��0,10,0,0q�6I   .��6[   Székesfehérvár6k   	� 5(      -   5        $��
Kecskemét��5(      $��0,10,0,0q�6D   .��6V   
Kecskemét6a   5*      �� 5+      $��0��6   $��1��6&   $ Vertical=�66   .+�5,      �� 
������ ���	#00ABADB3.��6K    Milyen kedvezményre jogosult?6j   	� 5-      -   5        $��Nappali��5-      $
��Left=�6@   $��0,10,0,0q�6[   .��6m   Nappali tagozatos diák6�   	� 5.      -	   5        $��
Nyugdíjas��5.      $
��Left=�6B   $��0,10,0,0q�6]   .��6o   
Nyugdíjas6z   	� 5/      -
   5        $��
Törzsutas��5/      $
��Left=�6B   $��0,10,0,0q�6]   .��6o   Tőrzsutas kártya6�   51      �� 52      $��0��6   $��2��6&   $
��Left=�66   $ Vertical=�6L   .+�53      �� 
������ ���	#00ABADB3.��6K   (&Milyen egyéb szolgáltatásokat kér?6o   �� 54      -   5        $��Kutya��54      $��0,10,0,0q�6_   .��6q   Kutyám van6}   �� 55      -   5        $��Bicikli��55      $��0,10,0,0q�6`   .��6r   Biciklim van6�   �� 56      -   5        $��	Poggyász��56      $��0,10,0,0q�6a   .��6s   !Túlméretezett Poggyászom van6�   58      5:      �� 5;   
   $	��Top=�6   .+�5<      �� $��Images/mavGeneral.jpg��6   $��UniformToFill=�63   5>      5@      �� 5A   
   $	��Top=�5B      $ 
Horizontal=�5C      $
��Left=�5D      $��20q�5E      .+�5F      �� 
������ $
��Left=�5H      $��0,0,20,0q�5I      $��24��6#   ���	#00ABADB3.��6G   Összköltség:5K      �� 5L      -   5        $��total��5L      
������ $
��Left=�5N      $
��Bold"�5O      ���	#00ABADB3.��5P      525 Ft5Q      5R      �� 5S   
   $��Bottom=�6   $ 
Horizontal=�6-   $��Center=�6F   .+�5T      �� -   5        $��1q�5T   (   
����  �$	��200��6T   $��40��6c   $��	0,0,50,20q�6r   $
��Left=�6�   .��6�   Jegy nyomtatása5V      �� 5W      -   5        $��1q�5W   (   
����  �$	��200��6S   $��40��6b   $��	50,0,0,20q�6q   $��Right=�6�   .��6�   
Törlés5Y      5Z      5[      5\      5^      