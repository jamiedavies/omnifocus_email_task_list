FasdUAS 1.101.10   ��   ��    k             l     ��  ��    X R----------------------------------------------------------------------------------     � 	 	 � - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -   
  
 l     ��  ��    "  Omnifocus Daily Task Email      �   8   O m n i f o c u s   D a i l y   T a s k   E m a i l        l     ��  ��    X R----------------------------------------------------------------------------------     �   � - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -      l     ��  ��    < 6 Script name: Email OmniFocus Tasks, Inbox and Flagged     �   l   S c r i p t   n a m e :   E m a i l   O m n i F o c u s   T a s k s ,   I n b o x   a n d   F l a g g e d      l     ��  ��      Version 1.0     �      V e r s i o n   1 . 0      l     ��   !��     6 0 Written By: Jamie Davies  http://jamiedavies.co    ! � " " `   W r i t t e n   B y :   J a m i e   D a v i e s     h t t p : / / j a m i e d a v i e s . c o   # $ # l     �� % &��   %       & � ' '    $  ( ) ( l     �� * +��   *   Version History:    + � , , "   V e r s i o n   H i s t o r y : )  - . - l     �� / 0��   / / ) 	1.0 - Initial release [28th July 2016]     0 � 1 1 R   	 1 . 0   -   I n i t i a l   r e l e a s e   [ 2 8 t h   J u l y   2 0 1 6 ]   .  2 3 2 l     ��������  ��  ��   3  4 5 4 l     �� 6 7��   6 R L Sends email outlining all tasks that as due or overdue on a particular day.    7 � 8 8 �   S e n d s   e m a i l   o u t l i n i n g   a l l   t a s k s   t h a t   a s   d u e   o r   o v e r d u e   o n   a   p a r t i c u l a r   d a y . 5  9 : 9 l     �� ; <��   ; m g Can also send all Flagged tasks, all tasks in the Inbox and all tasks that are in a specific context.     < � = = �   C a n   a l s o   s e n d   a l l   F l a g g e d   t a s k s ,   a l l   t a s k s   i n   t h e   I n b o x   a n d   a l l   t a s k s   t h a t   a r e   i n   a   s p e c i f i c   c o n t e x t .   :  > ? > l     ��������  ��  ��   ?  @ A @ l     �� B C��   B 6 0 This script is based on some of the code from:     C � D D `   T h i s   s c r i p t   i s   b a s e d   o n   s o m e   o f   t h e   c o d e   f r o m :   A  E F E l     �� G H��   G m g > here: http://www.tuaw.com/2013/02/18/applescripting-omnifocus-send-completed-task-report-to-evernot/    H � I I �   >   h e r e :   h t t p : / / w w w . t u a w . c o m / 2 0 1 3 / 0 2 / 1 8 / a p p l e s c r i p t i n g - o m n i f o c u s - s e n d - c o m p l e t e d - t a s k - r e p o r t - t o - e v e r n o t / F  J K J l     �� L M��   L B < > and here: https://brooksreview.net/2015/07/daily-emails/     M � N N x   >   a n d   h e r e :   h t t p s : / / b r o o k s r e v i e w . n e t / 2 0 1 5 / 0 7 / d a i l y - e m a i l s /   K  O P O l     ��������  ��  ��   P  Q R Q l     �� S T��   S X R----------------------------------------------------------------------------------    T � U U � - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - R  V W V l     ��������  ��  ��   W  X Y X l     �� Z [��   Z . (----------------------------------------    [ � \ \ P - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - Y  ] ^ ] l     �� _ `��   _ &   Script Settings [Change These]     ` � a a @   S c r i p t   S e t t i n g s   [ C h a n g e   T h e s e ]   ^  b c b l     �� d e��   d . (----------------------------------------    e � f f P - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - c  g h g l     ��������  ��  ��   h  i j i l     �� k l��   k * $ Where is the email being sent to ?     l � m m H   W h e r e   i s   t h e   e m a i l   b e i n g   s e n t   t o   ?   j  n o n j     �� p�� 0 	toaddress 	toAddress p m      q q � r r * j a m i e d a v i e s @ g m a i l . c o m o  s t s l     ��������  ��  ��   t  u v u l     �� w x��   w > 8 Do you want to email all flagged tasks? (true / false)     x � y y p   D o   y o u   w a n t   t o   e m a i l   a l l   f l a g g e d   t a s k s ?   ( t r u e   /   f a l s e )   v  z { z j    �� |�� 0 	isflagged 	isFlagged | m    ��
�� boovtrue {  } ~ } l     ��������  ��  ��   ~   �  l     �� � ���   � ; 5 Do you want to email all inbox tasks? (true / false)    � � � � j   D o   y o u   w a n t   t o   e m a i l   a l l   i n b o x   t a s k s ?   ( t r u e   /   f a l s e ) �  � � � j    �� ��� 0 isinbox isInbox � m    ��
�� boovtrue �  � � � l     ��������  ��  ��   �  � � � l     �� � ���   � O I Do you want to email all actions from a specific context? (true / false)    � � � � �   D o   y o u   w a n t   t o   e m a i l   a l l   a c t i o n s   f r o m   a   s p e c i f i c   c o n t e x t ?   ( t r u e   /   f a l s e ) �  � � � j   	 �� ��� 0 isasap isASAP � m   	 
��
�� boovtrue �  � � � l     �� � ���   �   What context?     � � � �    W h a t   c o n t e x t ?   �  � � � j    �� ��� 0 pcontext pContext � m     � � � � � 
 @ A S A P �  � � � l     ��������  ��  ��   �  � � � l     �� � ���   � ; 5 How many characters of any note should be presented?    � � � � j   H o w   m a n y   c h a r a c t e r s   o f   a n y   n o t e   s h o u l d   b e   p r e s e n t e d ? �  � � � j    �� ��� 0 maxnotechars maxNoteChars � m    ���� � �  � � � l     ��������  ��  ��   �  � � � l     �� � ���   � . (----------------------------------------    � � � � P - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - �  � � � l     �� � ���   � . ( Stop editing or the sky might fall in      � � � � P   S t o p   e d i t i n g   o r   t h e   s k y   m i g h t   f a l l   i n     �  � � � l     �� � ���   � . (----------------------------------------    � � � � P - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - �  � � � l     ��������  ��  ��   �  � � � l     ��������  ��  ��   �  � � � l     �� � ���   � - ' Calculate the task start and end dates    � � � � N   C a l c u l a t e   t h e   t a s k   s t a r t   a n d   e n d   d a t e s �  � � � l     ����� � r      � � � I    ������
�� .misccurdldt    ��� null��  ��   � o      ���� 0 thestartdate theStartDate��  ��   �  � � � l    ����� � r     � � � m    	����   � n       � � � 1   
 ��
�� 
hour � o   	 
���� 0 thestartdate theStartDate��  ��   �  � � � l    ����� � r     � � � m    ����   � n       � � � 1    ��
�� 
min  � o    ���� 0 thestartdate theStartDate��  ��   �  � � � l    ����� � r     � � � m    ����   � n       � � � m    ��
�� 
scnd � o    ���� 0 thestartdate theStartDate��  ��   �  � � � l   ' ����� � r    ' � � � [    % � � � [    # � � � [     � � � o    ���� 0 thestartdate theStartDate � l    ����� � ]     � � � m    ����  � 1    ��
�� 
hour��  ��   � l   " ����� � ]    " � � � m     ���� ; � 1     !��
�� 
min ��  ��   � m   # $���� ; � o      ���� 0 
theenddate 
theEndDate��  ��   �  � � � l  ( / ����� � r   ( / � � � l  ( - ����� � I  ( -�� ���
�� .sysoexecTEXT���     TEXT � m   ( ) � � � � �   d a t e   ' + % Y - % m - % d '��  ��  ��   � o      ���� 0 thetimestamp theTimeStamp��  ��   �  � � � l     ��������  ��  ��   �  � � � l     �� � ���   �   Set the email title     � � � � *   S e t   t h e   e m a i l   t i t l e   �  � � � l  0 5 ����� � r   0 5 � � � b   0 3 �  � m   0 1 � ( O m n i f o c u s   T a s k s   f o r    o   1 2���� 0 thetimestamp theTimeStamp � o      ���� 0 
thesubject 
theSubject��  ��   �  l     ��������  ��  ��    l     ����   , & Begin preparing the task list as HTML    �		 L   B e g i n   p r e p a r i n g   t h e   t a s k   l i s t   a s   H T M L 

 l  6 9��~ r   6 9 m   6 7 �� 
 < h t m l > 
 < h e a d > 
 < s t y l e >   
 
 	 t a b l e   a : l i n k   { 
 	 	 c o l o r :   # 6 6 6 ; 
 	 	 f o n t - w e i g h t :   b o l d ; 
 	 	 t e x t - d e c o r a t i o n : n o n e ; 
 	 } 
 	 t a b l e   a : v i s i t e d   { 
 	 	 c o l o r :   # 9 9 9 9 9 9 ; 
 	 	 f o n t - w e i g h t : b o l d ; 
 	 	 t e x t - d e c o r a t i o n : n o n e ; 
 	 } 
 	 t a b l e   a : a c t i v e , 
 	 t a b l e   a : h o v e r   { 
 	 	 c o l o r :   # b d 5 a 3 5 ; 
 	 	 t e x t - d e c o r a t i o n : u n d e r l i n e ; 
 	 } 
 	 t a b l e   { 
 	 	 f o n t - f a m i l y : A r i a l ,   H e l v e t i c a ,   s a n s - s e r i f ; 
 	 	 c o l o r : # 6 6 6 ; 
 	 	 f o n t - s i z e : 1 2 p x ; 
 	 	 t e x t - s h a d o w :   1 p x   1 p x   0 p x   # f f f ; 
 	 	 b a c k g r o u n d : # e a e b e c ; 
 	 	 b o r d e r : # c c c   1 p x   s o l i d ; 
 	 	 w i d t h : 9 5 % ;   
 	 	 - m o z - b o r d e r - r a d i u s : 3 p x ; 
 	 	 - w e b k i t - b o r d e r - r a d i u s : 3 p x ; 
 	 	 b o r d e r - r a d i u s : 3 p x ; 
 
 	 	 - m o z - b o x - s h a d o w :   0   1 p x   2 p x   # d 1 d 1 d 1 ; 
 	 	 - w e b k i t - b o x - s h a d o w :   0   1 p x   2 p x   # d 1 d 1 d 1 ; 
 	 	 b o x - s h a d o w :   0   1 p x   2 p x   # d 1 d 1 d 1 ; 
 	 } 
 	 t a b l e   t h   { 
 	 	 p a d d i n g : 5 p x   5 p x   5 p x   5 p x ; 
 	 	 b o r d e r - t o p : 1 p x   s o l i d   # f a f a f a ; 
 	 	 b o r d e r - b o t t o m : 1 p x   s o l i d   # e 0 e 0 e 0 ; 
 
 	 	 b a c k g r o u n d :   # e d e d e d ; 
 	 	 b a c k g r o u n d :   - w e b k i t - g r a d i e n t ( l i n e a r ,   l e f t   t o p ,   l e f t   b o t t o m ,   f r o m ( # e d e d e d ) ,   t o ( # e b e b e b ) ) ; 
 	 	 b a c k g r o u n d :   - m o z - l i n e a r - g r a d i e n t ( t o p ,     # e d e d e d ,     # e b e b e b ) ; 
 	 } 
 	 t a b l e   t h : f i r s t - c h i l d   { 
 	 	 t e x t - a l i g n :   l e f t ; 
 	 	 p a d d i n g - l e f t : 5 p x ; 
 	 } 
 	 t a b l e   t r : f i r s t - c h i l d   t h : f i r s t - c h i l d   { 
 	 	 - m o z - b o r d e r - r a d i u s - t o p l e f t : 3 p x ; 
 	 	 - w e b k i t - b o r d e r - t o p - l e f t - r a d i u s : 3 p x ; 
 	 	 b o r d e r - t o p - l e f t - r a d i u s : 3 p x ; 
 	 } 
 	 t a b l e   t r : f i r s t - c h i l d   t h : l a s t - c h i l d   { 
 	 	 - m o z - b o r d e r - r a d i u s - t o p r i g h t : 3 p x ; 
 	 	 - w e b k i t - b o r d e r - t o p - r i g h t - r a d i u s : 3 p x ; 
 	 	 b o r d e r - t o p - r i g h t - r a d i u s : 3 p x ; 
 	 } 
 	 t a b l e   t r   { 
 	 	 t e x t - a l i g n :   c e n t e r ; 
 	 	 p a d d i n g - l e f t : 5 p x ; 
 	 } 
 	 t a b l e   t d : f i r s t - c h i l d   { 
 	 	 t e x t - a l i g n :   l e f t ; 
 	 	 p a d d i n g - l e f t : 5 p x ; 
 	 	 b o r d e r - l e f t :   0 ; 
 	 } 
 	 t a b l e   t d   { 
 	 	 p a d d i n g : 5 p x ; 
 	 	 b o r d e r - t o p :   1 p x   s o l i d   # f f f f f f ; 
 	 	 b o r d e r - b o t t o m : 1 p x   s o l i d   # e 0 e 0 e 0 ; 
 	 	 b o r d e r - l e f t :   1 p x   s o l i d   # e 0 e 0 e 0 ; 
 
 	 	 b a c k g r o u n d :   # f a f a f a ; 
 	 	 b a c k g r o u n d :   - w e b k i t - g r a d i e n t ( l i n e a r ,   l e f t   t o p ,   l e f t   b o t t o m ,   f r o m ( # f b f b f b ) ,   t o ( # f a f a f a ) ) ; 
 	 	 b a c k g r o u n d :   - m o z - l i n e a r - g r a d i e n t ( t o p ,     # f b f b f b ,     # f a f a f a ) ; 
 	 } 
 	 t a b l e   t r . e v e n   t d   { 
 	 	 b a c k g r o u n d :   # f 6 f 6 f 6 ; 
 	 	 b a c k g r o u n d :   - w e b k i t - g r a d i e n t ( l i n e a r ,   l e f t   t o p ,   l e f t   b o t t o m ,   f r o m ( # f 8 f 8 f 8 ) ,   t o ( # f 6 f 6 f 6 ) ) ; 
 	 	 b a c k g r o u n d :   - m o z - l i n e a r - g r a d i e n t ( t o p ,     # f 8 f 8 f 8 ,     # f 6 f 6 f 6 ) ; 
 	 } 
 	 t a b l e   t r : l a s t - c h i l d   t d   { 
 	 	 b o r d e r - b o t t o m : 0 ; 
 	 } 
 	 t a b l e   t r : l a s t - c h i l d   t d : f i r s t - c h i l d   { 
 	 	 - m o z - b o r d e r - r a d i u s - b o t t o m l e f t : 3 p x ; 
 	 	 - w e b k i t - b o r d e r - b o t t o m - l e f t - r a d i u s : 3 p x ; 
 	 	 b o r d e r - b o t t o m - l e f t - r a d i u s : 3 p x ; 
 	 } 
 	 t a b l e   t r : l a s t - c h i l d   t d : l a s t - c h i l d   { 
 	 	 - m o z - b o r d e r - r a d i u s - b o t t o m r i g h t : 3 p x ; 
 	 	 - w e b k i t - b o r d e r - b o t t o m - r i g h t - r a d i u s : 3 p x ; 
 	 	 b o r d e r - b o t t o m - r i g h t - r a d i u s : 3 p x ; 
 	 } 
 	 t a b l e   t r : h o v e r   t d   { 
 	 	 b a c k g r o u n d :   # f 2 f 2 f 2 ; 
 	 	 b a c k g r o u n d :   - w e b k i t - g r a d i e n t ( l i n e a r ,   l e f t   t o p ,   l e f t   b o t t o m ,   f r o m ( # f 2 f 2 f 2 ) ,   t o ( # f 0 f 0 f 0 ) ) ; 
 	 	 b a c k g r o u n d :   - m o z - l i n e a r - g r a d i e n t ( t o p ,     # f 2 f 2 f 2 ,     # f 0 f 0 f 0 ) ; 	 
 	 } 
 
 < / s t y l e > < / h e a d > < b o d y > o      �}�} 0 htmlhead htmlHead�  �~    l     �|�{�z�|  �{  �z    l     �y�y      Needed to prevent errors     � 4   N e e d e d   t o   p r e v e n t   e r r o r s    l  : ?�x�w r   : ? m   : ; � 8 < h 2 >   & # 1 2 8 2 0 3 ;   P r o j e c t s < / h 2 > o      �v�v &0 theprogressdetail theProgressDetail�x  �w     l  @ G!�u�t! r   @ G"#" m   @ C$$ �%%  # o      �s�s 00 theinboxprogressdetail theInboxProgressDetail�u  �t    &'& l  H O(�r�q( r   H O)*) m   H K++ �,,  * o      �p�p 40 theflaggedprogressdetail theFlaggedProgressDetail�r  �q  ' -.- l  P W/�o�n/ r   P W010 m   P S22 �33  1 o      �m�m .0 theasapprogressdetail theASAPProgressDetail�o  �n  . 454 l     �l�k�j�l  �k  �j  5 676 l     �i�h�g�i  �h  �g  7 898 l     �f:;�f  : . (----------------------------------------   ; �<< P - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -9 =>= l     �e?@�e  ? %  Get list of actions for email    @ �AA >   G e t   l i s t   o f   a c t i o n s   f o r   e m a i l  > BCB l     �dDE�d  D . (----------------------------------------   E �FF P - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -C GHG l     �c�b�a�c  �b  �a  H IJI l  X�K�`�_K O   X�LML k   ^�NN OPO l  ^ ^�^�]�\�^  �]  �\  P QRQ O   ^�STS k   g�UU VWV l  g g�[�Z�Y�[  �Z  �Y  W XYX l  g g�XZ[�X  Z . (----------------------------------------   [ �\\ P - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -Y ]^] l  g g�W_`�W  _ + % Include overdue and due today tasks    ` �aa J   I n c l u d e   o v e r d u e   a n d   d u e   t o d a y   t a s k s  ^ bcb l  g g�Vde�V  d . (----------------------------------------   e �ff P - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -c ghg l  g g�Uij�U  i F @ Retrieve a list of projects modified within the specified scope   j �kk �   R e t r i e v e   a   l i s t   o f   p r o j e c t s   m o d i f i e d   w i t h i n   t h e   s p e c i f i e d   s c o p eh lml r   g }non 6 g ypqp 2   g l�T
�T 
FCfxq A  o xrsr n  p ttut 1   p t�S
�S 
FCDmu  g   p ps o   u w�R�R 0 
theenddate 
theEndDateo o      �Q�Q *0 themodifiedprojects theModifiedProjectsm vwv l  ~ ~�P�O�N�P  �O  �N  w xyx l  ~ ~�Mz{�M  z ) # Loop through any detected projects   { �|| F   L o o p   t h r o u g h   a n y   d e t e c t e d   p r o j e c t sy }~} Y   ~	�L���K k   ��� ��� l  � ��J�I�H�J  �I  �H  � ��� r   � ���� n   � ���� 4   � ��G�
�G 
cobj� 1   � ��F
�F 
OSav� o   � ��E�E *0 themodifiedprojects theModifiedProjects� o      �D�D &0 thecurrentproject theCurrentProject� ��� l  � ��C�B�A�C  �B  �A  � ��� l  � ��@���@  � E ? Retrieve any project tasks modified within the specified scope   � ��� ~   R e t r i e v e   a n y   p r o j e c t   t a s k s   m o d i f i e d   w i t h i n   t h e   s p e c i f i e d   s c o p e� ��� r   � ���� l  � ���?�>� 6 � ���� n   � ���� 2   � ��=
�= 
FCft� o   � ��<�< &0 thecurrentproject theCurrentProject� F   � ���� =   � ���� n  � ���� 1   � ��;
�; 
FCcd�  g   � �� m   � ��:
�: boovfals� A  � ���� 1   � ��9
�9 
FCDd� o   � ��8�8 0 
theenddate 
theEndDate�?  �>  � o      �7�7 0 theduetasks theDueTasks� ��� l  � ��6�5�4�6  �5  �4  � ��� l  � ��3���3  � &   Loop through any detected tasks   � ��� @   L o o p   t h r o u g h   a n y   d e t e c t e d   t a s k s� ��� Z   ����2�1� >  � ���� o   � ��0�0 0 theduetasks theDueTasks� J   � ��/�/  � k   ���� ��� l  � ��.�-�,�.  �-  �,  � ��� l  � ��+���+  � / ) Append the project name to the task list   � ��� R   A p p e n d   t h e   p r o j e c t   n a m e   t o   t h e   t a s k   l i s t� ��� r   � ���� b   � ���� b   � ���� b   � ���� b   � ���� b   � ���� o   � ��*�* &0 theprogressdetail theProgressDetail� m   � ��� ���  < h 3 >� n   � ���� 1   � ��)
�) 
pnam� o   � ��(�( &0 thecurrentproject theCurrentProject� m   � ��� ��� 
 < / h 3 >� o   � ��'
�' 
ret � m   � ��� ���� 
 	 	 	 	 
 	 	 	 	 < t b o d y > < t a b l e > < ! - -   T a b l e   H e a d e r   - - > 
 	 	 	 	 < t h e a d > 
 	 	 	 	 	 < t r > 
 	 	 	 	 	 < t h > T a s k < / t h > 
 	 	 	 	 	 < t h > D u e   D a t e < / t h > 
 	 	 	 	 	 < t h > & # 1 0 0 0 4 ; < / t h > 
 	 	 	 	 < / t r > 
 	 	 	 	 < / t h e a d > 
 	 	 	 	 < ! - -   T a b l e   H e a d e r   - - > 
 	 	 	 	 < t b o d y >� o      �&�& &0 theprogressdetail theProgressDetail� ��� l  � ��%�$�#�%  �$  �#  � ��� Y   ����"���!� k   ���� ��� l  � �� ���   �  �  � ��� r   �	��� n   ���� 4   ���
� 
cobj� 1  �
� 
OSbv� o   � ��� 0 theduetasks theDueTasks� o      ��  0 thecurrenttask theCurrentTask� ��� l 

����  � / ) Append the tasks's name to the task list   � ��� R   A p p e n d   t h e   t a s k s ' s   n a m e   t o   t h e   t a s k   l i s t� ��� Z 
����� A  
��� n  
��� 1  �
� 
FCDd� o  
��  0 thecurrenttask theCurrentTask� o  �� 0 
theenddate 
theEndDate� r  ��� m  �
� boovtrue� o      �� 0 	isoverdue 	isOverdue�  �  � ��� l   ����  �  �  � ��� Z  ]����� =  /��� c   +��� n   '��� 1  #'�
� 
FCno� o   #��  0 thecurrenttask theCurrentTask� m  '*�

