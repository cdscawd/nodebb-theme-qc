
<!-- IF breadcrumbs.length -->
<ol class="breadcrumb">
	<!-- BEGIN breadcrumbs -->
	
	<li<!-- IF @last --> component="breadcrumb/current"<!-- ENDIF @last --> <!-- BEGIN qooco.breadcrumb -->itemscope="itemscope" itemtype="http://data-vocabulary.org/Breadcrumb" <!-- IF @last --><!-- END qooco.breadcrumb -->class="active"<!-- ENDIF @last -->>
		<!-- IF !@last --><a href="{breadcrumbs.url}" itemprop="url"><!-- ENDIF !@last -->
			<div class="title-info">
				<span itemprop="title">
					{breadcrumbs.text}
					<!-- IF @last -->
					<!-- IF !feeds:disableRSS -->
					<!-- IF rssFeedUrl --><a target="_blank" href="{rssFeedUrl}"><i class="fa fa-rss-square"></i></a><!-- ENDIF rssFeedUrl --><!-- ENDIF !feeds:disableRSS -->
					<!-- ENDIF @last -->
				</span>
			</div>
		<!-- IF !@last --></a><!-- ENDIF !@last -->
	</li>

	<!-- END breadcrumbs -->
</ol>
<!-- ENDIF breadcrumbs.length -->