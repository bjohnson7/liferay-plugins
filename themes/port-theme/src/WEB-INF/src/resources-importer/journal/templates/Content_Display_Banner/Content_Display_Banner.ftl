<#if BackgroundImage?? && BackgroundImage.getData() != "">

	<div class="photo-bg services site-banner" style="background-image: url(${background_image})">

<#else>

	<div class="photo-bg services services-default-bg site-banner">

</#if>


	<div class="overlay">

		<div class="heading">
			<h3>${Heading.getData()}</h3>
			<h4>${Subheading.getData()}</h4>
		</div>

		<ul class="cards">
			<#if ItemHeading.getSiblings()?has_content>
				<#list ItemHeading.getSiblings() as current_item>

					<#if current_item.ItemImage?? && current_item.ItemImage.getData() != "">

						<#assign item_image = current_item.ItemImage.getData() />

					<#elseif current_item.ItemImageURL?? && current_item.ItemImageURL.getData() != "">

							<#assign item_image = current_item.ItemImageURL.getData() />

					<#else>

						<#assign item_image = "" />

					</#if>

					<li>
						<img src="${item_image}" />

						<h4/>${current_item.getData()}</h4>

						<p>${current_item.ItemText.getData()}</p>
					</li>
				</#list>
			</#if>
		</ul>

	</div>

</div>