�
 
TEXT� m  +.�� ���  � r  2Y��� b  2U� � b  2Q b  2M b  2E b  2A b  29	
	 o  25�	�	 &0 theprogressdetail theProgressDetail
 m  58 � : 
 	 	 	 	 	 
 	 	 	 	 	 	 < t r > 
 	 	 	 	 	 	 	 < t d > n  9@ 1  <@�
� 
pnam o  9<��  0 thecurrenttask theCurrentTask m  AD � " < / t d > 
 	 	 	 	 	 	 	 < t d > n  EL 1  HL�
� 
FCDd o  EH��  0 thecurrenttask theCurrentTask m  MP � D < / t d > 
 	 	 	 	 	 	 	 < t d > < / t d > 
 	 	 	 	 	 	 < / t r >  o  QT�
� 
ret � o      �� &0 theprogressdetail theProgressDetail�  �  �  l ^^��� �  �  �     l ^^����   J D Shrink the note down to prevent really long notes clogging up email    � �   S h r i n k   t h e   n o t e   d o w n   t o   p r e v e n t   r e a l l y   l o n g   n o t e s   c l o g g i n g   u p   e m a i l  r  ^m c  ^i !  n  ^e"#" 1  ae��
�� 
FCno# o  ^a����  0 thecurrenttask theCurrentTask! m  eh��
�� 
TEXT o      ���� 0 longnote longNote $%$ Z  n�&'��(& A n{)*) n  nu+,+ 1  qu��
�� 
leng, o  nq���� 0 longnote longNote* o  uz���� 0 maxnotechars maxNoteChars' r  ~�-.- o  ~����� 0 longnote longNote. o      ���� 0 tasknote taskNote��  ( r  ��/0/ n  ��121 7 ����34
�� 
ctxt3 m  ������ 4 o  ������ 0 maxnotechars maxNoteChars2 o  ������ 0 longnote longNote0 o      ���� 0 tasknote taskNote% 565 l ����������  ��  ��  6 787 Z ��9:����9 > ��;<; c  ��=>= n  ��?@? 1  ����
�� 
FCno@ o  ������  0 thecurrenttask theCurrentTask> m  ����
�� 
TEXT< m  ��AA �BB  : r  ��CDC b  ��EFE b  ��GHG b  ��IJI b  ��KLK b  ��MNM b  ��OPO b  ��QRQ b  ��STS o  ������ &0 theprogressdetail theProgressDetailT m  ��UU �VV : 
 	 	 	 	 	 
 	 	 	 	 	 	 < t r > 
 	 	 	 	 	 	 	 < t d >R n  ��WXW 1  ����
