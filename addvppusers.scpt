FasdUAS 1.101.10   ��   ��    k             l     ��  ��     
!/bin/bash     � 	 	  ! / b i n / b a s h   
  
 l     ��  ��    i c###################################################################################################     �   � # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # #      l     ��������  ��  ��        l     ��  ��    D > Copyright (c) 2015, JAMF Software, LLC.  All rights reserved.     �   |   C o p y r i g h t   ( c )   2 0 1 5 ,   J A M F   S o f t w a r e ,   L L C .     A l l   r i g h t s   r e s e r v e d .      l     ��������  ��  ��        l     ��  ��    O I       Redistribution and use in source and binary forms, with or without     �   �               R e d i s t r i b u t i o n   a n d   u s e   i n   s o u r c e   a n d   b i n a r y   f o r m s ,   w i t h   o r   w i t h o u t      l     ��   ��    X R       modification, are permitted provided that the following conditions are met:      � ! ! �               m o d i f i c a t i o n ,   a r e   p e r m i t t e d   p r o v i d e d   t h a t   t h e   f o l l o w i n g   c o n d i t i o n s   a r e   m e t :   " # " l     �� $ %��   $ U O               * Redistributions of source code must retain the above copyright    % � & & �                               *   R e d i s t r i b u t i o n s   o f   s o u r c e   c o d e   m u s t   r e t a i n   t h e   a b o v e   c o p y r i g h t #  ' ( ' l     �� ) *��   ) T N                 notice, this list of conditions and the following disclaimer.    * � + + �                                   n o t i c e ,   t h i s   l i s t   o f   c o n d i t i o n s   a n d   t h e   f o l l o w i n g   d i s c l a i m e r . (  , - , l     �� . /��   . X R               * Redistributions in binary form must reproduce the above copyright    / � 0 0 �                               *   R e d i s t r i b u t i o n s   i n   b i n a r y   f o r m   m u s t   r e p r o d u c e   t h e   a b o v e   c o p y r i g h t -  1 2 1 l     �� 3 4��   3 Z T                 notice, this list of conditions and the following disclaimer in the    4 � 5 5 �                                   n o t i c e ,   t h i s   l i s t   o f   c o n d i t i o n s   a n d   t h e   f o l l o w i n g   d i s c l a i m e r   i n   t h e 2  6 7 6 l     �� 8 9��   8 [ U                 documentation and/or other materials provided with the distribution.    9 � : : �                                   d o c u m e n t a t i o n   a n d / o r   o t h e r   m a t e r i a l s   p r o v i d e d   w i t h   t h e   d i s t r i b u t i o n . 7  ; < ; l     �� = >��   = I C               * Neither the name of the JAMF Software, LLC nor the    > � ? ? �                               *   N e i t h e r   t h e   n a m e   o f   t h e   J A M F   S o f t w a r e ,   L L C   n o r   t h e <  @ A @ l     �� B C��   B [ U                 names of its contributors may be used to endorse or promote products    C � D D �                                   n a m e s   o f   i t s   c o n t r i b u t o r s   m a y   b e   u s e d   t o   e n d o r s e   o r   p r o m o t e   p r o d u c t s A  E F E l     �� G H��   G \ V                 derived from this software without specific prior written permission.    H � I I �                                   d e r i v e d   f r o m   t h i s   s o f t w a r e   w i t h o u t   s p e c i f i c   p r i o r   w r i t t e n   p e r m i s s i o n . F  J K J l     ��������  ��  ��   K  L M L l     �� N O��   N L F       THIS SOFTWARE IS PROVIDED BY JAMF SOFTWARE, LLC "AS IS" AND ANY    O � P P �               T H I S   S O F T W A R E   I S   P R O V I D E D   B Y   J A M F   S O F T W A R E ,   L L C   " A S   I S "   A N D   A N Y M  Q R Q l     �� S T��   S V P       EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED    T � U U �               E X P R E S S   O R   I M P L I E D   W A R R A N T I E S ,   I N C L U D I N G ,   B U T   N O T   L I M I T E D   T O ,   T H E   I M P L I E D R  V W V l     �� X Y��   X S M       WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE    Y � Z Z �               W A R R A N T I E S   O F   M E R C H A N T A B I L I T Y   A N D   F I T N E S S   F O R   A   P A R T I C U L A R   P U R P O S E   A R E W  [ \ [ l     �� ] ^��   ] O I       DISCLAIMED. IN NO EVENT SHALL JAMF SOFTWARE, LLC BE LIABLE FOR ANY    ^ � _ _ �               D I S C L A I M E D .   I N   N O   E V E N T   S H A L L   J A M F   S O F T W A R E ,   L L C   B E   L I A B L E   F O R   A N Y \  ` a ` l     �� b c��   b W Q       DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES    c � d d �               D I R E C T ,   I N D I R E C T ,   I N C I D E N T A L ,   S P E C I A L ,   E X E M P L A R Y ,   O R   C O N S E Q U E N T I A L   D A M A G E S a  e f e l     �� g h��   g Y S       (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES;    h � i i �               ( I N C L U D I N G ,   B U T   N O T   L I M I T E D   T O ,   P R O C U R E M E N T   O F   S U B S T I T U T E   G O O D S   O R   S E R V I C E S ; f  j k j l     �� l m��   l X R       LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND    m � n n �               L O S S   O F   U S E ,   D A T A ,   O R   P R O F I T S ;   O R   B U S I N E S S   I N T E R R U P T I O N )   H O W E V E R   C A U S E D   A N D k  o p o l     �� q r��   q W Q       ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT    r � s s �               O N   A N Y   T H E O R Y   O F   L I A B I L I T Y ,   W H E T H E R   I N   C O N T R A C T ,   S T R I C T   L I A B I L I T Y ,   O R   T O R T p  t u t l     �� v w��   v Z T       (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS    w � x x �               ( I N C L U D I N G   N E G L I G E N C E   O R   O T H E R W I S E )   A R I S I N G   I N   A N Y   W A Y   O U T   O F   T H E   U S E   O F   T H I S u  y z y l     �� { |��   { I C       SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.    | � } } �               S O F T W A R E ,   E V E N   I F   A D V I S E D   O F   T H E   P O S S I B I L I T Y   O F   S U C H   D A M A G E . z  ~  ~ l     ��������  ��  ��     � � � l     �� � ���   �  #############    � � � �  # # # # # # # # # # # # # �  � � � l     �� � ���   � 6 0API script for adding VPP Users from spreadsheet    � � � � ` A P I   s c r i p t   f o r   a d d i n g   V P P   U s e r s   f r o m   s p r e a d s h e e t �  � � � l     �� � ���   � A ; Trey Howell, Professional Services Engineer, JAMF Software    � � � � v   T r e y   H o w e l l ,   P r o f e s s i o n a l   S e r v i c e s   E n g i n e e r ,   J A M F   S o f t w a r e �  � � � l     �� � ���   � � � CSV must have 3 columns first being username second being Full name and third being Email   a field can be blank but must exist    � � � �    C S V   m u s t   h a v e   3   c o l u m n s   f i r s t   b e i n g   u s e r n a m e   s e c o n d   b e i n g   F u l l   n a m e   a n d   t h i r d   b e i n g   E m a i l       a   f i e l d   c a n   b e   b l a n k   b u t   m u s t   e x i s t �  � � � l     �� � ���   �        � � � �      �  � � � l     ��������  ��  ��   �  � � � l     �� � ���   � A ;###########################################################    � � � � v # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # �  � � � l     ��������  ��  ��   �  � � � l     ��������  ��  ��   �  � � � l     �� � ���   � " ####Ask for JSS API Username    � � � � 8 # # # # A s k   f o r   J S S   A P I   U s e r n a m e �  � � � l     ����� � I    �� � �
