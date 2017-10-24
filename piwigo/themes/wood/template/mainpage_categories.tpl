{html_style}

{if $derivative_params->max_width() > 600}
.thumbLegend {ldelim}font-size: 130%}
{else}
{if $derivative_params->max_width() > 400}
.thumbLegend {ldelim}font-size: 110%}
{else}
.thumbLegend {ldelim}font-size: 90%}
{/if}
{/if}
{/html_style}

<div class="thumbContent">

<div id="container" >

{foreach from=$category_thumbnails item=cat name=cat_loop}
	<div class="box photo colMainpage">
	<li class="{if $smarty.foreach.comment_loop.index is odd}odd{else}even{/if}">
		<div class="thumbnailCategory">
			<div class="illustration">
				<img src="{$pwg->derivative_url($derivative_params, $cat.representative.src_image)}" alt="{$cat.TN_ALT}" title="{$cat.NAME|@replace:'"':' '|@strip_tags:false} - {'display this album'|@translate}">
			<a href="{$cat.URL}">
				<div class="description">
						<div class="text">
					<h2>
						{$cat.NAME}
						{if !empty($cat.icon_ts)}
						<img title="{$cat.icon_ts.TITLE}" src="{$ROOT_URL}{$themeconf.icon_dir}/recent{if $cat.icon_ts.IS_CHILD_DATE}_by_child{/if}.png" alt="(!)">
						{/if}
					</h2>
				
							{if isset($cat.INFO_DATES) }
							<p class="dates">{$cat.INFO_DATES}</p>
							{/if}
							<p class="Nb_images">{$cat.CAPTION_NB_IMAGES}</p>
							{if not empty($cat.DESCRIPTION)}
							<p>{$cat.DESCRIPTION}</p>
							{/if}
					</div>
				</div>
			</a>
			</div>
		</div>
	</li>
	</div>
{/foreach}


</div>
{footer_script require='jquery'}{literal}
			window.onload = function() {
			  var wall1 = new Masonry( document.getElementById('container'), {
				gutterWidth: 10,
				isFitWidth: true,
			  });
				var wall2 = new Masonry( document.getElementById('containerThumb'), {
				gutterWidth: 10,
				isFitWidth: true,
			  });

			};
{/literal}{/footer_script}
</div>