�� 
pnamX o  ������  0 thecurrenttask theCurrentTaskP m  ��YY �ZZ " < / t d > 
 	 	 	 	 	 	 	 < t d >N n  ��[\[ 1  ����
�� 
FCDd\ o  ������  0 thecurrenttask theCurrentTaskL m  ��]] �^^ � < / t d > 
 	 	 	 	 	 	 	 < t d   r o w s p a n = ' 2 ' > < / t d > 
 	 	 	 	 	 	 < / t r > 
 	 	 	 	 	 
 	 	 	 	 	 	 < t r > 
 	 	 	 	 	 	 	 < t d   c o l s p a n = ' 2 ' > < s m a l l >J o  ������ 0 tasknote taskNoteH m  ��__ �`` 2 < / s m a l l > < / t d > 
 	 	 	 	 	 	 < / t r >F o  ����
�� 
ret D o      ���� &0 theprogressdetail theProgressDetail��  ��  8 a��a l ����������  ��  ��  ��  
�" 
OSbv� m   � ����� � n   � �bcb 1   � ���
�� 
lengc o   � ����� 0 theduetasks theDueTasks�!  � ded r  ��fgf b  ��hih b  ��jkj o  ������ &0 theprogressdetail theProgressDetailk m  ��ll �mm   < / t b o d y > < / t a b l e >i o  ����
�� 
ret g o      ���� &0 theprogressdetail theProgressDetaile n��n l ����������  ��  ��  ��  �2  �1  � o��o l ��������  ��  ��  ��  
�L 
OSav� m   � ����� � n   � �pqp 1   � ���
�� 
lengq o   � ����� *0 themodifiedprojects theModifiedProjects�K  ~ rsr l 

