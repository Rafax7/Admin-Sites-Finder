#!/usr/bin/perl

use HTTP::Request;
use LWP::UserAgent;

system('cls');
system('title Admin Page Finder ');
system "color 0a";
print"\n";
print "\t>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>\n";
print "\t>               ||Admin Page Finder||            >\n";
print "\t>                                                >\n";
print "\t>                 |RAFA7 WORLD|                  >\n";
print "\t>                                                >\n";
print "\t>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>\n";
print "\n";

print " Por favor, entre no site\n EXEMPLO: www.site.com ou www.site.com/path\n-> ";
$site=<STDIN>;
chomp $site;

print "\n";
print " Insira o código-fonte do site\n\n 1 = php\n 2 = asp\n 3 = aspx\n 4 = cfm\n 5 = js\n 6 = cgi\n 7 = brf\n\n-> ";
$code=<STDIN>;
chomp($code);

if ( $site !~ /^http:/ ) {
$site = 'http://' . $site;
}
if ( $site !~ /\/$/ ) {
$site = $site . '/';
}
print "\n";

print "-> Alvo: $site\n";
print "-> Código fonte do site: $code\n";
print "-> Procurando admin page...\n\n\n";

if($code eq "2"){

@path1=('admin/','administrator/','admin1/','admin2/','admin3/','admin4/','admin5/','moderator/','webadmin/','adminarea/',
'bb-admin/','adminLogin/','admin_area/','panel-administracion/','instadmin/',
'memberadmin/','administratorlogin/','adm/','admincp/','admcp/','cp/','modcp/','ADMINCPCP/',
'admincpcp/','adminsec/','adm1/','adm2/','adm4/','moderatorcp/','adminare/','admins/','cpanel/','ccms/',
'maintenance/','webmaster/','configuration/','configure/','websvn/','controlpanel/','phpmyadmin/',
'myadmin/','sysadmin/','ur-admin/','Server/','wp-admin/','administr8/','administrivia/',
'Database_Administration/','useradmin/','pgadmin/','directadmin/','staradmin/','ServerAdministrator/',
'administer/','LiveUser_Admin/','sys-admin/typo3/','cpanel_file/','platz_login/','rcLogin/','blogindex/',
'formslogin/','autologin/','support_login/','meta_login/','manuallogin/','simpleLogin/','loginflat/',
'utility_login/','showlogin/','memlogin/','login-redirect/','sub-login/','wp-login/','login1/','dir-login/',
'login_db/','xlogin/','smblogin/','customer_login/','login-us/','acct_login/','bigadmin/','project-admins/',
'phppgadmin/','pureadmin/','sql-admin/','radmind/','openvpnadmin/','wizmysqladmin/','vadmind/','ezsqliteadmin/',
'hpwebjetadmin/','newsadmin/','adminpro/','Lotus_Domino_Admin/','bbadmin/','vmailadmin/','Indy_admin/','ccp14admin/',
'irc-macadmin/','banneradmin/','sshadmin/','phpldapadmin/','macadmin/','admi','istratorcounts/','admin4_accout/',
'admin4_colon/','radmind-1/','Super-Admin/','AdminTools/','cmsadmin/','SysAdmin2/','globes_admin/','cadmins/',
'phpSQLiteAdmin/','navSiteAdmin/','server_admin_small/','logo_sysadmin/','login/','cms/','admon/','ADMON/','/phpMyAdmin/','/phpmyadmin/','/PMA/','/pma/','/dbadmin/','/mysql/','/myadmin/','/phpmyadmin2/','/phpMyAdmin2/',
'/phpMyAdmin-2/','/php-my-admin/','/phpMyAdmin-2.2.3/','/phpMyAdmin-2.2.6/',
'/phpMyAdmin-2.5.1/','/phpMyAdmin-2.5.4/','/phpMyAdmin-2.5.5-rc1/','/user/',
'/phpMyAdmin-2.5.5-rc2/','/phpMyAdmin-2.5.5/','/phpMyAdmin-2.5.5-pl1/',
'/phpMyAdmin-2.5.6-rc1/','/phpMyAdmin-2.5.6-rc2/','/phpMyAdmin-2.5.6/','/phpMyAdmin-2.5.7/','/phpMyAdmin-2.5.7-pl1/',
'/phpMyAdmin-2.6.0-alpha/','/phpMyAdmin-2.6.0-alpha2/',
'/phpMyAdmin-2.6.0-beta1/','/phpMyAdmin-2.6.0-beta2/','/phpMyAdmin-2.6.0-rc1/','/phpMyAdmin-2.6.0-rc2/',
'/phpMyAdmin-2.6.0-rc3/','/phpMyAdmin-2.6.0/','/phpMyAdmin-2.6.0-pl1/','/phpMyAdmin-2.6.0-pl2/',
'/phpMyAdmin-2.6.0-pl3/','/phpMyAdmin-2.6.1-rc1/','/phpMyAdmin-2.6.1-rc2/',
'/phpMyAdmin-2.6.1/','/phpMyAdmin-2.6.1-pl1/','/phpMyAdmin-2.6.1-pl2/','/phpMyAdmin-2.6.1-pl3/',
'/phpMyAdmin-2.6.2-rc1/','/phpMyAdmin-2.6.2-beta1/',
'/phpMyAdmin-2.6.2-rc1/','/phpMyAdmin-2.6.2/','/phpMyAdmin-2.6.2-pl1/','/phpMyAdmin-2.6.3/','/phpMyAdmin-2.6.3-rc1/','/phpMyAdmin-2.6.3/','/phpMyAdmin-2.6.3-pl1/','/phpMyAdmin-2.6.4-rc1/',
'/phpMyAdmin-2.6.4-pl1/','/phpMyAdmin-2.6.4-pl2/','/phpMyAdmin-2.6.4-pl3/','/phpMyAdmin-2.6.4-pl4/','/phpMyAdmin-2.6.4/',
'/phpMyAdmin-2.7.0-beta1/','/phpMyAdmin-2.7.0-rc1/','/phpMyAdmin-2.7.0-pl1/','/phpMyAdmin-2.7.0-pl2/',
'/phpMyAdmin-2.7.0/','/phpMyAdmin-2.8.0-beta1/','/phpMyAdmin-2.8.0-rc1/','/phpMyAdmin-2.8.0-rc2/','/phpMyAdmin-2.8.0/',
'/phpMyAdmin-2.8.0.1/','/phpMyAdmin-2.8.0.2/','/phpMyAdmin-2.8.0.3/','/phpMyAdmin-2.8.0.4/','/phpMyAdmin-2.8.1-rc1/','/phpMyAdmin-2.8.1/','/phpMyAdmin-2.8.2/',
'/sqlmanager/','/mysqlmanager/','/p/m/a/','/PMA2005/','/pma2005/','/phpmanager/','/php-myadmin/',
'/phpmy-admin/','/webadmin/','/sqlweb/','/websql/','/webdb/','/mysqladmin/','/mysql-admin/','/mya/','platz_login/','rcLogin/', 'blogindex/', 'formslogin/', 'autologin/', 'support_login/', 'meta_login/', 
'manuallogin/', 'simpleLogin/', 'loginflat/', 'utility_login/', 'showlogin/','memlogin/','login-redirect/', 'sub-login/', 
'wp-login/', 'login1/', 'dir-login/', 'login_db/', 'xlogin/', 'smblogin/', 'customer_login/', 'UserLogin/','login-us/',
'acct_login/', 'admin_area/', 'bigadmin/', 'project-admins/', 'phppgadmin/', 'pureadmin/', 'sql-admin/', 'radmind/',
'openvpnadmin/', 'wizmysqladmin/','vadmind/', 'ezsqliteadmin/', 'hpwebjetadmin/', 'newsadmin/', 'adminpro/', 'Lotus_Domino_admin/',
'bbadmin/', 'vmailadmin/', 'Indy_admin/', 'ccp14admin/', 'irc-macadmin/','banneradmin/', 'sshadmin/', 'phpldapadmin/', 'macadmin/',
'administratoraccounts/', 'admin4_account/', 'admin4_colon/', 'radmind-1/', 'Super-admin/', 'AdminTools/','cmsadmin/', 'SysAdmin2/',
'globes_admin/', 'cadmins/', 'phpSQLiteAdmin/', 'navSiteAdmin/', 'server_admin_small/', 'logo_sysadmin/', 'server/',
'database_administration/','power_user/', 'system_administration/', 'ss_vms_admin_sm/','manage/','account.asp',
'admin/account.asp','admin/index.asp','admin/login.asp','admin/admin.asp',
'admin_area/admin.asp','admin_area/login.asp','admin/account.html','admin/index.html','admin/login.html','cms/login.html','admin/admin.html',
'admin_area/admin.html','admin_area/login.html','admin_area/index.html','admin_area/index.asp','bb-admin/index.asp','bb-admin/login.asp','bb-admin/admin.asp',
'bb-admin/index.html','bb-admin/login.html','bb-admin/admin.html','admin/home.html','admin/controlpanel.html','admin.html','admin/cp.html','cp.html',
'administrator/index.html','administrator/login.html','administrator/account.html','administrator.html','login.html','modelsearch/login.html','moderator.html',
'moderator/login.html','moderator/admin.html','account.html','controlpanel.html','admincontrol.html','admin_login.html','panel-administracion/login.html',
'admin/home.asp','admin/controlpanel.asp','admin.asp','pages/admin/admin-login.asp','admin/admin-login.asp','admin-login.asp','admin/cp.asp','cp.asp',
'administrator/account.asp','administrator.asp','acceso.asp','login.asp','modelsearch/login.asp','moderator.asp','moderator/login.asp','administrator/login.asp',
'moderator/admin.asp','controlpanel.asp','admin/account.html','adminpanel.html','webadmin.html','pages/admin/admin-login.html','admin/admin-login.html',
'webadmin/index.html','webadmin/admin.html','webadmin/login.html','user.asp','user.html','admincp/index.asp','admincp/login.asp','admincp/index.html',
'admin/adminLogin.html','adminLogin.html','admin/adminLogin.html','home.html','adminarea/index.html','adminarea/admin.html','adminarea/login.html',
'panel-administracion/index.html','panel-administracion/admin.html','modelsearch/index.html','modelsearch/admin.html','admin/admin_login.html',
'admincontrol/login.html','adm/index.html','adm.html','admincontrol.asp','admin/account.asp','adminpanel.asp','webadmin.asp','webadmin/index.asp',
'webadmin/admin.asp','webadmin/login.asp','admin/admin_login.asp','admin_login.asp','panel-administracion/login.asp','adminLogin.asp',
'admin/adminLogin.asp','home.asp','admin.asp','adminarea/index.asp','adminarea/admin.asp','adminarea/login.asp','admin-login.html',
'panel-administracion/index.asp','panel-administracion/admin.asp','modelsearch/index.asp','modelsearch/admin.asp','administrator/index.asp',
'admincontrol/login.asp','adm/admloginuser.asp','admloginuser.asp','admin2.asp','admin2/login.asp','admin2/index.asp','adm/index.asp',
'adm.asp','affiliate.asp','adm_auth.asp','memberadmin.asp','administratorlogin.asp','siteadmin/login.asp','siteadmin/index.asp','siteadmin/login.html'
);

foreach $ways(@path1){

$final=$site.$ways;

my $req=HTTP::Request->new(GET=>$final);
my $ua=LWP::UserAgent->new();
$ua->timeout(30);
my $response=$ua->request($req);

if($response->content =~ /Username/ ||
$response->content =~ /Password/ ||
$response->content =~ /username/ ||
$response->content =~ /password/ ||
$response->content =~ /USERNAME/ ||
$response->content =~ /PASSWORD/ ||
$response->content =~ /Username/ ||
$response->content =~ /Wachtwoord/ ||
$response->content =~ /Senha/ ||
$response->content =~ /senha/ ||
$response->content =~ /Personal/ ||
$response->content =~ /Usuario/ ||
$response->content =~ /Clave/ ||
$response->content =~ /Usager/ ||
$response->content =~ /usager/ ||
$response->content =~ /Sing/ ||
$response->content =~ /passe/ ||
$response->content =~ /P\/W/ || 
$response->content =~ /Admin Password/
){
print " \n [+] Found -> $final\n\n";
}else{
print "[-] Not Found <- $final\n";
}
}
}

