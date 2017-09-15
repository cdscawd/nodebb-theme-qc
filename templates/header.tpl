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

	<script src="{relative_path}/assets/nodebb.min.js?{config.cache-buster}"></script>

	<!-- BEGIN scripts -->
	<script type="text/javascript" src="{scripts.src}"></script>
	<!-- END scripts -->

	<!-- IF useCustomJS -->
	{{customJS}}
	<!-- ENDIF useCustomJS -->
	<!-- IF useCustomCSS -->
	<style type="text/css">{{customCSS}}</style>
	<!-- ENDIF useCustomCSS -->


</head>

<body class="{bodyClass} skin-{config.bootswatchSkin}">
	<nav id="menu" class="hidden">
		<section class="menu-profile">
			<!-- IF user.uid -->
			<!-- IF user.picture -->
			<img src="{user.picture}"/>
			<!-- ELSE -->
			<div class="user-icon" style="background-color: {user.icon:bgColor};">{user.icon:text}</div>
			<!-- BEGIN qoocoUserShowDOM -->
			<!-- ENDIF user.picture -->
			<!-- <i component="user/status" class="fa fa-fw fa-circle status {user.status}"></i> -->
			<!-- ENDIF user.uid -->
			<!-- END qoocoUserShowDOM -->
		</section>

		<!-- IF config.loggedIn -->
		<section class="menu-section" data-section="profile">
			<!-- BEGIN qoocoUserShowDOM -->
				<h3 class="menu-section-title">[[global:header.profile]]</h3>
			<!-- END qoocoUserShowDOM -->
			<ul class="menu-section-list" component="header/usercontrol"></ul>
		</section>
		<!-- ENDIF config.loggedIn -->

		<!-- IF config.loggedIn -->
		<section class="menu-section" data-section="notifications">
			<!-- BEGIN qooco.header.notifications -->
			<h3 class="menu-section-title">
				[[global:header.notifications]]
				<span class="counter" component="notifications/icon" data-content="0"></span>
			</h3>
			<ul class="menu-section-list notification-list-mobile" component="notifications/list"></ul>
			<p class="menu-section-list"><a href="{relative_path}/notifications/info"><i component="user/status" class="fa fa-fw fa-comments"></i>&nbsp;通知</a></p>
			<!-- END qooco.header.notifications -->
		</section>

		<!-- BEGIN qooco.header.chats -->
		<section class="menu-section" data-section="chats">
			<h3 class="menu-section-title">
				[[global:header.chats]]
				<i class="counter" component="chat/icon" data-content="0"></i>
			</h3>
			<ul class="menu-section-list chat-list" component="chat/list"></ul>
		</section>
		<!-- END qooco.header.chats -->
		<!-- ENDIF config.loggedIn -->
	</nav>
	<div id="masklayer"></div>
	<main id="panel">
		<nav class="navbar navbar-default navbar-fixed-top header" id="header-menu" component="navbar">
			<div class="container">
				<!-- IMPORT partials/menu.tpl -->
			</div>
		</nav>
		<div class="container" id="content">
			<!-- IMPORT partials/noscript/warning.tpl -->