�� .sysodlogaskr        TEXT � m      � � � � � . E n t e r   J S S   A P I   U s e r n a m e : � �� ���
�� 
dtxt � m     � � � � �  U s e r n a m e��  ��  ��   �  � � � l    ����� � r     � � � n     � � � 1   	 ��
�� 
ttxt � 1    	��
�� 
rslt � o      ���� 0 	your_user  ��  ��   �  � � � l     ��������  ��  ��   �  � � � l     �� � ���   � # #####Ask for JSS API Password    � � � � : # # # # # A s k   f o r   J S S   A P I   P a s s w o r d �  � � � l    ����� � I   �� � �
�� .sysodlogaskr        TEXT � m     � � � � � , E n t e r   J S S   A P I   p a s s w o r d � �� � �
�� 
dtxt � m     � � � � �  P a s s w o r d � �� � �
�� 
disp � m    ��
�� stic     � �� ���
�� 
htxt � m    ��
�� boovtrue��  ��  ��   �  � � � l    ����� � r     � � � n     � � � 1    ��
�� 
ttxt � 1    ��
�� 
rslt � o      ���� 0 your_password  ��  ��   �  � � � l     ��������  ��  ��   �  � � � l     �� � ���   �  ######Ask for JSS Address    � � � � 2 # # # # # # A s k   f o r   J S S   A d d r e s s �  � � � l    ' ����� � I    '�� � �
�� .sysodlogaskr        TEXT � m     ! � � � � � D E n t e r   J S S   A d d r e s s :   N O   E N D I N G   S L A S H � �� ���
�� 
dtxt � m   " # � � � � � , h t t p s : / / m y j s s . c o m : 8 4 4 3��  ��  ��   �  � � � l  ( / ����� � r   ( / � � � n   ( + � � � 1   ) +��
�� 
ttxt � 1   ( )��
�� 
rslt � o      ���� 0 your_jss  ��  ��   �  � � � l     ��������  ��  ��   �  � � � l     �� � ���   �  #####Looking for Path    � � � � * # # # # # L o o k i n g   f o r   P a t h �  � � � l  0 ? ����� � r   0 ? � � � l  0 ; ����� � I  0 ;���� �
�� .sysostdfalis    ��� null��   � �� ���
�� 
prmp � m   4 7 � � � � � r S e l e c t   t h e   C S V   f i l e   w i t h   j u s t   S e r i a l   N u m b e r   a n d   A s s e t   T a g��  ��  ��   � o      ���� 0 thefile theFile��  ��   �  �  � l     ��������  ��  ��     l     ����    ## Read the Data    �   # #   R e a d   t h e   D a t a  l  @ K���� r   @ K	
	 I  @ G����
