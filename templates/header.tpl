<!DOCTYPE html>
<html lang="{function.localeToHTML, userLang, defaultLang}" <!-- IF languageDirection -->data-dir="{languageDirection}" style="direction: {languageDirection};" <!-- ENDIF languageDirection --> >
<head>
	<title>{browserTitle}</title>
	<!-- BEGIN metaTags -->{function.buildMetaTag}<!-- END metaTags -->
	<link rel="stylesheet" type="text/css" href="{relative_path}/assets/stylesheet.css?{config.cache-buster}" />
	<!-- IF bootswatchCSS --><link id="bootswatchCSS" href="{bootswatchCSS}" rel="stylesheet" media="screen"><!-- ENDIF bootswatchCSS -->
	<!-- BEGIN linkTags -->{function.buildLinkTag}<!-- END linkTags -->

	<script>
		var RELATIVE_PATH = "{relative_path}";
		var config = JSON.parse('{{configJSON}}');
		var app = {
			template: "{template.name}",
			user: JSON.parse('{{userJSON}}')
		};
	</script>

	<!-- IF useCustomHTML -->
	{{customHTML}}
	<!-- END -->
	<!-- IF useCustomCSS -->
	<style>{{customCSS}}</style>
	<!-- END -->
</head>

<body class="{bodyClass} skin-{config.bootswatchSkin}">
    <div id="sn_header">
        <div id="full_ads">
            <style>
                .adsresponsive { min-width:728px; max-width: 1280px; width:100%; height:90px; display:block; margin:0 auto;}
                @media (max-width: 1340px) {
                    .adsresponsive { min-width:728px; max-width: 1000px; width:100%; height:90px; display:block;}
                }
                @media (max-width: 1000px) {
                    .adsresponsive { min-width:728px; max-width: 1000px; width:100%; height:90px; display:block;}
                }
                @media (max-width: 767px) {
                    .adsresponsive { min-width:728px; max-width: 767px; width:100%; min-height:60px;max-height:90px; display:block;}
                }
                @media screen and (max-width: 640px) {
                    .adsresponsive { min-width:468px; max-width: 640px; width:100%; height:60px; display:block;}
                }
                @media (max-width: 620px) {
                    .adsresponsive { min-width:468px; max-width: 620px; width:100%; height:60px; display:block;}
                }
                
                @media (max-width: 620px) {
                    .adsresponsive { display:none;}
                }    
            </style>
    		<script async src="//pagead2.googlesyndication.com/pagead/js/adsbygoogle.js"></script>
    		<!-- SimosNap Header Responsive -->
    		<ins class="adsbygoogle adsresponsive"
    		     data-ad-client="ca-pub-0565181608763167"
    		     data-ad-slot="7023610252"></ins>
    		<script>
    		(adsbygoogle = window.adsbygoogle || []).push({});
    		</script>
        </div>
    </div>
	<nav id="menu" class="slideout-menu hidden">
		<div class="menu-profile">
			<!-- IF user.uid -->
			<!-- IF user.picture -->
			<img src="{user.picture}"/>
			<!-- ELSE -->
			<div class="user-icon" style="background-color: {user.icon:bgColor};">{user.icon:text}</div>
			<!-- ENDIF user.picture -->
			<i component="user/status" class="fa fa-fw fa-circle status {user.status}"></i>
			<!-- ENDIF user.uid -->
		</div>

		<section class="menu-section" data-section="navigation">
			<h3 class="menu-section-title">[[global:header.navigation]]</h3>
			<ul class="menu-section-list"></ul>
		</section>

		<!-- IF config.loggedIn -->
		<section class="menu-section" data-section="profile">
			<h3 class="menu-section-title">[[global:header.profile]]</h3>
			<ul class="menu-section-list" component="header/usercontrol"></ul>
		</section>

		<section class="menu-section" data-section="notifications">
			<h3 class="menu-section-title">
				[[global:header.notifications]]
				<span class="counter unread-count" component="notifications/icon" data-content="{unreadCount.notification}"></span>
			</h3>
			<ul class="menu-section-list notification-list-mobile" component="notifications/list"></ul>
			<p class="menu-section-list"><a href="{relative_path}/notifications">[[notifications:see_all]]</a></p>
		</section>
		<!-- ENDIF config.loggedIn -->
	</nav>
	<nav id="chats-menu" class="slideout-menu hidden">
		<!-- IF config.loggedIn -->
		<section class="menu-section" data-section="chats">
			<h3 class="menu-section-title">
				[[global:header.chats]]
				<i class="counter unread-count" component="chat/icon" data-content="{unreadCount.chat}"></i>
			</h3>
			<ul class="menu-section-list chat-list" component="chat/list">
				<a class="navigation-link" href="{relative_path}/user/{user.userslug}/chats">[[modules:chat.see_all]]</a>
			</ul>
		</section>
		<!-- ENDIF config.loggedIn -->
	</nav>

	<main id="panel" class="slideout-panel">
		<nav class="navbar navbar-default navbar-fixed-top header" id="header-menu" component="navbar">
			<div class="container">
				<!-- IMPORT partials/menu.tpl -->
			</div>
		</nav>
		<div class="container" id="content">
		<!-- IMPORT partials/noscript/warning.tpl -->