if($code eq "1"){

@path2=('admin/','administrator/','admin1/','admin2/','admin3/','admin4/','admin5/','usuarios/','usuario/','administrator/','moderator/','webadmin/','adminarea/',
'bb-admin/','adminLogin/','admin_area/','panel-administracion/','instadmin/',
'memberadmin/','administratorlogin/','adm/','admincp/','admcp/','cp/','modcp/','ADMINCPCP/','admincpcp/',
'adminsec/','adm1/','adm2/','adm4/','moderatorcp/','adminare/','admins/','cpanel/','ccms/','maintenance/',
'webmaster/','configuration/','configure/','websvn/','controlpanel/','phpmyadmin/',
'myadmin/','sysadmin/','ur-admin/','Server/','wp-admin/','administr8/','administrivia/',
'Database_Administration/','useradmin/','pgadmin/','directadmin/','staradmin/','ServerAdministrator/',
'administer/','LiveUser_Admin/','sys-admin/typo3/','cpanel_file/','platz_login/','rcLogin/','blogindex/',
'formslogin/','autologin/','support_login/','meta_login/','manuallogin/','simpleLogin/','loginflat/',
'utility_login/','showlogin/','memlogin/','login-redirect/','sub-login/','wp-login/','login1/','dir-login/',
'login_db/','xlogin/','smblogin/','customer_login/','login-us/','acct_login/','bigadmin/','project-admins/',
'phppgadmin/','pureadmin/','sql-admin/','radmind/','openvpnadmin/','wizmysqladmin/','vadmind/','ezsqliteadmin/',
'hpwebjetadmin/','newsadmin/','adminpro/','Lotus_Domino_Admin/','bbadmin/','vmailadmin/','Indy_admin/','ccp14admin/',
'irc-macadmin/','banneradmin/','sshadmin/','phpldapadmin/','macadmin/','admi','istratorcounts/','admin4_accout/',
'admin4_colon/','radmind-1/','Super-Admin/','AdminTools/','cmsadmin/','SysAdmin2/','globes_admin/','cadmins/',
'phpSQLiteAdmin/','navSiteAdmin/','server_admin_small/','logo_sysadmin/','login/','cms/','admon/','ADMON/','cms/login.html','/phpMyAdmin/','/phpmyadmin/','/PMA/','/pma/','/dbadmin/','/mysql/','/myadmin/','/phpmyadmin2/','/phpMyAdmin2/',
'/phpMyAdmin-2/','/php-my-admin/','/phpMyAdmin-2.2.3/','/phpMyAdmin-2.2.6/','/user/',
'/phpMyAdmin-2.5.1/','/phpMyAdmin-2.5.4/','/phpMyAdmin-2.5.5-rc1/',
'/phpMyAdmin-2.5.5-rc2/','/phpMyAdmin-2.5.5/','/phpMyAdmin-2.5.5-pl1/',
'/phpMyAdmin-2.5.6-rc1/','/phpMyAdmin-2.5.6-rc2/','/phpMyAdmin-2.5.6/','/phpMyAdmin-2.5.7/','/phpMyAdmin-2.5.7-pl1/',
'/phpMyAdmin-2.6.0-alpha/','/phpMyAdmin-2.6.0-alpha2/',
'/phpMyAdmin-2.6.0-beta1/','/phpMyAdmin-2.6.0-beta2/','/phpMyAdmin-2.6.0-rc1/','/phpMyAdmin-2.6.0-rc2/',
'/phpMyAdmin-2.6.0-rc3/','/phpMyAdmin-2.6.0/','/phpMyAdmin-2.6.0-pl1/','/phpMyAdmin-2.6.0-pl2/',
'/phpMyAdmin-2.6.0-pl3/','/phpMyAdmin-2.6.1-rc1/','/phpMyAdmin-2.6.1-rc2/',
'/phpMyAdmin-2.6.1/','/phpMyAdmin-2.6.1-pl1/','/phpMyAdmin-2.6.1-pl2/','/phpMyAdmin-2.6.1-pl3/',
'/phpMyAdmin-2.6.2-rc1/','/phpMyAdmin-2.6.2-beta1/',
'/phpMyAdmin-2.6.2-rc1/','/phpMyAdmin-2.6.2/','/phpMyAdmin-2.6.2-pl1/','/phpMyAdmin-2.6.3/','/phpMyAdmin-2.6.3-rc1/','/phpMyAdmin-2.6.3/','/phpMyAdmin-2.6.3-pl1/','/phpMyAdmin-2.6.4-rc1/',
'/phpMyAdmin-2.6.4-pl1/','/phpMyAdmin-2.6.4-pl2/','/phpMyAdmin-2.6.4-pl3/','/phpMyAdmin-2.6.4-pl4/','/phpMyAdmin-2.6.4/',
'/phpMyAdmin-2.7.0-beta1/','/phpMyAdmin-2.7.0-rc1/','/phpMyAdmin-2.7.0-pl1/','/phpMyAdmin-2.7.0-pl2/',
'/phpMyAdmin-2.7.0/','/phpMyAdmin-2.8.0-beta1/','/phpMyAdmin-2.8.0-rc1/','/phpMyAdmin-2.8.0-rc2/','/phpMyAdmin-2.8.0/',
'/phpMyAdmin-2.8.0.1/','/phpMyAdmin-2.8.0.2/','/phpMyAdmin-2.8.0.3/','/phpMyAdmin-2.8.0.4/','/phpMyAdmin-2.8.1-rc1/','/phpMyAdmin-2.8.1/','/phpMyAdmin-2.8.2/',
'/sqlmanager/','/mysqlmanager/','/p/m/a/','/PMA2005/','/pma2005/','/phpmanager/','/php-myadmin/',
'/phpmy-admin/','/webadmin/','/sqlweb/','/websql/','/webdb/','/mysqladmin/','/mysql-admin/','/mya/','platz_login/','rcLogin/', 'blogindex/', 'formslogin/', 'autologin/', 'support_login/', 'meta_login/', 
'manuallogin/', 'simpleLogin/', 'loginflat/', 'utility_login/', 'showlogin/','memlogin/','login-redirect/', 'sub-login/', 
'wp-login/', 'login1/', 'dir-login/', 'login_db/', 'xlogin/', 'smblogin/', 'customer_login/', 'UserLogin/','login-us/',
'acct_login/', 'admin_area/', 'bigadmin/', 'project-admins/', 'phppgadmin/', 'pureadmin/', 'sql-admin/', 'radmind/',
'openvpnadmin/', 'wizmysqladmin/','vadmind/', 'ezsqliteadmin/', 'hpwebjetadmin/', 'newsadmin/', 'adminpro/', 'Lotus_Domino_admin/',
'bbadmin/', 'vmailadmin/', 'Indy_admin/', 'ccp14admin/', 'irc-macadmin/','banneradmin/', 'sshadmin/', 'phpldapadmin/', 'macadmin/',
'administratoraccounts/', 'admin4_account/', 'admin4_colon/', 'radmind-1/', 'Super-admin/', 'AdminTools/','cmsadmin/', 'SysAdmin2/',
'globes_admin/', 'cadmins/', 'phpSQLiteAdmin/', 'navSiteAdmin/', 'server_admin_small/', 'logo_sysadmin/', 'server/',
'database_administration/','power_user/', 'system_administration/', 'ss_vms_admin_sm/','manage/','admin/account.php','admin/index.php','admin/login.php','admin/admin.php','admin/account.php',
'admin_area/admin.php','admin_area/login.php','siteadmin/login.php','siteadmin/index.php','siteadmin/login.html','admin/account.html','admin/index.html','admin/login.html','admin/admin.html',
'admin_area/index.php','bb-admin/index.php','bb-admin/login.php','bb-admin/admin.php','admin/home.php','admin_area/login.html','admin_area/index.html',
'admin/controlpanel.php','admin.php','admincp/index.asp','admincp/login.asp','admincp/index.html','admin/account.html','adminpanel.html','webadmin.html',
'webadmin/index.html','webadmin/admin.html','webadmin/login.html','admin/admin_login.html','admin_login.html','panel-administracion/login.html',
'admin/cp.php','cp.php','administrator/index.php','administrator/login.php','nsw/admin/login.php','webadmin/login.php','admin/admin_login.php','admin_login.php',
'administrator/account.php','administrator.php','admin_area/admin.html','pages/admin/admin-login.php','admin/admin-login.php','admin-login.php',
'bb-admin/index.html','bb-admin/login.html','acceso.php','bb-admin/admin.html','admin/home.html','login.php','modelsearch/login.php','moderator.php','moderator/login.php',
'moderator/admin.php','account.php','pages/admin/admin-login.html','admin/admin-login.html','admin-login.html','controlpanel.php','admincontrol.php',
'admin/adminLogin.html','adminLogin.html','admin/adminLogin.html','home.html','rcjakar/admin/login.php','adminarea/index.html','adminarea/admin.html',
'webadmin.php','webadmin/index.php','webadmin/admin.php','admin/controlpanel.html','admin.html','admin/cp.html','cp.html','adminpanel.php','moderator.html',
'administrator/index.html','administrator/login.html','user.html','administrator/account.html','administrator.html','login.html','modelsearch/login.html',
'moderator/login.html','adminarea/login.html','panel-administracion/index.html','panel-administracion/admin.html','modelsearch/index.html','modelsearch/admin.html',
'admincontrol/login.html','adm/index.html','adm.html','moderator/admin.html','user.php','account.html','controlpanel.html','admincontrol.html',
'panel-administracion/login.php','wp-login.php','adminLogin.php','admin/adminLogin.php','home.php','admin.php','adminarea/index.php',
'adminarea/admin.php','adminarea/login.php','panel-administracion/index.php','panel-administracion/admin.php','modelsearch/index.php',
'modelsearch/admin.php','admincontrol/login.php','adm/admloginuser.php','admloginuser.php','admin2.php','admin2/login.php','admin2/index.php','usuarios/login.php',
'adm/index.php','adm.php','affiliate.php','adm_auth.php','memberadmin.php','administratorlogin.php'
);

foreach $ways(@path2){

$final=$site.$ways;

my $req=HTTP::Request->new(GET=>$final);
my $ua=LWP::UserAgent->new();
$ua->timeout(30);
my $response=$ua->request($req);

if($response->content =~ /Username/ ||
$response->content =~ /Password/ ||
$response->content =~ /username/ ||
$response->content =~ /password/ ||
$response->content =~ /USERNAME/ ||
$response->content =~ /PASSWORD/ ||
$response->content =~ /Username/ ||
$response->content =~ /Wachtwoord/ ||
$response->content =~ /Senha/ ||
$response->content =~ /senha/ ||
$response->content =~ /Personal/ ||
$response->content =~ /Usuario/ ||
$response->content =~ /Clave/ ||
$response->content =~ /Usager/ ||
$response->content =~ /usager/ ||
$response->content =~ /Sing/ ||
$response->content =~ /passe/ ||
$response->content =~ /P\/W/ || 
$response->content =~ /Admin Password/
){
print " \n [+] Found -> $final\n\n";
}else{
print "[-] Not Found <- $final\n";
}
}
}


