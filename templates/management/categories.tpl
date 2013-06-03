{**
 * templates/manager/categories.tpl
 *
 * Copyright (c) 2003-2013 John Willinsky
 * Distributed under the GNU GPL v2. For full terms see the file docs/COPYING.
 *
 * Press management categories list.
 *}

<script type="text/javascript">
	$(function() {ldelim}
		// Attach the form handler.
		$('#categoriesGridFormContainer').pkpHandler('$.pkp.pages.manageCatalog.ManageCatalogModalHandler');
	{rdelim});
</script>
<form class="pkp_form" id="categoriesGridFormContainer">
	{url|assign:categoriesUrl router=$smarty.const.ROUTE_COMPONENT component="grid.settings.category.CategoryCategoryGridHandler" op="fetchGrid"}
	{load_url_in_div id="categoriesContainer" url=$categoriesUrl escape=false}
	<div class="pkp_helpers_align_right">
		{fbvElement type="button" label="common.close" id="cancelFormButton"}
	</div>
</form>