�� .rdwrread****        **** o   @ C���� 0 thefile theFile��  
 o      ���� 0 f  ��  ��    l     ��������  ��  ��    l     ����    ### Break data into rows    � 0 # # #   B r e a k   d a t a   i n t o   r o w s  l  L ����� X   L ��� k   f �  l  f f��������  ��  ��    l  f f����   $ ###parse from comma Delimited     � < # # # p a r s e   f r o m   c o m m a   D e l i m i t e d    !  r   f t"#" I   f p�$�~� 0 parsecsv parseCSV$ %�}% c   g l&'& o   g h�|�| 0 row  ' m   h k�{
�{ 
ctxt�}  �~  # o      �z�z 
0 fields  ! ()( l  u u�y�x�w�y  �x  �w  ) *+* l  u u�v,-�v  , ! ###Set Rows for Data Fields   - �.. 6 # # # S e t   R o w s   f o r   D a t a   F i e l d s+ /0/ r   u �121 n   u }343 4   x }�u5
�u 
cobj5 m   { |�t�t 4 o   u x�s�s 
0 fields  2 o      �r�r 
0 vppusr  0 676 r   � �898 n   � �:;: 4   � ��q<
�q 
cobj< m   � ��p�p ; o   � ��o�o 
0 fields  9 o      �n�n 0 fullnme  7 =>= r   � �?@? n   � �ABA 4   � ��mC
�m 
cobjC m   � ��l�l B o   � ��k�k 
0 fields  @ o      �j�j 0 emil  > DED l  � ��i�h�g�i  �h  �g  E FGF l  � ��f�e�d�f  �e  �d  G HIH l  � ��cJK�c  J < 6#### Setting Variable for xml file with asset variable   K �LL l # # # #   S e t t i n g   V a r i a b l e   f o r   x m l   f i l e   w i t h   a s s e t   v a r i a b l eI MNM r   � �OPO b   � �QRQ b   � �STS b   � �UVU b   � �WXW b   � �YZY b   � �[\[ n   � �]^] 1   � ��b
�b 
strq^ m   � �__ �``  < u s e r > < n a m e >\ o   � ��a�a 
0 vppusr  Z n   � �aba 1   � ��`
�` 
strqb m   � �cc �dd $ < / n a m e > < f u l l _ n a m e >X o   � ��_�_ 0 fullnme  V n   � �efe 1   � ��^
�^ 
strqf m   � �gg �hh & < / f u l l _ n a m e > < e m a i l >T o   � ��]�] 0 emil  R n   � �iji 1   � ��\
�\ 
strqj m   � �kk �ll  < / e m a i l > < / u s e r >P o      �[�[ 0 dd  N mnm l  � ��Z�Y�X�Z  �Y  �X  n opo l  � ��Wqr�W  q ; 5##### This creates the XML file that will be imported   r �ss j # # # # #   T h i s   c r e a t e s   t h e   X M L   f i l e   t h a t   w i l l   b e   i m p o r t e dp tut I  � ��Vv�U
�V .sysoexecTEXT���     TEXTv b   � �wxw b   � �yzy m   � �{{ �|| 
 e c h o  z o   � ��T�T 0 dd  x m   � �}} �~~ $   >   / t m p / v p p u s r . x m l�U  u � l  � ��S�R�Q�S  �R  �Q  � ��� l  � ��P���P  � - '##########This Writes the XML and loops   � ��� N # # # # # # # # # # T h i s   W r i t e s   t h e   X M L   a n d   l o o p s� ��� I  � ��O��N
�O .sysoexecTEXT���     TEXT� b   � ���� b   � ���� b   � ���� b   � ���� b   � ���� b   � ���� m   � ��� ���  c u r l   - k   - s   - u  � o   � ��M�M 0 	your_user  � m   � ��� ���  :� o   � ��L�L 0 your_password  � m   � ��� ���   � o   � ��K�K 0 your_jss  � m   � ��� ��� f / J S S R e s o u r c e / u s e r s / i d / 0     - T   / t m p / v p p u s r . x m l   - X   P O S T�N  � ��J� l  � ��I���I  �  ### stop Loop once done   � ��� . # # #   s t o p   L o o p   o n c e   d o n e�J  �� 0 row   l  O V��H�G� n   O V��� 2  R V�F
�F 
cpar� o   O R�E�E 0 f  �H  �G  ��  ��   ��� l     �D�C�B�D  �C  �B  � ��� l     �A���A  � % ####needed for parseing the CSV   � ��� > # # # # n e e d e d   f o r   p a r s e i n g   t h e   C S V� ��� i     ��� I      �@��?�@ 0 parsecsv parseCSV� ��>� o      �=�= 0 thetext theText�>  �?  � k     &�� ��� r     ��� J     �� ��� n    ��� 1    �<
�< 
txdl�  f     � ��;� m    �� ���  ,�;  � J      �� ��� o      �:�: 0 od  � ��9� n     ��� 1    �8
�8 
txdl�  f    �9  � ��� r    ��� n    ��� 2   �7
�7 
citm� o    �6�6 0 thetext theText� o      �5�5 0 
parsedtext 
parsedText� ��� r    #��� o    �4�4 0 od  � n     ��� 1     "�3
�3 
txdl�  f     � ��2� L   $ &�� o   $ %�1�1 0 
parsedtext 
parsedText�2  � ��� l     �0�/�.�0  �/  �.  � ��� l     �-�,�+�-  �,  �+  � ��*� l     �)�(�'�)  �(  �'  �*       �&����&  � �%�$�% 0 parsecsv parseCSV
�$ .aevtoappnull  �   � ****� �#��"�!��� �# 0 parsecsv parseCSV�" ��� �  �� 0 thetext theText�!  � ���� 0 thetext theText� 0 od  � 0 
parsedtext 
parsedText� ����
� 
txdl
� 
cobj
� 
citm�  ')�,�lvE[�k/E�Z[�l/)�,FZO��-E�O�)�,FO�� �������
� .aevtoappnull  �   � ****� k     ���  ���  ���  ���  ���  ���  ���  ��� �� ��  �  �  � �� 0 row  � . �� ����� � ����
�	� � ��� ������� ����������������_��cgk��{}������
� 
dtxt
� .sysodlogaskr        TEXT
� 
rslt
� 
ttxt� 0 	your_user  
� 
disp
� stic    
�
 
htxt�	 � 0 your_password  � 0 your_jss  
� 
prmp
� .sysostdfalis    ��� null� 0 thefile theFile
� .rdwrread****        ****� 0 f  
� 
cpar
�  
kocl
�� 
cobj
�� .corecnte****       ****
�� 
ctxt�� 0 parsecsv parseCSV�� 
0 fields  �� 
0 vppusr  �� 0 fullnme  �� 0 emil  
�� 
strq�� 0 dd  
�� .sysoexecTEXT���     TEXT� ����l O��,E�O������e� O��,E�O���l O��,E` O*a a l E` O_ j E` O �_ a -[a a l kh  *�a &k+ E` O_ a k/E` O_ a l/E` O_ a m/E`  Oa !a ",_ %a #a ",%_ %a $a ",%_  %a %a ",%E` &Oa '_ &%a (%j )Oa *�%a +%�%a ,%_ %a -%j )OP[OY�gascr  ��ޭ