if($code eq "4"){

@path2=('admin/','administrator/','admin1/','admin2/','admin3/','admin4/','admin5/','usuarios/','usuario/','administrator/',
'moderator/','webadmin/','adminarea/','bb-admin/','adminLogin/',
'admin_area/','panel-administracion/','instadmin/',
'memberadmin/','administratorlogin/','adm/','admincp/','admcp/','cp/','modcp/','ADMINCPCP/','admincpcp/','adminsec/','adm1/','adm2/',
'adm4/','moderatorcp/','adminare/','admins/','cpanel/','ccms/','maintenance/','webmaster/','configuration/','configure/','websvn/','controlpanel/','phpmyadmin/',
'myadmin/','sysadmin/','ur-admin/','Server/','wp-admin/','administr8/','administrivia/','/user/',
'Database_Administration/','useradmin/','pgadmin/','directadmin/','staradmin/','ServerAdministrator/',
'administer/','LiveUser_Admin/','sys-admin/typo3/','cpanel_file/','platz_login/','rcLogin/','blogindex/',
'formslogin/','autologin/','support_login/','meta_login/','manuallogin/','simpleLogin/','loginflat/',
'utility_login/','showlogin/','memlogin/','login-redirect/','sub-login/','wp-login/','login1/','dir-login/',
'login_db/','xlogin/','smblogin/','customer_login/','login-us/','acct_login/','bigadmin/','project-admins/',
'phppgadmin/','pureadmin/','sql-admin/','radmind/','openvpnadmin/','wizmysqladmin/','vadmind/','ezsqliteadmin/',
'hpwebjetadmin/','newsadmin/','adminpro/','Lotus_Domino_Admin/','bbadmin/','vmailadmin/','Indy_admin/','ccp14admin/',
'irc-macadmin/','banneradmin/','sshadmin/','phpldapadmin/','macadmin/','admi','istratorcounts/','admin4_accout/',
'admin4_colon/','radmind-1/','Super-Admin/','AdminTools/','cmsadmin/','SysAdmin2/','globes_admin/','cadmins/',
'phpSQLiteAdmin/','navSiteAdmin/','server_admin_small/','logo_sysadmin/','login/','cms/','admon/','ADMON/','cms/login.html','/phpMyAdmin/','/phpmyadmin/','/PMA/','/pma/','/dbadmin/','/mysql/','/myadmin/','/phpmyadmin2/','/phpMyAdmin2/',
'/phpMyAdmin-2/','/php-my-admin/','/phpMyAdmin-2.2.3/','/phpMyAdmin-2.2.6/',
'/phpMyAdmin-2.5.1/','/phpMyAdmin-2.5.4/','/phpMyAdmin-2.5.5-rc1/',
'/phpMyAdmin-2.5.5-rc2/','/phpMyAdmin-2.5.5/','/phpMyAdmin-2.5.5-pl1/',
'/phpMyAdmin-2.5.6-rc1/','/phpMyAdmin-2.5.6-rc2/','/phpMyAdmin-2.5.6/','/phpMyAdmin-2.5.7/','/phpMyAdmin-2.5.7-pl1/',
'/phpMyAdmin-2.6.0-alpha/','/phpMyAdmin-2.6.0-alpha2/',
'/phpMyAdmin-2.6.0-beta1/','/phpMyAdmin-2.6.0-beta2/','/phpMyAdmin-2.6.0-rc1/','/phpMyAdmin-2.6.0-rc2/',
'/phpMyAdmin-2.6.0-rc3/','/phpMyAdmin-2.6.0/','/phpMyAdmin-2.6.0-pl1/','/phpMyAdmin-2.6.0-pl2/',
'/phpMyAdmin-2.6.0-pl3/','/phpMyAdmin-2.6.1-rc1/','/phpMyAdmin-2.6.1-rc2/',
'/phpMyAdmin-2.6.1/','/phpMyAdmin-2.6.1-pl1/','/phpMyAdmin-2.6.1-pl2/','/phpMyAdmin-2.6.1-pl3/',
'/phpMyAdmin-2.6.2-rc1/','/phpMyAdmin-2.6.2-beta1/',
'/phpMyAdmin-2.6.2-rc1/','/phpMyAdmin-2.6.2/','/phpMyAdmin-2.6.2-pl1/','/phpMyAdmin-2.6.3/','/phpMyAdmin-2.6.3-rc1/','/phpMyAdmin-2.6.3/','/phpMyAdmin-2.6.3-pl1/','/phpMyAdmin-2.6.4-rc1/',
'/phpMyAdmin-2.6.4-pl1/','/phpMyAdmin-2.6.4-pl2/','/phpMyAdmin-2.6.4-pl3/','/phpMyAdmin-2.6.4-pl4/','/phpMyAdmin-2.6.4/',
'/phpMyAdmin-2.7.0-beta1/','/phpMyAdmin-2.7.0-rc1/','/phpMyAdmin-2.7.0-pl1/','/phpMyAdmin-2.7.0-pl2/',
'/phpMyAdmin-2.7.0/','/phpMyAdmin-2.8.0-beta1/','/phpMyAdmin-2.8.0-rc1/','/phpMyAdmin-2.8.0-rc2/','/phpMyAdmin-2.8.0/',
'/phpMyAdmin-2.8.0.1/','/phpMyAdmin-2.8.0.2/','/phpMyAdmin-2.8.0.3/','/phpMyAdmin-2.8.0.4/','/phpMyAdmin-2.8.1-rc1/','/phpMyAdmin-2.8.1/','/phpMyAdmin-2.8.2/',
'/sqlmanager/','/mysqlmanager/','/p/m/a/','/PMA2005/','/pma2005/','/phpmanager/','/php-myadmin/',
'/phpmy-admin/','/webadmin/','/sqlweb/','/websql/','/webdb/','/mysqladmin/','/mysql-admin/','/mya/','platz_login/','rcLogin/', 'blogindex/', 'formslogin/', 'autologin/', 'support_login/', 'meta_login/', 
'manuallogin/', 'simpleLogin/', 'loginflat/', 'utility_login/', 'showlogin/','memlogin/','login-redirect/', 'sub-login/', 
'wp-login/', 'login1/', 'dir-login/', 'login_db/', 'xlogin/', 'smblogin/', 'customer_login/', 'UserLogin/','login-us/',
'acct_login/', 'admin_area/', 'bigadmin/', 'project-admins/', 'phppgadmin/', 'pureadmin/', 'sql-admin/', 'radmind/',
'openvpnadmin/', 'wizmysqladmin/','vadmind/', 'ezsqliteadmin/', 'hpwebjetadmin/', 'newsadmin/', 'adminpro/', 'Lotus_Domino_admin/',
'bbadmin/', 'vmailadmin/', 'Indy_admin/', 'ccp14admin/', 'irc-macadmin/','banneradmin/', 'sshadmin/', 'phpldapadmin/', 'macadmin/',
'administratoraccounts/', 'admin4_account/', 'admin4_colon/', 'radmind-1/', 'Super-admin/', 'AdminTools/','cmsadmin/', 'SysAdmin2/',
'globes_admin/', 'cadmins/', 'phpSQLiteAdmin/', 'navSiteAdmin/', 'server_admin_small/', 'logo_sysadmin/', 'server/',
'database_administration/','power_user/', 'system_administration/', 'ss_vms_admin_sm/','manage/','admin/account.cfm','admin/index.cfm','admin/login.cfm','admin/admin.cfm','admin/account.cfm',
'admin_area/admin.cfm','admin_area/login.cfm','siteadmin/login.cfm','siteadmin/index.cfm','siteadmin/login.html','admin/account.html','admin/index.html','admin/login.html','admin/admin.html',
'admin_area/index.cfm','bb-admin/index.cfm','bb-admin/login.cfm','bb-admin/admin.cfm','admin/home.cfm','admin_area/login.html','admin_area/index.html',
'admin/controlpanel.cfm','admin.cfm','admincp/index.asp','admincp/login.asp','admincp/index.html','admin/account.html','adminpanel.html','webadmin.html',
'webadmin/index.html','webadmin/admin.html','webadmin/login.html','admin/admin_login.html','admin_login.html','panel-administracion/login.html',
'admin/cp.cfm','cp.cfm','administrator/index.cfm','administrator/login.cfm','nsw/admin/login.cfm','webadmin/login.cfm','admin/admin_login.cfm','admin_login.cfm',
'administrator/account.cfm','administrator.cfm','admin_area/admin.html','pages/admin/admin-login.cfm','admin/admin-login.cfm','admin-login.cfm',
'bb-admin/index.html','bb-admin/login.html','bb-admin/admin.html','admin/home.html','login.cfm','modelsearch/login.cfm','moderator.cfm','moderator/login.cfm',
'moderator/admin.cfm','account.cfm','pages/admin/admin-login.html','admin/admin-login.html','admin-login.html','controlpanel.cfm','admincontrol.cfm',
'admin/adminLogin.html','acceso.cfm','adminLogin.html','admin/adminLogin.html','home.html','rcjakar/admin/login.cfm','adminarea/index.html','adminarea/admin.html',
'webadmin.cfm','webadmin/index.cfm','webadmin/admin.cfm','admin/controlpanel.html','admin.html','admin/cp.html','cp.html','adminpanel.cfm','moderator.html',
'administrator/index.html','administrator/login.html','user.html','administrator/account.html','administrator.html','login.html','modelsearch/login.html',
'moderator/login.html','adminarea/login.html','panel-administracion/index.html','panel-administracion/admin.html','modelsearch/index.html','modelsearch/admin.html',
'admincontrol/login.html','adm/index.html','adm.html','moderator/admin.html','user.cfm','account.html','controlpanel.html','admincontrol.html',
'panel-administracion/login.cfm','wp-login.cfm','adminLogin.cfm','admin/adminLogin.cfm','home.cfm','admin.cfm','adminarea/index.cfm',
'adminarea/admin.cfm','adminarea/login.cfm','panel-administracion/index.cfm','panel-administracion/admin.cfm','modelsearch/index.cfm',
'modelsearch/admin.cfm','admincontrol/login.cfm','adm/admloginuser.cfm','admloginuser.cfm','admin2.cfm','admin2/login.cfm','admin2/index.cfm','usuarios/login.cfm',
'adm/index.cfm','adm.cfm','affiliate.cfm','adm_auth.cfm','memberadmin.cfm','administratorlogin.cfm'
);

foreach $ways(@path2){

$final=$site.$ways;

my $req=HTTP::Request->new(GET=>$final);
my $ua=LWP::UserAgent->new();
$ua->timeout(30);
my $response=$ua->request($req);

if($response->content =~ /Username/ ||
$response->content =~ /Password/ ||
$response->content =~ /username/ ||
$response->content =~ /password/ ||
$response->content =~ /USERNAME/ ||
$response->content =~ /PASSWORD/ ||
$response->content =~ /Username/ ||
$response->content =~ /Wachtwoord/ ||
$response->content =~ /Senha/ ||
$response->content =~ /senha/ ||
$response->content =~ /Personal/ ||
$response->content =~ /Usuario/ ||
$response->content =~ /Clave/ ||
$response->content =~ /Usager/ ||
$response->content =~ /usager/ ||
$response->content =~ /Sing/ ||
$response->content =~ /passe/ ||
$response->content =~ /P\/W/ || 
$response->content =~ /Admin Password/
){
print " \n [+] Found -> $final\n\n";
}else{
print "[-] Not Found <- $final\n";
}
}
}