��������  ��  ��  s tut l 

��������  ��  ��  u vwv l 

��xy��  x . (----------------------------------------   y �zz P - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -w {|{ l 

��}~��  } !  Include all flagged tasks    ~ � 6   I n c l u d e   a l l   f l a g g e d   t a s k s  | ��� l 

������  � . (----------------------------------------   � ��� P - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -� ��� l 

��������  ��  ��  � ��� Z  
�������� o  
���� 0 	isflagged 	isFlagged� k  ��� ��� l ��������  ��  ��  � ��� l ������  � $  Include the OmniFocus Flagged   � ��� <   I n c l u d e   t h e   O m n i F o c u s   F l a g g e d� ��� r  ��� m  ��
�� boovfals� o      ���� $0 theflaggeddetail theFlaggedDetail� ��� r  :��� l 6������ 6 6��� 2  ��
�� 
FCft� F   5��� = !*��� 1  "&��
�� 
FCfl� m  ')��
�� boovtrue� = +4��� 1  ,0��
�� 
FCcd� m  13��
�� boovfals��  ��  � o      ���� "0 theflaggedtasks theFlaggedTasks� ��� l ;;��������  ��  ��  � ��� l ;;������  � &   Loop through any detected tasks   � ��� @   L o o p   t h r o u g h   a n y   d e t e c t e d   t a s k s� ��� Z  ;�������� > ;A��� o  ;>���� "0 theflaggedtasks theFlaggedTasks� J  >@����  � k  D��� ��� l DD��������  ��  ��  � ��� l DD������  � / ) Append the project name to the task list   � ��� R   A p p e n d   t h e   p r o j e c t   n a m e   t o   t h e   t a s k   l i s t� ��� r  DO��� b  DK��� o  DG���� 40 theflaggedprogressdetail theFlaggedProgressDetail� m  GJ�� ���� < h 2 > & # 9 8 7 3 ;   F l a g g e d < / h 2 > 
 	 	 	 
 	 	 	 	 	 < t b o d y > < t a b l e > < ! - -   T a b l e   H e a d e r   - - > 
 	 	 	 	 	 < t h e a d > 
 	 	 	 	 	 	 < t r > 
 	 	 	 	 	 	 < t h > T a s k < / t h > 
 	 	 	 	 	 	 < t h > D u e   D a t e < / t h > 
 	 	 	 	 	 	 < t h > & # 1 0 0 0 4 ; < / t h > 
 	 	 	 	 	 < / t r > 
 	 	 	 	 	 < / t h e a d > 
 	 	 	 	 	 < ! - -   T a b l e   H e a d e r   - - > 
 	 	 	 	 	 < t b o d y >� o      ���� 40 theflaggedprogressdetail theFlaggedProgressDetail� ��� l PP��������  ��  ��  � ��� Y  P��������� k  a��� ��� l aa��������  ��  ��  � ��� l aa������  � / ) Append the tasks's name to the task list   � ��� R   A p p e n d   t h e   t a s k s ' s   n a m e   t o   t h e   t a s k   l i s t� ��� r  am��� n  ai��� 4  di���
