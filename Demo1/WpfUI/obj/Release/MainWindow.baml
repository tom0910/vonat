   M S B A M L   `   `   `  ���� @  <WpfUI, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullclr-namespace:WpfUIWpfUI      WpfUI.MainWindow   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     @d2http://schemas.microsoft.com/expression/blend/2008     Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     %localclr-namespace:WpfUI     -   $��
mainWindow��  � Title$!  hív a vasút, vár a MÁV!��$	��700��$	��800��
����d� � WindowStartupLocation$ CenterScreen=� � WindowState$ 	Maximized=�$��18(�.���� $
��Auto=�.��]� -   $��mainContainer����.  $��30q�
����d�.+��� $	��Top=�.+��� $
��Bold"�$��25(�%#Válaszzon a lehetőségek közül:� $	��Top=� � RowDefinitions ��  � ColumnDefinitions �� �� �� .+��� -   $��CityContainer��$��0��$��0�� �� Orientation$ Vertical=�.+��� 
������ ���	#00ABADB3.��Hová szeretne utazni?	� -   $��Budapest��$��0,10,0,0q�.��
Budapest	� -   $��Hatvan��$��0,10,0,0q�.��Hatvan	� -   $��Székesfehérvár��$��0,10,0,0q�.��Székesfehérvár	� -   $��
Kecskemét��$��0,10,0,0q�.��
Kecskemét�� $��0��$��1��$ Vertical=�.+��� 
������ ���	#00ABADB3.�� Milyen kedvezményre jogosult?	� -   $��Nappali��$
��Left=�$��0,10,0,0q�.��Nappali tagozatos diák	� -	   $��
Nyugdíjas��$
��Left=�$��0,10,0,0q�.��
Nyugdíjas	� -
   $��
Törzsutas��$
��Left=�$��0,10,0,0q�.��Tőrzsutas kártya�� $��0��$��2��$
��Left=�$ Vertical=�.+��� 
������ ���	#00ABADB3.��(&Milyen egyéb szolgáltatásokat kér?�� -   $��Kutya��$��0,10,0,0q�.��Kutyám van�� -   $��Bicikli��$��0,10,0,0q�.��Biciklim van�� -   $��	Poggyász��$��0,10,0,0q�.��!Túlméretezett Poggyászom van�� $	��Top=�.+��� $��Images/mavGeneral.jpg��$��UniformToFill=��� $	��Top=�$ 
Horizontal=�$
��Left=�$��20q�.+��� 
������ $
��Left=�$��0,0,20,0q�$��24�����	#00ABADB3.��Összköltség:�� -   $��total��
������ $
��Left=�$
��Bold"����	#00ABADB3.��525 Ft�� $��Bottom=�$ 
Horizontal=�$��Center=�.+��� -   $��1q�
����  �$	��200��$��40��$��	0,0,50,20q�$
��Left=�.��Jegy nyomtatása�� -   $��1q�
����  �$	��200��$��40��$��	50,0,0,20q�$��Right=�.��
Törlés