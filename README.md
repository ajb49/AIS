# oracle
1. paste the whole AIS folder to D: drive. (mandatory)
--------------------------------------------------------
2. please replace 'rjbr' to 'YOUR-DESKTOP-NAME' from given Mozilla_firefox & Internet_Explorer property's target. (optional)

"C:\Program Files\Internet Explorer\iexplore.exe" http://rjbr:9001/forms/frmservlet?form=D:\AIS\Menu_module\FRONTED_MODULE.fmx
replace to: "C:\Program Files\Internet Explorer\iexplore.exe" http://YOUR-DESKTOP-NAME:9001/forms/frmservlet?form=D:\AIS\Menu_module\FRONTED_MODULE.fmx

"C:\Program Files (x86)\Mozilla Firefox\firefox.exe" http://rjbr:9001/forms/frmservlet?form=D:\AIS\Menu_module\FRONTED_MODULE.fmx
replace to: "C:\Program Files (x86)\Mozilla Firefox\firefox.exe" http://YOUR-DESKTOP-NAME:9001/forms/frmservlet?form=D:\AIS\Menu_module\FRONTED_MODULE.fmx
--------------------------------------------------------
3. it might have Demo [hr] schema of oracle. please check you have hr schema in oracle database already. (mandatory)
--------------------------------------------------------
4. it might Have Calender feature if not, you can add it using CALENDER_11G_FRM folder.(optional)
--------------------------------------------------------
5. it might have Image feature if not, no image is shown but app runs perfectly without image though.(optional)
--------------------------------------------------------
6. it might have stand alone/in process Report Server or report will not run.(optional) #servername: rpt_svr
--------------------------------------------------------
7. open sqlplus from sys or any schema and run the code: (mandatory)
				@D:\AIS\Script\PROJECT_INSTALLATION.sql
8. run the given mozilla/internet_explorer
	userid: project_ac
	password: ac
	database: orcl