�� 
cobj� o  gh���� 0 d  � o  ad���� "0 theflaggedtasks theFlaggedTasks� o      ���� .0 theflaggedcurrenttask theFlaggedCurrentTask� ��� l nn��������  ��  ��  � ��� Z  n������� = ny��� n  nu��� 1  qu��
�� 
FCDd� o  nq���� .0 theflaggedcurrenttask theFlaggedCurrentTask� m  ux��
�� 
msng� r  |���� m  |�� ���  -� o      ���� 0 duedate dueDate��  � r  ����� n  ����� 1  ����
�� 
FCDd� o  ������ .0 theflaggedcurrenttask theFlaggedCurrentTask� o      ���� 0 duedate dueDate� ��� l ����������  ��  ��  � ��� r  ����� b  ����� b  ����� b  ����� b  ����� b  ����� b  ����� o  ������ 40 theflaggedprogressdetail theFlaggedProgressDetail� m  ���� ��� 8 
 	 	 	 	 
 	 	 	 	 	 	 < t r > 
 	 	 	 	 	 	 	 < t d >� n  ����� 1  ����
�� 
pnam� o  ������ .0 theflaggedcurrenttask theFlaggedCurrentTask� m  ��   � " < / t d > 
 	 	 	 	 	 	 	 < t d >� o  ������ 0 duedate dueDate� m  �� � D < / t d > 
 	 	 	 	 	 	 	 < t d > < / t d > 
 	 	 	 	 	 	 < / t r >� o  ����
