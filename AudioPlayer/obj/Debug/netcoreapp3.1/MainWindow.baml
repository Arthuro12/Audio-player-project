   M S B A M L   `   `   `  ����F  BAudioPlayer, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null)clr-namespace:AudioPlayerAudioPlayer  5   	       AudioPlayer.MainWindow   5   	   W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   +localclr-namespace:AudioPlayer     5   	   _ [MaterialDesignThemes.Wpf, Version=4.5.0.0, Culture=neutral, PublicKeyToken=df2a72020bd7962aFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes  5	   	     � Title$  Let.it.play��5   	   $	��240��6   $	��520��6*    � Icon$ /headphones.png��66    � 
ResizeMode$ 	CanResize=�6M      MaterialDesignBody#���   5
   	   $��Regular"�5   	   $��13(�5   	   &   System.Windows.Media.TextOptions   TextFormattingMode$ Ideal=�5   	      TextRenderingMode$
 Auto=�5   	     MaterialDesignPaper#���  5   	     MaterialDesignFont#���  5   	   .��5      � $��Stretch=�6   $��Stretch=�6'    � RowDefinitions 5   
   �� 5      $��20 �6   6*   �� 5      $��60 �6   6*   �� 5      6   �� 5      $��70 �6   6*    � ColumnDefinitions 5   
   �� 5      6!   �� 5      6!   �� 5      6!   .+�5   
   �� $��0��6   $��0��6!   $��3��61      MaterialDesignTitleTextBlock#���  6E   $��Center=�6|   $��Center=�6�   $��Arial)�6�   $
��Bold"�6�   Audio Player6�   �� 5   
   -   5         ��Name$ filePath��5      $��1��6$   $��0��61   $��2��6A   $��
1, 1, 1, 1q�6U   $��10,10,10,20q�6r   $��Arial)�6�    �� 
IsReadOnly$
 True��6�   	 � Cursor$	 Arrow��6�   .��6�   Open an mp3 file6�   �� 5   
   -   5        
 ��Name$
 openFile��5      $��1��6#   $��2��60   $��10,10,10,18q�6@   $��Arial)�6U   $��12(�6h   $��1,1,1,1q�6v   $
	 Hand��6�   .��6�   Open6�   �� 5    
   -   5        $

 play��5       $��2��6   $��0��6,   $��
10,0,10,21q�6<   $��Arial)�6P   $��12(�6c   $��1,1,1,1q�6q   $
	 Hand��6�   .��6�   Play6�   �� 5!   
   -   5        $
 pause��5!      $��2��6    $��1��6-   $��
10,1,10,21q�6=   $��Arial)�6Q   $��12(�6d   $��1,1,1,1q�6r   $
	 Hand��6�   .��6�   Pause6�   �� 5"   
   -   5        $

 stop��5"      $��2��6   $��2��6,   $��
10,0,10,19q�6<   $��Arial)�6P   $��12(�6c   $��1,1,1,1q�6q   $
	 Hand��6�   .��6�   Stop6�   �� 5#   
   -   5         ��Name$ volume��5#      $��3��6!   $��0��6.   $��3��6>   $��
10,5,10,45q�6R    � Minimum$ 0Q�6f    � Maximum$	 100Q�6r    � Value$ 50Q�6�   6�   � 5$   
   -   5         �Name$ progressBar��5$      $��3��6+   $��0��68   $��3��6H   $ 0Q�6\   $ 0Q�6f   $	 100Q�6r   $��10,34,10,10q�6�   $��20��6�   5%      5&      