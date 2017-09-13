<div class="account">
	<!-- IMPORT partials/account/header.tpl -->

	<div class="row">
		<h4 class="title" style="text-align: center;margin-bottom: 20px;">{title}</h4>

		<!-- IF !posts.length -->
			<div class="alert alert-warning text-center">{noItemsFoundKey}</div>
		<!-- ENDIF !posts.length -->

		<div class="col-xs-12">
			<!-- IMPORT partials/posts_list.tpl -->

			<!-- IF config.usePagination -->
				<!-- IMPORT partials/paginator.tpl -->
			<!-- ENDIF config.usePagination -->
		</div>
	</div>
</div>