�� 
ret � o      �� 40 theflaggedprogressdetail theFlaggedProgressDetail� �~ l ���}�|�{�}  �|  �{  �~  �� 0 d  � m  ST�z�z � n  T\ 1  W[�y
�y 
leng o  TW�x�x "0 theflaggedtasks theFlaggedTasks��  �  l ���w�v�u�w  �v  �u   	
	 r  �� b  �� b  �� o  ���t�t 40 theflaggedprogressdetail theFlaggedProgressDetail m  �� �   < / t b o d y > < / t a b l e > o  ���s
�s 
ret  o      �r�r 40 theflaggedprogressdetail theFlaggedProgressDetail
 �q l ���p�o�n�p  �o  �n  �q  ��  ��  � �m l ���l�k�j�l  �k  �j  �m  ��  ��  �  l ���i�h�g�i  �h  �g    l ���f�e�d�f  �e  �d    l ���c�c   . (----------------------------------------    � P - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -  l ���b !�b    &   Include all tasks in the inbox    ! �"" @   I n c l u d e   a l l   t a s k s   i n   t h e   i n b o x   #$# l ���a%&�a  % . (----------------------------------------   & �'' P - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -$ ()( l ���`�_�^�`  �_  �^  ) *+* Z  ��,-�]�\, o  ���[�[ 0 isinbox isInbox- k  ��.. /0/ l ���Z�Y�X�Z  �Y  �X  0 121 l ���W34�W  3 "  Include the OmniFocus inbox   4 �55 8   I n c l u d e   t h e   O m n i F o c u s   i n b o x2 676 r  ��898 l ��:�V�U: 6��;<; 2  ���T
�T 
FCit< =  ��=>= n ��?@? 1  ���S
�S 
FCcd@  g  ��> m  ���R
�R boovfals�V  �U  9 o      �Q�Q 00 theinboxcompletedtasks theInboxCompletedTasks7 ABA l ���P�O�N�P  �O  �N  B CDC l ���MEF�M  E &   Loop through any detected tasks   F �GG @   L o o p   t h r o u g h   a n y   d e t e c t e d   t a s k sD HIH Z  ��JK�L�KJ > ��LML o  ���J�J 00 theinboxcompletedtasks theInboxCompletedTasksM J  ���I�I  K k  �NN OPO l �H�G�F�H  �G  �F  P QRQ l �EST�E  S / ) Append the project name to the task list   T �UU R   A p p e n d   t h e   p r o j e c t   n a m e   t o   t h e   t a s k   l i s tR VWV r  XYX b  Z[Z o  �D�D 00 theinboxprogressdetail theInboxProgressDetail[ m  \\ �]]� < h 2 > & # 1 2 8 2 2 9 ;   I n b o x < / h 2 > 
 	 	 	 	 
 	 	 	 	 	 < t b o d y > < t a b l e > < ! - -   T a b l e   H e a d e r   - - > 
 	 	 	 	 	 < t h e a d > 
 	 	 	 	 	 	 < t r > 
 	 	 	 	 	 	 < t h > T a s k < / t h > 
 	 	 	 	 	 	 < t h > D u e   D a t e < / t h > 
 	 	 	 	 	 	 < t h > & # 1 0 0 0 4 ; < / t h > 
 	 	 	 	 	 < / t r > 
 	 	 	 	 	 < / t h e a d > 
 	 	 	 	 	 < ! - -   T a b l e   H e a d e r   - - > 
 	 	 	 	 	 < t b o d y >Y o      �C�C 00 theinboxprogressdetail theInboxProgressDetailW ^_^ l �B�A�@�B  �A  �@  _ `a` Y  yb�?cd�>b k  tee fgf l �=�<�;�=  �<  �;  g hih l �:jk�:  j / ) Append the tasks's name to the task list   k �ll R   A p p e n d   t h e   t a s k s ' s   n a m e   t o   t h e   t a s k   l i s ti mnm r  *opo n  &qrq 4  !&�9s
�9 
cobjs o  $%�8�8 0 d  r o  !�7�7 00 theinboxcompletedtasks theInboxCompletedTasksp o      �6�6 *0 theinboxcurrenttask theInboxCurrentTaskn tut l ++�5�4�3�5  �4  �3  u vwv Z  +Nxy�2zx = +6{|{ n  +2}~} 1  .2�1
�1 
FCDd~ o  +.�0�0 *0 theinboxcurrenttask theInboxCurrentTask| m  25�/
�/ 
msngy r  9@� m  9<�� ���  -� o      �.�. 0 duedate dueDate�2  z r  CN��� n  CJ��� 1  FJ�-
�- 
FCDd� o  CF�,�, *0 theinboxcurrenttask theInboxCurrentTask� o      �+�+ 0 duedate dueDatew ��� l OO�*�)�(�*  �)  �(  � ��� r  Or��� b  On��� b  Oj��� b  Of��� b  Ob��� b  O^��� b  OV��� o  OR�'�' 00 theinboxprogressdetail theInboxProgressDetail� m  RU�� ��� > 
 	 	 	 	 	 
 	 	 	 	 	 	 	 < t r > 
 	 	 	 	 	 	 	 	 < t d >� n  V]��� 1  Y]�&
�& 
pnam� o  VY�%�% *0 theinboxcurrenttask theInboxCurrentTask� m  ^a�� ��� $ < / t d > 
 	 	 	 	 	 	 	 	 < t d >� o  be�$�$ 0 duedate dueDate� m  fi�� ��� H < / t d > 
 	 	 	 	 	 	 	 	 < t d > < / t d > 
 	 	 	 	 	 	 	 < / t r >� o  jm�#