if($code eq "3"){

@path2=('admin/','administrator/','admin1/','admin2/','admin3/','admin4/','admin5/','usuarios/','usuario/','administrator/',
'moderator/','webadmin/','adminarea/','bb-admin/','adminLogin/','admin_area/','panel-administracion/','instadmin/',
'memberadmin/','administratorlogin/','adm/','admincp/','admcp/','cp/','modcp/','ADMINCPCP/','admincpcp/','adminsec/',
'adm1/','adm2/','adm4/','moderatorcp/','adminare/','admins/','cpanel/','ccms/','maintenance/','webmaster/',
'configuration/','configure/','websvn/','controlpanel/','phpmyadmin/',
'myadmin/','sysadmin/','ur-admin/','Server/','wp-admin/','administr8/','administrivia/',
'Database_Administration/','useradmin/','pgadmin/','directadmin/','staradmin/','ServerAdministrator/',
'administer/','LiveUser_Admin/','sys-admin/typo3/','cpanel_file/','platz_login/','rcLogin/','blogindex/',
'formslogin/','autologin/','support_login/','meta_login/','manuallogin/','simpleLogin/','loginflat/',
'utility_login/','showlogin/','memlogin/','login-redirect/','sub-login/','wp-login/','login1/','dir-login/',
'login_db/','xlogin/','smblogin/','customer_login/','login-us/','acct_login/','bigadmin/','project-admins/',
'phppgadmin/','pureadmin/','sql-admin/','radmind/','openvpnadmin/','wizmysqladmin/','vadmind/','ezsqliteadmin/',
'hpwebjetadmin/','newsadmin/','adminpro/','Lotus_Domino_Admin/','bbadmin/','vmailadmin/','Indy_admin/','ccp14admin/',
'irc-macadmin/','banneradmin/','sshadmin/','phpldapadmin/','macadmin/','admi','istratorcounts/','admin4_accout/',
'admin4_colon/','radmind-1/','Super-Admin/','AdminTools/','cmsadmin/','SysAdmin2/','globes_admin/','cadmins/',
'phpSQLiteAdmin/','navSiteAdmin/','server_admin_small/','logo_sysadmin/','login/','cms/','admon/','ADMON/','cms/login.html','/phpMyAdmin/','/phpmyadmin/','/PMA/','/pma/','/dbadmin/','/mysql/','/myadmin/','/phpmyadmin2/','/phpMyAdmin2/',
'/phpMyAdmin-2/','/php-my-admin/','/phpMyAdmin-2.2.3/','/phpMyAdmin-2.2.6/',
'/phpMyAdmin-2.5.1/','/phpMyAdmin-2.5.4/','/phpMyAdmin-2.5.5-rc1/','/user/',
'/phpMyAdmin-2.5.5-rc2/','/phpMyAdmin-2.5.5/','/phpMyAdmin-2.5.5-pl1/',
'/phpMyAdmin-2.5.6-rc1/','/phpMyAdmin-2.5.6-rc2/','/phpMyAdmin-2.5.6/','/phpMyAdmin-2.5.7/','/phpMyAdmin-2.5.7-pl1/',
'/phpMyAdmin-2.6.0-alpha/','/phpMyAdmin-2.6.0-alpha2/',
'/phpMyAdmin-2.6.0-beta1/','/phpMyAdmin-2.6.0-beta2/','/phpMyAdmin-2.6.0-rc1/','/phpMyAdmin-2.6.0-rc2/',
'/phpMyAdmin-2.6.0-rc3/','/phpMyAdmin-2.6.0/','/phpMyAdmin-2.6.0-pl1/','/phpMyAdmin-2.6.0-pl2/',
'/phpMyAdmin-2.6.0-pl3/','/phpMyAdmin-2.6.1-rc1/','/phpMyAdmin-2.6.1-rc2/',
'/phpMyAdmin-2.6.1/','/phpMyAdmin-2.6.1-pl1/','/phpMyAdmin-2.6.1-pl2/','/phpMyAdmin-2.6.1-pl3/',
'/phpMyAdmin-2.6.2-rc1/','/phpMyAdmin-2.6.2-beta1/',
'/phpMyAdmin-2.6.2-rc1/','/phpMyAdmin-2.6.2/','platz_login/','rcLogin/', 'blogindex/', 'formslogin/', 'autologin/', 'support_login/', 'meta_login/', 
'manuallogin/', 'simpleLogin/', 'loginflat/', 'utility_login/', 'showlogin/','memlogin/','login-redirect/', 'sub-login/', 
'wp-login/', 'login1/', 'dir-login/', 'login_db/', 'xlogin/', 'smblogin/', 'customer_login/', 'UserLogin/','login-us/',
'acct_login/', 'admin_area/', 'bigadmin/', 'project-admins/', 'phppgadmin/', 'pureadmin/', 'sql-admin/', 'radmind/',
'openvpnadmin/', 'wizmysqladmin/','vadmind/', 'ezsqliteadmin/', 'hpwebjetadmin/', 'newsadmin/', 'adminpro/', 'Lotus_Domino_admin/',
'bbadmin/', 'vmailadmin/', 'Indy_admin/', 'ccp14admin/', 'irc-macadmin/','banneradmin/', 'sshadmin/', 'phpldapadmin/', 'macadmin/',
'administratoraccounts/', 'admin4_account/', 'admin4_colon/', 'radmind-1/', 'Super-admin/', 'AdminTools/','cmsadmin/', 'SysAdmin2/',
'globes_admin/', 'cadmins/', 'phpSQLiteAdmin/', 'navSiteAdmin/', 'server_admin_small/', 'logo_sysadmin/', 'server/',
'database_administration/','power_user/', 'system_administration/', 'ss_vms_admin_sm/','manage/','/phpMyAdmin-2.6.2-pl1/','/phpMyAdmin-2.6.3/','/phpMyAdmin-2.6.3-rc1/','/phpMyAdmin-2.6.3/','/phpMyAdmin-2.6.3-pl1/','/phpMyAdmin-2.6.4-rc1/',
'/phpMyAdmin-2.6.4-pl1/','/phpMyAdmin-2.6.4-pl2/','/phpMyAdmin-2.6.4-pl3/','/phpMyAdmin-2.6.4-pl4/','/phpMyAdmin-2.6.4/',
'/phpMyAdmin-2.7.0-beta1/','/phpMyAdmin-2.7.0-rc1/','/phpMyAdmin-2.7.0-pl1/','/phpMyAdmin-2.7.0-pl2/',
'/phpMyAdmin-2.7.0/','/phpMyAdmin-2.8.0-beta1/','/phpMyAdmin-2.8.0-rc1/','/phpMyAdmin-2.8.0-rc2/','/phpMyAdmin-2.8.0/',
'/phpMyAdmin-2.8.0.1/','/phpMyAdmin-2.8.0.2/','/phpMyAdmin-2.8.0.3/','/phpMyAdmin-2.8.0.4/','/phpMyAdmin-2.8.1-rc1/','/phpMyAdmin-2.8.1/','/phpMyAdmin-2.8.2/',
'/sqlmanager/','/mysqlmanager/','/p/m/a/','/PMA2005/','/pma2005/','/phpmanager/','/php-myadmin/',
'/phpmy-admin/','/webadmin/','/sqlweb/','/websql/','/webdb/','/mysqladmin/','/mysql-admin/','/mya/','admin/account.aspx','admin/index.aspx','admin/login.aspx','admin/admin.aspx','admin/account.aspx',
'admin_area/admin.aspx','admin_area/login.aspx','siteadmin/login.aspx','siteadmin/index.aspx','siteadmin/login.html','admin/account.html','admin/index.html','admin/login.html','admin/admin.html',
'admin_area/index.aspx','bb-admin/index.aspx','bb-admin/login.aspx','bb-admin/admin.aspx','admin/home.aspx','admin_area/login.html','admin_area/index.html',
'admin/controlpanel.aspx','admin.aspx','admincp/index.asp','admincp/login.asp','admincp/index.html','admin/account.html','adminpanel.html','webadmin.html',
'webadmin/index.html','webadmin/admin.html','webadmin/login.html','admin/admin_login.html','admin_login.html','panel-administracion/login.html',
'admin/cp.aspx','cp.aspx','administrator/index.aspx','administrator/login.aspx','nsw/admin/login.aspx','webadmin/login.aspx','admin/admin_login.aspx','admin_login.aspx',
'administrator/account.aspx','administrator.aspx','admin_area/admin.html','pages/admin/admin-login.aspx','admin/admin-login.aspx','admin-login.aspx',
'bb-admin/index.html','bb-admin/login.html','bb-admin/admin.html','admin/home.html','login.aspx','modelsearch/login.aspx','moderator.aspx','moderator/login.aspx',
'moderator/admin.aspx','acceso.aspx','account.aspx','pages/admin/admin-login.html','admin/admin-login.html','admin-login.html','controlpanel.aspx','admincontrol.aspx',
'admin/adminLogin.html','adminLogin.html','admin/adminLogin.html','home.html','rcjakar/admin/login.aspx','adminarea/index.html','adminarea/admin.html',
'webadmin.aspx','webadmin/index.aspx','webadmin/admin.aspx','admin/controlpanel.html','admin.html','admin/cp.html','cp.html','adminpanel.aspx','moderator.html',
'administrator/index.html','administrator/login.html','user.html','administrator/account.html','administrator.html','login.html','modelsearch/login.html',
'moderator/login.html','adminarea/login.html','panel-administracion/index.html','panel-administracion/admin.html','modelsearch/index.html','modelsearch/admin.html',
'admincontrol/login.html','adm/index.html','adm.html','moderator/admin.html','user.aspx','account.html','controlpanel.html','admincontrol.html',
'panel-administracion/login.aspx','wp-login.aspx','adminLogin.aspx','admin/adminLogin.aspx','home.aspx','admin.aspx','adminarea/index.aspx',
'adminarea/admin.aspx','adminarea/login.aspx','panel-administracion/index.aspx','panel-administracion/admin.aspx','modelsearch/index.aspx',
'modelsearch/admin.aspx','admincontrol/login.aspx','adm/admloginuser.aspx','admloginuser.aspx','admin2.aspx','admin2/login.aspx','admin2/index.aspx','usuarios/login.aspx',
'adm/index.aspx','adm.aspx','affiliate.aspx','adm_auth.aspx','memberadmin.aspx','administratorlogin.aspx'
);

foreach $ways(@path2){

$final=$site.$ways;

my $req=HTTP::Request->new(GET=>$final);
my $ua=LWP::UserAgent->new();
$ua->timeout(30);
my $response=$ua->request($req);

if($response->content =~ /Username/ ||
$response->content =~ /Password/ ||
$response->content =~ /username/ ||
$response->content =~ /password/ ||
$response->content =~ /USERNAME/ ||
$response->content =~ /PASSWORD/ ||
$response->content =~ /Username/ ||
$response->content =~ /Wachtwoord/ ||
$response->content =~ /Senha/ ||
$response->content =~ /senha/ ||
$response->content =~ /Personal/ ||
$response->content =~ /Usuario/ ||
$response->content =~ /Clave/ ||
$response->content =~ /Usager/ ||
$response->content =~ /usager/ ||
$response->content =~ /Sing/ ||
$response->content =~ /passe/ ||
$response->content =~ /P\/W/ || 
$response->content =~ /Admin Password/
){
print " \n [+] Found -> $final\n\n";
}else{
print "[-] Not Found <- $final\n";
}
}
}


