![Image](https://github.com/user-attachments/assets/9492b063-56aa-4bb0-b7b6-cc3b229bbeab)
![Image](https://github.com/user-attachments/assets/7c91b459-4d49-4331-8d72-ce69d0643351)
![Image](https://github.com/user-attachments/assets/d46448a4-a7ba-43c0-bf7d-ffd012d7a84d)

------------------------------Oracle Fustion Middleware 11g-------------------------------
/////////////IF only mandatory instructions are done,hopefully the app runs well////////////////
1. Make sure hr(Demo) schema is in oracle database already or run below code from sys user. (mandatory)***
		SQL> ALTER USER hr IDENTIFIED BY hr ACCOUNT UNLOCK;
--------------------------------------------------------
2. Make sure D: drive is available & Paste the whole AIS folder to D: drive. (mandatory)***
--------------------------------------------------------
3. Mozilla_FireFox.lnk/Internet_Explorer.lnk properties:
--------------------------------------------------------
4. Replace HOSTNAME 'rjbr' to 'YOUR-DESKTOP-NAME' from TARGET section. 

		>> Internet_Explorer.lnk:
		"C:\Program Files\Internet Explorer\iexplore.exe" http://YOUR-DESKTOP-NAME:9001/forms/frmservlet?form=D:\AIS\Menu_module\FRONTED_MODULE.fmx
		
		>> Mozilla_FireFox.lnk:
		"C:\Program Files (x86)\Mozilla Firefox\firefox.exe" http://YOUR-DESKTOP-NAME:9001/forms/frmservlet?form=D:\AIS\Menu_module\FRONTED_MODULE.fmx
																		(mandatory)***
--------------------------------------------------------
5. sql*plus and run the code from sys or any schema: (mandatory)***	
		SQL> @D:\AIS\Script\PROJECT_INSTALLATION.sql
--------------------------------------------------------
6. To preview reports it might have stand alone/in process Report Server or report will not run (# report server name: rpt_svr). (optional)
--------------------------------------------------------
7. Start weblogic: admin server(mandatory), form server(mandatory) & report server(optional).
--------------------------------------------------------
8. Run the App from Mozilla_FireFox.lnk or Internet_Explorer.lnk:
						The credentials are given below:
							username: project_ac
							password: ac
--------------------------------------------------------
9. It has Calender feature, if your Form 11g does not have, it can be added by using CALENDER_11G_FRM folder or other sources.(optional)
--------------------------------------------------------
10. It has Image feature, if your Form 11g does not have, no image will be shown but the app will run perfectly without image.(optional)
--------------------------------------------------------
															--Thank you