�# 
ret � o      �"�" 00 theinboxprogressdetail theInboxProgressDetail� ��!� l ss� ���   �  �  �!  �? 0 d  c m  �� d n  ��� 1  �
� 
leng� o  �� 00 theinboxcompletedtasks theInboxCompletedTasks�>  a ��� l zz����  �  �  � ��� r  z���� b  z���� b  z���� o  z}�� 00 theinboxprogressdetail theInboxProgressDetail� m  }��� ���   < / t b o d y > < / t a b l e >� o  ���
� 
ret � o      �� 00 theinboxprogressdetail theInboxProgressDetail� ��� l ������  �  �  �  �L  �K  I ��� l ������  �  �  �  �]  �\  + ��� l �����
�  �  �
  � ��� l ���	���	  �  �  � ��� l ������  � . (----------------------------------------   � ��� P - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -� ��� l ������  �   Include all @ASAP tasks    � ��� 2   I n c l u d e   a l l   @ A S A P   t a s k s  � ��� l ������  � . (----------------------------------------   � ��� P - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -� ��� l ������  �  �  � ��� Z  ����� ��� o  ������ 0 isasap isASAP� k  ���� ��� l ����������  ��  ��  � ��� r  ����� 6����� 2 ����
�� 
FCfc� = ����� 1  ����
�� 
pnam� o  ������ 0 pcontext pContext� o      ���� 0 
lstcontext 
lstContext� ��� Z  �������� >  ����� o  ������ 0 
lstcontext 
lstContext� J  ������  � r  ����� n  ����� 4 �����
�� 
cobj� m  ������ � o  ������ 0 
lstcontext 
lstContext� o      ���� 0 ocontext oContext��  � r  ����� I �������
�� .corecrel****      � null��  � ����
�� 
kocl� m  ����
�� 
FCct� �����
�� 
prdt� K  ���� �����
�� 
pnam� o  ������ 0 pcontext pContext��  ��  � o      ���� 0 ocontext oContext� ��� l ����������  ��  ��  � ��� l ��������  � "  Include the OmniFocus inbox   � ��� 8   I n c l u d e   t h e   O m n i F o c u s   i n b o x� ��� r  ���� l ������� 6���� 2 ����
�� 
FCft� F  ���� = ���� n ����� m  ����
�� 
FCct�  g  ��� o  ����� 0 ocontext oContext� = ��� 1  
��
�� 
FCcd� m  ��
�� boovfals��  ��  � o      ���� 0 theasaptasks theASAPTasks�    l ��������  ��  ��    l ����   &   Loop through any detected tasks    � @   L o o p   t h r o u g h   a n y   d e t e c t e d   t a s k s  Z  �	
����	 >  o  ���� 0 theasaptasks theASAPTasks J  ����  
 k  �  l ��������  ��  ��    l ����   / ) Append the project name to the task list    � R   A p p e n d   t h e   p r o j e c t   n a m e   t o   t h e   t a s k   l i s t  r  ) b  % o  !���� .0 theasapprogressdetail theASAPProgressDetail m  !$ �� < h 2 > & # 1 2 8 3 3 6 ;   A S A P < / h 2 > 
 	 	 	 	 
 	 	 	 	 	 < t b o d y > < t a b l e > < ! - -   T a b l e   H e a d e r   - - > 
 	 	 	 	 	 < t h e a d > 
 	 	 	 	 	 	 < t r > 
 	 	 	 	 	 	 < t h > T a s k < / t h > 
 	 	 	 	 	 	 < t h > D u e   D a t e < / t h > 
 	 	 	 	 	 	 < t h > & # 1 0 0 0 4 ; < / t h > 
 	 	 	 	 	 < / t r > 
 	 	 	 	 	 < / t h e a d > 
 	 	 	 	 	 < ! - -   T a b l e   H e a d e r   - - > 
 	 	 	 	 	 < t b o d y > o      ���� .0 theasapprogressdetail theASAPProgressDetail  l **��������  ��  ��     Y  *�!��"#��! k  ;�$$ %&% l ;;��������  ��  ��  & '(' l ;;��)*��  ) / ) Append the tasks's name to the task list   * �++ R   A p p e n d   t h e   t a s k s ' s   n a m e   t o   t h e   t a s k   l i s t( ,-, r  ;G./. n  ;C010 4  >C��2