if($code eq "5"){

@path2=('admin/','administrator/','admin1/','admin2/','admin3/','admin4/','admin5/','usuarios/','usuario/',
'administrator/','moderator/','webadmin/','adminarea/','bb-admin/','adminLogin/','admin_area/','panel-administracion/','instadmin/',
'memberadmin/','administratorlogin/','adm/','admincp/','admcp/','cp/','modcp/','ADMINCPCP/','admincpcp/','adminsec/','adm1/',
'adm2/','adm4/','moderatorcp/','adminare/','admins/','cpanel/','ccms/','maintenance/','webmaster/',
'configuration/','configure/','websvn/','controlpanel/','phpmyadmin/',
'myadmin/','sysadmin/','ur-admin/','Server/','wp-admin/','administr8/','administrivia/',
'Database_Administration/','useradmin/','pgadmin/','directadmin/','staradmin/','ServerAdministrator/',
'administer/','LiveUser_Admin/','sys-admin/typo3/','cpanel_file/','platz_login/','rcLogin/','blogindex/',
'formslogin/','autologin/','support_login/','meta_login/','manuallogin/','simpleLogin/','loginflat/',
'utility_login/','showlogin/','memlogin/','login-redirect/','sub-login/','wp-login/','login1/','dir-login/',
'login_db/','xlogin/','smblogin/','customer_login/','login-us/','acct_login/','bigadmin/','project-admins/',
'phppgadmin/','pureadmin/','sql-admin/','radmind/','openvpnadmin/','wizmysqladmin/','vadmind/','ezsqliteadmin/',
'hpwebjetadmin/','newsadmin/','adminpro/','Lotus_Domino_Admin/','bbadmin/','vmailadmin/','Indy_admin/','ccp14admin/',
'irc-macadmin/','banneradmin/','sshadmin/','phpldapadmin/','macadmin/','admi','istratorcounts/','admin4_accout/',
'admin4_colon/','radmind-1/','Super-Admin/','AdminTools/','cmsadmin/','SysAdmin2/','globes_admin/','cadmins/',
'phpSQLiteAdmin/','navSiteAdmin/','server_admin_small/','logo_sysadmin/','login/','cms/','admon/','ADMON/','cms/login.html','/phpMyAdmin/','/phpmyadmin/','/PMA/','/pma/','/dbadmin/','/mysql/','/myadmin/','/phpmyadmin2/','/phpMyAdmin2/',
'/phpMyAdmin-2/','/php-my-admin/','/phpMyAdmin-2.2.3/','/phpMyAdmin-2.2.6/',
'/phpMyAdmin-2.5.1/','/phpMyAdmin-2.5.4/','/phpMyAdmin-2.5.5-rc1/','/user/',
'/phpMyAdmin-2.5.5-rc2/','/phpMyAdmin-2.5.5/','/phpMyAdmin-2.5.5-pl1/',
'/phpMyAdmin-2.5.6-rc1/','/phpMyAdmin-2.5.6-rc2/','/phpMyAdmin-2.5.6/','/phpMyAdmin-2.5.7/','/phpMyAdmin-2.5.7-pl1/',
'/phpMyAdmin-2.6.0-alpha/','/phpMyAdmin-2.6.0-alpha2/',
'/phpMyAdmin-2.6.0-beta1/','/phpMyAdmin-2.6.0-beta2/','/phpMyAdmin-2.6.0-rc1/','/phpMyAdmin-2.6.0-rc2/',
'/phpMyAdmin-2.6.0-rc3/','/phpMyAdmin-2.6.0/','/phpMyAdmin-2.6.0-pl1/','/phpMyAdmin-2.6.0-pl2/',
'/phpMyAdmin-2.6.0-pl3/','/phpMyAdmin-2.6.1-rc1/','/phpMyAdmin-2.6.1-rc2/',
'/phpMyAdmin-2.6.1/','/phpMyAdmin-2.6.1-pl1/','/phpMyAdmin-2.6.1-pl2/','/phpMyAdmin-2.6.1-pl3/',
'/phpMyAdmin-2.6.2-rc1/','/phpMyAdmin-2.6.2-beta1/',
'/phpMyAdmin-2.6.2-rc1/','/phpMyAdmin-2.6.2/','platz_login/','rcLogin/', 'blogindex/', 'formslogin/', 'autologin/', 'support_login/', 'meta_login/', 
'manuallogin/', 'simpleLogin/', 'loginflat/', 'utility_login/', 'showlogin/','memlogin/','login-redirect/', 'sub-login/', 
'wp-login/', 'login1/', 'dir-login/', 'login_db/', 'xlogin/', 'smblogin/', 'customer_login/', 'UserLogin/','login-us/',
'acct_login/', 'admin_area/', 'bigadmin/', 'project-admins/', 'phppgadmin/', 'pureadmin/', 'sql-admin/', 'radmind/',
'openvpnadmin/', 'wizmysqladmin/','vadmind/', 'ezsqliteadmin/', 'hpwebjetadmin/', 'newsadmin/', 'adminpro/', 'Lotus_Domino_admin/',
'bbadmin/', 'vmailadmin/', 'Indy_admin/', 'ccp14admin/', 'irc-macadmin/','banneradmin/', 'sshadmin/', 'phpldapadmin/', 'macadmin/',
'administratoraccounts/', 'admin4_account/', 'admin4_colon/', 'radmind-1/', 'Super-admin/', 'AdminTools/','cmsadmin/', 'SysAdmin2/',
'globes_admin/', 'cadmins/', 'phpSQLiteAdmin/', 'navSiteAdmin/', 'server_admin_small/', 'logo_sysadmin/', 'server/',
'database_administration/','power_user/', 'system_administration/', 'ss_vms_admin_sm/','manage/','/phpMyAdmin-2.6.2-pl1/','/phpMyAdmin-2.6.3/','/phpMyAdmin-2.6.3-rc1/','/phpMyAdmin-2.6.3/','/phpMyAdmin-2.6.3-pl1/','/phpMyAdmin-2.6.4-rc1/',
'/phpMyAdmin-2.6.4-pl1/','/phpMyAdmin-2.6.4-pl2/','/phpMyAdmin-2.6.4-pl3/','/phpMyAdmin-2.6.4-pl4/','/phpMyAdmin-2.6.4/',
'/phpMyAdmin-2.7.0-beta1/','/phpMyAdmin-2.7.0-rc1/','/phpMyAdmin-2.7.0-pl1/','/phpMyAdmin-2.7.0-pl2/',
'/phpMyAdmin-2.7.0/','/phpMyAdmin-2.8.0-beta1/','/phpMyAdmin-2.8.0-rc1/','/phpMyAdmin-2.8.0-rc2/','/phpMyAdmin-2.8.0/',
'/phpMyAdmin-2.8.0.1/','/phpMyAdmin-2.8.0.2/','/phpMyAdmin-2.8.0.3/','/phpMyAdmin-2.8.0.4/','/phpMyAdmin-2.8.1-rc1/','/phpMyAdmin-2.8.1/','/phpMyAdmin-2.8.2/',
'/sqlmanager/','/mysqlmanager/','/p/m/a/','/PMA2005/','/pma2005/','/phpmanager/','/php-myadmin/',
'/phpmy-admin/','/webadmin/','/sqlweb/','/websql/','/webdb/','/mysqladmin/','/mysql-admin/','/mya/','admin/account.js','admin/index.js','admin/login.js','admin/admin.js','admin/account.js',
'admin_area/admin.js','admin_area/login.js','siteadmin/login.js','siteadmin/index.js','siteadmin/login.html','admin/account.html','admin/index.html','admin/login.html','admin/admin.html',
'admin_area/index.js','bb-admin/index.js','bb-admin/login.js','bb-admin/admin.js','admin/home.js','admin_area/login.html','admin_area/index.html',
'admin/controlpanel.js','admin.js','admincp/index.asp','admincp/login.asp','admincp/index.html','admin/account.html','adminpanel.html','webadmin.html',
'webadmin/index.html','webadmin/admin.html','webadmin/login.html','admin/admin_login.html','admin_login.html','panel-administracion/login.html',
'admin/cp.js','cp.js','administrator/index.js','administrator/login.js','nsw/admin/login.js','webadmin/login.js','admin/admin_login.js','admin_login.js',
'administrator/account.js','administrator.js','admin_area/admin.html','pages/admin/admin-login.js','admin/admin-login.js','admin-login.js',
'bb-admin/index.html','bb-admin/login.html','bb-admin/admin.html','admin/home.html','login.js','modelsearch/login.js','moderator.js','moderator/login.js',
'moderator/admin.js','account.js','pages/admin/admin-login.html','admin/admin-login.html','admin-login.html','controlpanel.js','admincontrol.js',
'admin/adminLogin.html','adminLogin.html','admin/adminLogin.html','home.html','rcjakar/admin/login.js','adminarea/index.html','adminarea/admin.html',
'webadmin.js','webadmin/index.js','acceso.js','webadmin/admin.js','admin/controlpanel.html','admin.html','admin/cp.html','cp.html','adminpanel.js','moderator.html',
'administrator/index.html','administrator/login.html','user.html','administrator/account.html','administrator.html','login.html','modelsearch/login.html',
'moderator/login.html','adminarea/login.html','panel-administracion/index.html','panel-administracion/admin.html','modelsearch/index.html','modelsearch/admin.html',
'admincontrol/login.html','adm/index.html','adm.html','moderator/admin.html','user.js','account.html','controlpanel.html','admincontrol.html',
'panel-administracion/login.js','wp-login.js','adminLogin.js','admin/adminLogin.js','home.js','admin.js','adminarea/index.js',
'adminarea/admin.js','adminarea/login.js','panel-administracion/index.js','panel-administracion/admin.js','modelsearch/index.js',
'modelsearch/admin.js','admincontrol/login.js','adm/admloginuser.js','admloginuser.js','admin2.js','admin2/login.js','admin2/index.js','usuarios/login.js',
'adm/index.js','adm.js','affiliate.js','adm_auth.js','memberadmin.js','administratorlogin.js'
);

foreach $ways(@path2){

$final=$site.$ways;

my $req=HTTP::Request->new(GET=>$final);
my $ua=LWP::UserAgent->new();
$ua->timeout(30);
my $response=$ua->request($req);

if($response->content =~ /Username/ ||
$response->content =~ /Password/ ||
$response->content =~ /username/ ||
$response->content =~ /password/ ||
$response->content =~ /USERNAME/ ||
$response->content =~ /PASSWORD/ ||
$response->content =~ /Username/ ||
$response->content =~ /Wachtwoord/ ||
$response->content =~ /Senha/ ||
$response->content =~ /senha/ ||
$response->content =~ /Personal/ ||
$response->content =~ /Usuario/ ||
$response->content =~ /Clave/ ||
$response->content =~ /Usager/ ||
$response->content =~ /usager/ ||
$response->content =~ /Sing/ ||
$response->content =~ /passe/ ||
$response->content =~ /P\/W/ || 
$response->content =~ /Admin Password/
){
print " \n [+] Found -> $final\n\n";
}else{
print "[-] Not Found <- $final\n";
}
}
}