�� 
cobj2 o  AB���� 0 d  1 o  ;>���� 0 theasaptasks theASAPTasks/ o      ���� (0 theasapcurrenttask theASAPCurrentTask- 343 l HH��������  ��  ��  4 565 Z  Hk78��97 = HS:;: n  HO<=< 1  KO��
�� 
FCDd= o  HK���� (0 theasapcurrenttask theASAPCurrentTask; m  OR��
�� 
msng8 r  V]>?> m  VY@@ �AA  -? o      ���� 0 duedate dueDate��  9 r  `kBCB n  `gDED 1  cg��
�� 
FCDdE o  `c���� (0 theasapcurrenttask theASAPCurrentTaskC o      ���� 0 duedate dueDate6 FGF l ll��������  ��  ��  G HIH r  l�JKJ b  l�LML b  l�NON b  l�PQP b  lRSR b  l{TUT b  lsVWV o  lo���� .0 theasapprogressdetail theASAPProgressDetailW m  orXX �YY > 
 	 	 	 	 	 
 	 	 	 	 	 	 	 < t r > 
 	 	 	 	 	 	 	 	 < t d >U n  szZ[Z 1  vz��
�� 
pnam[ o  sv���� (0 theasapcurrenttask theASAPCurrentTaskS m  {~\\ �]] $ < / t d > 
 	 	 	 	 	 	 	 	 < t d >Q o  ����� 0 duedate dueDateO m  ��^^ �__ H < / t d > 
 	 	 	 	 	 	 	 	 < t d > < / t d > 
 	 	 	 	 	 	 	 < / t r >M o  ����
�� 
ret K o      ���� .0 theasapprogressdetail theASAPProgressDetailI `��` l ����������  ��  ��  ��  �� 0 d  " m  -.���� # n  .6aba 1  15��
�� 
lengb o  .1���� 0 theasaptasks theASAPTasks��    cdc l ����������  ��  ��  d efe r  ��ghg b  ��iji b  ��klk o  ������ .0 theasapprogressdetail theASAPProgressDetaill m  ��mm �nn   < / t b o d y > < / t a b l e >j o  ����
�� 
ret h o      ���� .0 theasapprogressdetail theASAPProgressDetailf o��o l ����������  ��  ��  ��  ��  ��   p��p l ����������  ��  ��  ��  �   ��  � q��q l ����������  ��  ��  ��  T 4  ^ d��r
�� 
docur m   b c���� R s��s l ����������  ��  ��  ��  M m   X [tt�                                                                                  OFOC  alis    X  Macintosh HD               Ҽ��H+     FOmniFocus.app                                                   ��N�L        ����  	                Applications    Ҽ��      �N�<       F  (Macintosh HD:Applications: OmniFocus.app    O m n i F o c u s . a p p    M a c i n t o s h   H D  Applications/OmniFocus.app  / ��  �`  �_  J uvu l     ��������  ��  ��  v wxw l     ��yz��  y . (----------------------------------------   z �{{ P - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -x |}| l     ��~��  ~   Compose the HTML email     ��� 0   C o m p o s e   t h e   H T M L   e m a i l  } ��� l     ������  � A ; Here you can alter the order of the elements of the email    � ��� v   H e r e   y o u   c a n   a l t e r   t h e   o r d e r   o f   t h e   e l e m e n t s   o f   t h e   e m a i l  � ��� l     ������  �   htmlHead must go first   � ��� .   h t m l H e a d   m u s t   g o   f i r s t� ��� l     ������  � . (----------------------------------------   � ��� P - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -� ��� l �������� r  ����� b  ����� b  ����� b  ����� b  ����� b  ����� o  ������ 0 htmlhead htmlHead� o  ������ 40 theflaggedprogressdetail theFlaggedProgressDetail� o  ���� .0 theasapprogressdetail theASAPProgressDetail� o  ���~�~ &0 theprogressdetail theProgressDetail� o  ���}�} 00 theinboxprogressdetail theInboxProgressDetail� m  ���� ���  < / b o d y > < / h t m l >� o      �|�| &0 theprogressdetail theProgressDetail��  ��  � ��� l     �{�z�y�{  �z  �y  � ��� l     �x�w�v�x  �w  �v  � ��� l     �u���u  � . (----------------------------------------   � ��� P - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -� ��� l     �t���t  � ' ! Send the HTML email via the CLI    � ��� B   S e n d   t h e   H T M L   e m a i l   v i a   t h e   C L I  � ��� l     �s���s  � . (----------------------------------------   � ��� P - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -� ��r� l ����q�p� I ���o��n
�o .sysoexecTEXT���     TEXT� b  ����� b  ����� b  ����� b  ����� b  ����� b  ����� b  ����� m  ���� ��� 
 e c h o  � 1  ���m
�m 
quot� o  ���l�l &0 theprogressdetail theProgressDetail� 1  ���k
�k 
quot� m  ���� ��� (   |   m a i l   - s   " $ ( e c h o   "� o  ���j�j 0 
thesubject 
theSubject� m  ���� ��� 8 
 C o n t e n t - T y p e :   t e x t / h t m l " ) "  � o  ���i�i 0 	toaddress 	toAddress�n  �q  �p  �r       	�h� q�g�f�e ��d��h  � �c�b�a�`�_�^�]�c 0 	toaddress 	toAddress�b 0 	isflagged 	isFlagged�a 0 isinbox isInbox�` 0 isasap isASAP�_ 0 pcontext pContext�^ 0 maxnotechars maxNoteChars
�] .aevtoappnull  �   � ****
�g boovtrue
�f boovtrue
�e boovtrue�d �� �\��[�Z���Y
�\ .aevtoappnull  �   � ****� k    ���  ���  ���  ���  ���  ���  ���  ��� 
�� �� �� &�� -�� I�� ��� ��X�X  �[  �Z  � �W�V�U
�W 
OSav
�V 
OSbv�U 0 d  � d�T�S�R�Q�P�O�N�M ��L�K�J�I�H$�G+�F2�Et�D�C��B�A�@�?�>�=�<�;�:��9��8��7�6�5�4��3�2�1AUY]_l�0�/�.��-�,��+� �*�)\�(������'�&�%�$�#�"�!� ��@X\^m�����
�T .misccurdldt    ��� null�S 0 thestartdate theStartDate
�R 
hour
�Q 
min 
�P 
scnd�O �N ;�M 0 
theenddate 
theEndDate
�L .sysoexecTEXT���     TEXT�K 0 thetimestamp theTimeStamp�J 0 
thesubject 
theSubject�I 0 htmlhead htmlHead�H &0 theprogressdetail theProgressDetail�G 00 theinboxprogressdetail theInboxProgressDetail�F 40 theflaggedprogressdetail theFlaggedProgressDetail�E .0 theasapprogressdetail theASAPProgressDetail
�D 
docu
�C 
FCfx�  
�B 
FCDm�A *0 themodifiedprojects theModifiedProjects
�@ 
leng
�? 
cobj�> &0 thecurrentproject theCurrentProject
�= 
FCft
�< 
FCcd
�; 
FCDd�: 0 theduetasks theDueTasks
�9 
pnam
�8 
ret �7  0 thecurrenttask theCurrentTask�6 0 	isoverdue 	isOverdue
�5 
FCno
�4 
TEXT�3 0 longnote longNote�2 0 tasknote taskNote
�1 
ctxt�0 $0 theflaggeddetail theFlaggedDetail
�/ 
FCfl�. "0 theflaggedtasks theFlaggedTasks�- .0 theflaggedcurrenttask theFlaggedCurrentTask
�, 
msng�+ 0 duedate dueDate
�* 
FCit�) 00 theinboxcompletedtasks theInboxCompletedTasks�( *0 theinboxcurrenttask theInboxCurrentTask
�' 
FCfc�& 0 
lstcontext 
lstContext�% 0 ocontext oContext
�$ 
kocl
�# 
FCct
�" 
prdt�! 
�  .corecrel****      � null� 0 theasaptasks theASAPTasks� (0 theasapcurrenttask theASAPCurrentTask
� 
quot�Y�*j  E�Oj��,FOj��,FOj��,FO��� �� �E�O�j 	E�O��%E�O�E�O�E` Oa E` Oa E` Oa E` Oa [*a k/O*a -a [a ,\Z�<1E` O�k_ a ,Ekh  _ a �E/E` O_ a  -a [[a !,\Zf8\[a ",\Z�<A1E` #O_ #jv8_ a $%_ a %,%a &%_ '%a (%E` O k_ #a ,Ekh _ #a �E/E` )O_ )a ",� 
eE` *Y hO_ )a +,a ,&a -  ,_ a .%_ )a %,%a /%_ )a ",%a 0%_ '%E` Y hO_ )a +,a ,&E` 1O_ 1a ,b   _ 1E` 2Y _ 1[a 3\[Zk\Zb  2E` 2O_ )a +,a ,&a 4 4_ a 5%_ )a %,%a 6%_ )a ",%a 7%_ 2%a 8%_ '%E` Y hOP[OY�O_ a 9%_ '%E` OPY hOP[OY��Ob   �fE` :O*a  -a [[a ;,\Ze8\[a !,\Zf8A1E` <O_ <jv �_ a =%E` O kk_ <a ,Ekh _ <a �/E` >O_ >a ",a ?  a @E` AY _ >a ",E` AO_ a B%_ >a %,%a C%_ A%a D%_ '%E` OP[OY��O_ a E%_ '%E` OPY hOPY hOb   �*a F-a [a !,\Zf81E` GO_ Gjv �_ a H%E` O kk_ Ga ,Ekh _ Ga �/E` IO_ Ia ",a ?  a JE` AY _ Ia ",E` AO_ a K%_ Ia %,%a L%_ A%a M%_ '%E` OP[OY��O_ a N%_ '%E` OPY hOPY hOb  *a O-a [a %,\Zb  81E` PO_ Pjv _ Pa k/E` QY  *a Ra Sa Ta %b  la U VE` QO*a  -a [[a S,\Z_ Q8\[a !,\Zf8A1E` WO_ Wjv �_ a X%E` O kk_ Wa ,Ekh _ Wa �/E` YO_ Ya ",a ?  a ZE` AY _ Ya ",E` AO_ a [%_ Ya %,%a \%_ A%a ]%_ '%E` OP[OY��O_ a ^%_ '%E` OPY hOPY hOPUOPUO�_ %_ %_ %_ %a _%E` Oa `_ a%_ %_ a%a b%�%a c%b   %j 	ascr  ��ޭ