if($code eq "6"){

@path2=('admin/','administrator/','admin1/','admin2/','admin3/','admin4/','admin5/','usuarios/','usuario/','administrator/','moderator/',
'webadmin/','adminarea/','bb-admin/','adminLogin/','admin_area/','panel-administracion/','instadmin/',
'memberadmin/','administratorlogin/','adm/','admincp/','admcp/','cp/','modcp/','ADMINCPCP/','admincpcp/','adminsec/','adm1/','adm2/','adm4/',
'moderatorcp/','adminare/','admins/','cpanel/','ccms/','maintenance/','webmaster/','configuration/','configure/','websvn/','controlpanel/','phpmyadmin/',
'myadmin/','sysadmin/','ur-admin/','Server/','wp-admin/','administr8/','administrivia/',
'Database_Administration/','useradmin/','pgadmin/','directadmin/','staradmin/','ServerAdministrator/',
'administer/','LiveUser_Admin/','sys-admin/typo3/','cpanel_file/','platz_login/','rcLogin/','blogindex/',
'formslogin/','autologin/','support_login/','meta_login/','manuallogin/','simpleLogin/','loginflat/',
'utility_login/','showlogin/','memlogin/','login-redirect/','sub-login/','wp-login/','login1/','dir-login/',
'login_db/','xlogin/','smblogin/','customer_login/','login-us/','acct_login/','bigadmin/','project-admins/',
'phppgadmin/','pureadmin/','sql-admin/','radmind/','openvpnadmin/','wizmysqladmin/','vadmind/','ezsqliteadmin/',
'hpwebjetadmin/','newsadmin/','adminpro/','Lotus_Domino_Admin/','bbadmin/','vmailadmin/','Indy_admin/','ccp14admin/',
'irc-macadmin/','banneradmin/','sshadmin/','phpldapadmin/','macadmin/','admi','istratorcounts/','admin4_accout/',
'admin4_colon/','radmind-1/','Super-Admin/','AdminTools/','cmsadmin/','SysAdmin2/','globes_admin/','cadmins/',
'phpSQLiteAdmin/','navSiteAdmin/','server_admin_small/','logo_sysadmin/','login/','cms/','admon/','ADMON/','cms/login.html','/phpMyAdmin/','/phpmyadmin/','/PMA/','/pma/','/dbadmin/','/mysql/','/myadmin/','/phpmyadmin2/','/phpMyAdmin2/',
'/phpMyAdmin-2/','/php-my-admin/','/phpMyAdmin-2.2.3/','/phpMyAdmin-2.2.6/','/user/',
'/phpMyAdmin-2.5.1/','/phpMyAdmin-2.5.4/','/phpMyAdmin-2.5.5-rc1/',
'/phpMyAdmin-2.5.5-rc2/','/phpMyAdmin-2.5.5/','/phpMyAdmin-2.5.5-pl1/',
'/phpMyAdmin-2.5.6-rc1/','/phpMyAdmin-2.5.6-rc2/','/phpMyAdmin-2.5.6/','/phpMyAdmin-2.5.7/','/phpMyAdmin-2.5.7-pl1/',
'/phpMyAdmin-2.6.0-alpha/','/phpMyAdmin-2.6.0-alpha2/',
'/phpMyAdmin-2.6.0-beta1/','/phpMyAdmin-2.6.0-beta2/','/phpMyAdmin-2.6.0-rc1/','/phpMyAdmin-2.6.0-rc2/',
'/phpMyAdmin-2.6.0-rc3/','/phpMyAdmin-2.6.0/','/phpMyAdmin-2.6.0-pl1/','/phpMyAdmin-2.6.0-pl2/',
'/phpMyAdmin-2.6.0-pl3/','/phpMyAdmin-2.6.1-rc1/','/phpMyAdmin-2.6.1-rc2/',
'/phpMyAdmin-2.6.1/','/phpMyAdmin-2.6.1-pl1/','/phpMyAdmin-2.6.1-pl2/','/phpMyAdmin-2.6.1-pl3/',
'/phpMyAdmin-2.6.2-rc1/','/phpMyAdmin-2.6.2-beta1/',
'/phpMyAdmin-2.6.2-rc1/','/phpMyAdmin-2.6.2/','/phpMyAdmin-2.6.2-pl1/','/phpMyAdmin-2.6.3/','/phpMyAdmin-2.6.3-rc1/','/phpMyAdmin-2.6.3/','/phpMyAdmin-2.6.3-pl1/','/phpMyAdmin-2.6.4-rc1/',
'/phpMyAdmin-2.6.4-pl1/','/phpMyAdmin-2.6.4-pl2/','/phpMyAdmin-2.6.4-pl3/','/phpMyAdmin-2.6.4-pl4/','/phpMyAdmin-2.6.4/',
'/phpMyAdmin-2.7.0-beta1/','/phpMyAdmin-2.7.0-rc1/','/phpMyAdmin-2.7.0-pl1/','/phpMyAdmin-2.7.0-pl2/',
'/phpMyAdmin-2.7.0/','/phpMyAdmin-2.8.0-beta1/','/phpMyAdmin-2.8.0-rc1/','/phpMyAdmin-2.8.0-rc2/','/phpMyAdmin-2.8.0/',
'/phpMyAdmin-2.8.0.1/','/phpMyAdmin-2.8.0.2/','/phpMyAdmin-2.8.0.3/','/phpMyAdmin-2.8.0.4/','/phpMyAdmin-2.8.1-rc1/','/phpMyAdmin-2.8.1/','/phpMyAdmin-2.8.2/',
'/sqlmanager/','/mysqlmanager/','/p/m/a/','/PMA2005/','/pma2005/','/phpmanager/','/php-myadmin/',
'/phpmy-admin/','/webadmin/','/sqlweb/','platz_login/','rcLogin/', 'blogindex/', 'formslogin/', 'autologin/', 'support_login/', 'meta_login/', 
'manuallogin/', 'simpleLogin/', 'loginflat/', 'utility_login/', 'showlogin/','memlogin/','login-redirect/', 'sub-login/', 
'wp-login/', 'login1/', 'dir-login/', 'login_db/', 'xlogin/', 'smblogin/', 'customer_login/', 'UserLogin/','login-us/',
'acct_login/', 'admin_area/', 'bigadmin/', 'project-admins/', 'phppgadmin/', 'pureadmin/', 'sql-admin/', 'radmind/',
'openvpnadmin/', 'wizmysqladmin/','vadmind/', 'ezsqliteadmin/', 'hpwebjetadmin/', 'newsadmin/', 'adminpro/', 'Lotus_Domino_admin/',
'bbadmin/', 'vmailadmin/', 'Indy_admin/', 'ccp14admin/', 'irc-macadmin/','banneradmin/', 'sshadmin/', 'phpldapadmin/', 'macadmin/',
'administratoraccounts/', 'admin4_account/', 'admin4_colon/', 'radmind-1/', 'Super-admin/', 'AdminTools/','cmsadmin/', 'SysAdmin2/',
'globes_admin/', 'cadmins/', 'phpSQLiteAdmin/', 'navSiteAdmin/', 'server_admin_small/', 'logo_sysadmin/', 'server/',
'database_administration/','power_user/', 'system_administration/', 'ss_vms_admin_sm/','manage/','/websql/','/webdb/','/mysqladmin/','/mysql-admin/','/mya/','admin/account.cgi','admin/index.cgi','admin/login.cgi','admin/admin.cgi','admin/account.cgi',
'admin_area/admin.cgi','admin_area/login.cgi','siteadmin/login.cgi','siteadmin/index.cgi','siteadmin/login.html','admin/account.html','admin/index.html','admin/login.html','admin/admin.html',
'admin_area/index.cgi','bb-admin/index.cgi','bb-admin/login.cgi','bb-admin/admin.cgi','admin/home.cgi','admin_area/login.html','admin_area/index.html',
'admin/controlpanel.cgi','admin.cgi','admincp/index.asp','admincp/login.asp','admincp/index.html','admin/account.html','adminpanel.html','webadmin.html',
'webadmin/index.html','webadmin/admin.html','webadmin/login.html','admin/admin_login.html','admin_login.html','panel-administracion/login.html',
'admin/cp.cgi','cp.cgi','administrator/index.cgi','administrator/login.cgi','nsw/admin/login.cgi','webadmin/login.cgi','admin/admin_login.cgi','admin_login.cgi',
'administrator/account.cgi','administrator.cgi','admin_area/admin.html','pages/admin/admin-login.cgi','admin/admin-login.cgi','admin-login.cgi',
'bb-admin/index.html','bb-admin/login.html','bb-admin/admin.html','admin/home.html','login.cgi','modelsearch/login.cgi','moderator.cgi','moderator/login.cgi',
'moderator/admin.cgi','account.cgi','pages/admin/admin-login.html','admin/admin-login.html','admin-login.html','controlpanel.cgi','admincontrol.cgi',
'admin/adminLogin.html','adminLogin.html','admin/adminLogin.html','home.html','rcjakar/admin/login.cgi','adminarea/index.html','adminarea/admin.html',
'webadmin.cgi','webadmin/index.cgi','acceso.cgi','webadmin/admin.cgi','admin/controlpanel.html','admin.html','admin/cp.html','cp.html','adminpanel.cgi','moderator.html',
'administrator/index.html','administrator/login.html','user.html','administrator/account.html','administrator.html','login.html','modelsearch/login.html',
'moderator/login.html','adminarea/login.html','panel-administracion/index.html','panel-administracion/admin.html','modelsearch/index.html','modelsearch/admin.html',
'admincontrol/login.html','adm/index.html','adm.html','moderator/admin.html','user.cgi','account.html','controlpanel.html','admincontrol.html',
'panel-administracion/login.cgi','wp-login.cgi','adminLogin.cgi','admin/adminLogin.cgi','home.cgi','admin.cgi','adminarea/index.cgi',
'adminarea/admin.cgi','adminarea/login.cgi','panel-administracion/index.cgi','panel-administracion/admin.cgi','modelsearch/index.cgi',
'modelsearch/admin.cgi','admincontrol/login.cgi','adm/admloginuser.cgi','admloginuser.cgi','admin2.cgi','admin2/login.cgi','admin2/index.cgi','usuarios/login.cgi',
'adm/index.cgi','adm.cgi','affiliate.cgi','adm_auth.cgi','memberadmin.cgi','administratorlogin.cgi'
);

foreach $ways(@path2){

$final=$site.$ways;

my $req=HTTP::Request->new(GET=>$final);
my $ua=LWP::UserAgent->new();
$ua->timeout(30);
my $response=$ua->request($req);

if($response->content =~ /Username/ ||
$response->content =~ /Password/ ||
$response->content =~ /username/ ||
$response->content =~ /password/ ||
$response->content =~ /USERNAME/ ||
$response->content =~ /PASSWORD/ ||
$response->content =~ /Username/ ||
$response->content =~ /Wachtwoord/ ||
$response->content =~ /Senha/ ||
$response->content =~ /senha/ ||
$response->content =~ /Personal/ ||
$response->content =~ /Usuario/ ||
$response->content =~ /Clave/ ||
$response->content =~ /Usager/ ||
$response->content =~ /usager/ ||
$response->content =~ /Sing/ ||
$response->content =~ /passe/ ||
$response->content =~ /P\/W/ || 
$response->content =~ /Admin Password/
){
print " \n [+] Found -> $final\n\n";
}else{
print "[-] Not Found <- $final\n";
}
}
}


if($code eq "7"){

@path2=('admin/','administrator/','admin1/','admin2/','admin3/','admin4/','admin5/','usuarios/','usuario/','administrator/','moderator/','webadmin/','adminarea/','bb-admin/',
'adminLogin/','admin_area/','panel-administracion/','instadmin/',
'memberadmin/','administratorlogin/','adm/','admincp/','admcp/','cp/','modcp/','ADMINCPCP/','admincpcp/','adminsec/','adm1/','adm2/','adm4/',
'moderatorcp/','adminare/','admins/','cpanel/','ccms/','maintenance/','webmaster/','configuration/','configure/','websvn/','controlpanel/','phpmyadmin/',
'myadmin/','sysadmin/','ur-admin/','Server/','wp-admin/','administr8/','administrivia/',
'Database_Administration/','useradmin/','pgadmin/','directadmin/','staradmin/','ServerAdministrator/',
'administer/','LiveUser_Admin/','sys-admin/typo3/','cpanel_file/','platz_login/','rcLogin/','blogindex/',
'formslogin/','autologin/','support_login/','meta_login/','manuallogin/','simpleLogin/','loginflat/',
'utility_login/','showlogin/','memlogin/','login-redirect/','sub-login/','wp-login/','login1/','dir-login/',
'login_db/','xlogin/','smblogin/','customer_login/','login-us/','acct_login/','bigadmin/','project-admins/',
'phppgadmin/','pureadmin/','sql-admin/','radmind/','openvpnadmin/','wizmysqladmin/','vadmind/','ezsqliteadmin/',
'hpwebjetadmin/','newsadmin/','adminpro/','Lotus_Domino_Admin/','bbadmin/','vmailadmin/','Indy_admin/','ccp14admin/',
'irc-macadmin/','banneradmin/','sshadmin/','phpldapadmin/','macadmin/','admi','istratorcounts/','admin4_accout/',
'admin4_colon/','radmind-1/','Super-Admin/','AdminTools/','cmsadmin/','SysAdmin2/','globes_admin/','cadmins/',
'phpSQLiteAdmin/','navSiteAdmin/','server_admin_small/','logo_sysadmin/','login/','cms/','admon/','ADMON/','cms/login.html','/phpMyAdmin/','/phpmyadmin/','/PMA/','/pma/','/dbadmin/','/mysql/','/myadmin/','/phpmyadmin2/','/phpMyAdmin2/',
'/phpMyAdmin-2/','/php-my-admin/','/phpMyAdmin-2.2.3/','/phpMyAdmin-2.2.6/',
'/phpMyAdmin-2.5.1/','/phpMyAdmin-2.5.4/','/phpMyAdmin-2.5.5-rc1/',
'/phpMyAdmin-2.5.5-rc2/','/phpMyAdmin-2.5.5/','/phpMyAdmin-2.5.5-pl1/',
'/phpMyAdmin-2.5.6-rc1/','/phpMyAdmin-2.5.6-rc2/','/phpMyAdmin-2.5.6/','/phpMyAdmin-2.5.7/','/phpMyAdmin-2.5.7-pl1/',
'/phpMyAdmin-2.6.0-alpha/','/phpMyAdmin-2.6.0-alpha2/',
'/phpMyAdmin-2.6.0-beta1/','/phpMyAdmin-2.6.0-beta2/','/phpMyAdmin-2.6.0-rc1/','/phpMyAdmin-2.6.0-rc2/',
'/phpMyAdmin-2.6.0-rc3/','/phpMyAdmin-2.6.0/','/phpMyAdmin-2.6.0-pl1/','/phpMyAdmin-2.6.0-pl2/',
'/phpMyAdmin-2.6.0-pl3/','/phpMyAdmin-2.6.1-rc1/','/phpMyAdmin-2.6.1-rc2/',
'/phpMyAdmin-2.6.1/','/phpMyAdmin-2.6.1-pl1/','/phpMyAdmin-2.6.1-pl2/','/phpMyAdmin-2.6.1-pl3/',
'/phpMyAdmin-2.6.2-rc1/','/phpMyAdmin-2.6.2-beta1/','platz_login/','rcLogin/', 'blogindex/', 'formslogin/', 'autologin/', 'support_login/', 'meta_login/', 
'manuallogin/', 'simpleLogin/', 'loginflat/', 'utility_login/', 'showlogin/','memlogin/','login-redirect/', 'sub-login/', 
'wp-login/', 'login1/', 'dir-login/', 'login_db/', 'xlogin/', 'smblogin/', 'customer_login/', 'UserLogin/','login-us/',
'acct_login/', 'admin_area/', 'bigadmin/', 'project-admins/', 'phppgadmin/', 'pureadmin/', 'sql-admin/', 'radmind/',
'openvpnadmin/', 'wizmysqladmin/','vadmind/', 'ezsqliteadmin/', 'hpwebjetadmin/', 'newsadmin/', 'adminpro/', 'Lotus_Domino_admin/',
'bbadmin/', 'vmailadmin/', 'Indy_admin/', 'ccp14admin/', 'irc-macadmin/','banneradmin/', 'sshadmin/', 'phpldapadmin/', 'macadmin/',
'administratoraccounts/', 'admin4_account/', 'admin4_colon/', 'radmind-1/', 'Super-admin/', 'AdminTools/','cmsadmin/', 'SysAdmin2/',
'globes_admin/', 'cadmins/', 'phpSQLiteAdmin/', 'navSiteAdmin/', 'server_admin_small/', 'logo_sysadmin/', 'server/',
'database_administration/','power_user/', 'system_administration/', 'ss_vms_admin_sm/','manage/','/user/',
'/phpMyAdmin-2.6.2-rc1/','/phpMyAdmin-2.6.2/','/phpMyAdmin-2.6.2-pl1/','/phpMyAdmin-2.6.3/','/phpMyAdmin-2.6.3-rc1/','/phpMyAdmin-2.6.3/','/phpMyAdmin-2.6.3-pl1/','/phpMyAdmin-2.6.4-rc1/',
'/phpMyAdmin-2.6.4-pl1/','/phpMyAdmin-2.6.4-pl2/','/phpMyAdmin-2.6.4-pl3/','/phpMyAdmin-2.6.4-pl4/','/phpMyAdmin-2.6.4/',
'/phpMyAdmin-2.7.0-beta1/','/phpMyAdmin-2.7.0-rc1/','/phpMyAdmin-2.7.0-pl1/','/phpMyAdmin-2.7.0-pl2/',
'/phpMyAdmin-2.7.0/','/phpMyAdmin-2.8.0-beta1/','/phpMyAdmin-2.8.0-rc1/','/phpMyAdmin-2.8.0-rc2/','/phpMyAdmin-2.8.0/',
'/phpMyAdmin-2.8.0.1/','/phpMyAdmin-2.8.0.2/','/phpMyAdmin-2.8.0.3/','/phpMyAdmin-2.8.0.4/','/phpMyAdmin-2.8.1-rc1/','/phpMyAdmin-2.8.1/','/phpMyAdmin-2.8.2/',
'/sqlmanager/','/mysqlmanager/','/p/m/a/','/PMA2005/','/pma2005/','/phpmanager/','/php-myadmin/',
'/phpmy-admin/','/webadmin/','/sqlweb/','/websql/','/webdb/','/mysqladmin/','/mysql-admin/','/mya/','admin/account.brf','admin/index.brf','admin/login.brf','admin/admin.brf','admin/account.brf',
'admin_area/admin.brf','admin_area/login.brf','siteadmin/login.brf','siteadmin/index.brf','siteadmin/login.html','admin/account.html','admin/index.html','admin/login.html','admin/admin.html',
'admin_area/index.brf','bb-admin/index.brf','bb-admin/login.brf','bb-admin/admin.brf','admin/home.brf','admin_area/login.html','admin_area/index.html',
'admin/controlpanel.brf','admin.brf','admincp/index.asp','admincp/login.asp','admincp/index.html','admin/account.html','adminpanel.html','webadmin.html',
'webadmin/index.html','webadmin/admin.html','webadmin/login.html','admin/admin_login.html','admin_login.html','panel-administracion/login.html',
'admin/cp.brf','cp.brf','administrator/index.brf','administrator/login.brf','nsw/admin/login.brf','webadmin/login.brfbrf','admin/admin_login.brf','admin_login.brf',
'administrator/account.brf','administrator.brf','acceso.brf','admin_area/admin.html','pages/admin/admin-login.brf','admin/admin-login.brf','admin-login.brf',
'bb-admin/index.html','bb-admin/login.html','bb-admin/admin.html','admin/home.html','login.brf','modelsearch/login.brf','moderator.brf','moderator/login.brf',
'moderator/admin.brf','account.brf','pages/admin/admin-login.html','admin/admin-login.html','admin-login.html','controlpanel.brf','admincontrol.brf',
'admin/adminLogin.html','adminLogin.html','admin/adminLogin.html','home.html','rcjakar/admin/login.brf','adminarea/index.html','adminarea/admin.html',
'webadmin.brf','webadmin/index.brf','webadmin/admin.brf','admin/controlpanel.html','admin.html','admin/cp.html','cp.html','adminpanel.brf','moderator.html',
'administrator/index.html','administrator/login.html','user.html','administrator/account.html','administrator.html','login.html','modelsearch/login.html',
'moderator/login.html','adminarea/login.html','panel-administracion/index.html','panel-administracion/admin.html','modelsearch/index.html','modelsearch/admin.html',
'admincontrol/login.html','adm/index.html','adm.html','moderator/admin.html','user.brf','account.html','controlpanel.html','admincontrol.html',
'panel-administracion/login.brf','wp-login.brf','adminLogin.brf','admin/adminLogin.brf','home.brf','admin.brf','adminarea/index.brf',
'adminarea/admin.brf','adminarea/login.brf','panel-administracion/index.brf','panel-administracion/admin.brf','modelsearch/index.brf',
'modelsearch/admin.brf','admincontrol/login.brf','adm/admloginuser.brf','admloginuser.brf','admin2.brf','admin2/login.brf','admin2/index.brf','usuarios/login.brf',
'adm/index.brf','adm.brf','affiliate.brf','adm_auth.brf','memberadmin.brf','administratorlogin.brf'
);

foreach $ways(@path2){

$final=$site.$ways;

my $req=HTTP::Request->new(GET=>$final);
my $ua=LWP::UserAgent->new();
$ua->timeout(30);
my $response=$ua->request($req);

if($response->content =~ /Username/ ||
$response->content =~ /Password/ ||
$response->content =~ /username/ ||
$response->content =~ /password/ ||
$response->content =~ /USERNAME/ ||
$response->content =~ /PASSWORD/ ||
$response->content =~ /Username/ ||
$response->content =~ /Wachtwoord/ ||
$response->content =~ /Senha/ ||
$response->content =~ /senha/ ||
$response->content =~ /Personal/ ||
$response->content =~ /Usuario/ ||
$response->content =~ /Clave/ ||
$response->content =~ /Usager/ ||
$response->content =~ /usager/ ||
$response->content =~ /Sing/ ||
$response->content =~ /passe/ ||
$response->content =~ /P\/W/ || 
$response->content =~ /Admin Password/
){
print " \n [+] Found -> $final\n\n";
}else{
print "[-] Not Found <- $final\n";
}
}
}
