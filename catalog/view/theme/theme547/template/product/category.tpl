<?php echo $header; ?>
<div class="container">
  <ul class="breadcrumb">
	<?php foreach ($breadcrumbs as $breadcrumb) { ?>
	<li><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a></li>
	<?php } ?>
  </ul>
  <div class="row"><?php echo $column_left; ?>
	<?php if ($column_left && $column_right) { ?>
	<?php $class = 'col-sm-6'; ?>
	<?php } elseif ($column_left || $column_right) { ?>
	<?php $class = 'col-sm-9'; ?>
	<?php } else { ?>
	<?php $class = 'col-sm-12'; ?>
	<?php } ?>
	<div id="content" class="<?php echo $class; ?>"><?php echo $content_top; ?>
	  <h2><?php echo $heading_title; ?></h2>
	  <?php if ($thumb || $description) { ?>
	  <div class="row">
		<?php if ($thumb) { ?>
		<div class="col-sm-2">
			<div class="image">
				<img src="<?php echo $thumb; ?>" alt="<?php echo $heading_title; ?>" title="<?php echo $heading_title; ?>" class="img-thumbnail" />
			</div>
		</div>
		<?php } ?>
		<?php if ($description) { ?>
		<div class="col-sm-10"><?php echo $description; ?></div>
		<?php } ?>
	  </div>
	  <hr>
	  <?php } ?>
	  <?php if ($categories) { ?>
	  <h3><?php echo $text_refine; ?></h3>
	  
	  <div class="row">
		<div >
		  <ul class="box-subcat">
			<?php $i=0; foreach ($categories as $category) { $i++; ?>
				<?php 
			   $perLine = 4;
			   $last_line = "";
							$total = count($products);
							$totModule = $total%$perLine;
							if ($totModule == 0)  { $totModule = $perLine;}
							if ( $i > $total - $totModule) { $last_line = " last_line";}
							if ($i%$perLine==1) {
								$a='first-in-line';
							}
							elseif ($i%$perLine==0) {
								$a='last-in-line';
							}
							else {
								$a='';
							}
						?>
			<li class="col-sm-3  <?php echo $a. $last_line ;?>">
				<?php if ($category['thumb']) { ?>
					<div class="image"><a href="<?php echo $category['href']; ?>"><img src="<?php echo $category['thumb']; ?>" alt="<?php echo $category['name']; ?>" /></a></div>
				<?php } ?>
				<div class="name subcatname"><a href="<?php echo $category['href']; ?>"><?php echo $category['name']; ?></a></div>
			</li>
			<?php } ?>
		  </ul>
		</div>
	  </div>
	  
	  <?php } ?>
	  <?php if ($products) { ?>
		<div class="product-filter clearfix">
			<div class="row">
				<div class="col-md-2">
					<label class="control-label" for="input-sort"><?php echo $text_sort; ?></label>
				</div>
				<div class="col-md-3">
					<select id="input-sort" class="form-control col-sm-3" onchange="location = this.value;">
						<?php foreach ($sorts as $sorts) { ?>
						<?php if ($sorts['value'] == $sort . '-' . $order) { ?>
						<option value="<?php echo $sorts['href']; ?>" selected="selected"><?php echo $sorts['text']; ?></option>
						<?php } else { ?>
						<option value="<?php echo $sorts['href']; ?>"><?php echo $sorts['text']; ?></option>
						<?php } ?>
						<?php } ?>
					</select>
				</div>
				<div class="col-md-2">
					<label class="control-label" for="input-limit"><?php echo $text_limit; ?></label>
				</div>
				<div class="col-md-2">
					<select id="input-limit" class="form-control" onchange="location = this.value;">
						<?php foreach ($limits as $limits) { ?>
						<?php if ($limits['value'] == $limit) { ?>
						<option value="<?php echo $limits['href']; ?>" selected="selected"><?php echo $limits['text']; ?></option>
						<?php } else { ?>
						<option value="<?php echo $limits['href']; ?>"><?php echo $limits['text']; ?></option>
						<?php } ?>
						<?php } ?>
					</select>
				</div>
				<div class="col-md-3 text-right">
					<div class="button-view">
						<button type="button" id="list-view" class="btn btn-default" data-toggle="tooltip" title="<?php echo $button_list; ?>"><i class="fa fa-th-list"></i></button>
						<button type="button" id="grid-view" class="btn btn-default" data-toggle="tooltip" title="<?php echo $button_grid; ?>"><i class="fa fa-th"></i></button>
					</div>
				</div>
			</div>
		</div>
		<div class="nav-cat clearfix">
			<div class="pull-left"><?php echo $pagination; ?></div>
			<div class="pull-left nam-page"><?php echo $results; ?></div>
			<div class="pull-right">
				<a href="<?php echo $compare; ?>" id="compare-total">
					<?php echo $text_compare; ?>
					<i class="fa fa-chevron-right"></i>
				</a>
			</div>
		</div>
	  <div class="row">
		<?php foreach ($products as $product) { ?>
		<div class="product-layout product-list col-xs-12">
		  <div class="product-thumb">
			<div class="image">
				<a class="lazy" style="padding-bottom: <?php echo ($product['img-height']/$product['img-width']*100); ?>%" href="<?php echo $product['href']; ?>"> <img alt="<?php echo $product['name']; ?>" title="<?php echo $product['name']; ?>" class="img-responsive" data-src="<?php echo $product['thumb']; ?>" src="#"/></a>
				<?php if ($product['rating']) { ?>
				<div class="rating">
				  <?php for ($i = 1; $i <= 5; $i++) { ?>
				  <?php if ($product['rating'] < $i) { ?>
				  <span class="fa fa-stack"><i class="fa fa-star-o fa-stack-2x"></i></span>
				  <?php } else { ?>
				  <span class="fa fa-stack"><i class="fa fa-star fa-stack-2x"></i><i class="fa fa-star-o fa-stack-2x"></i></span>
				  <?php } ?>
				  <?php } ?>
				</div>
				<?php } ?>
				<?php  
				$arr_last = $product['last_array'];
				foreach( $arr_last as $value ){
					if ($product['product_id']==$value) {								
						?>
						<span class="new_pr"><span><?php echo $text_new; ?></span></span>
						<?php
						}  
					}
				?>
				<?php if ($product['special']) { ?>
					<span class="sale"><span><?php echo $text_sale; ?></span></span>					
				<?php } ?>
			</div>
			<div>
			  <div class="caption">
			  <?php if ($product['price']) { ?>
				<div class="price price-product">
				  <?php if (!$product['special']) { ?>
				  <br><span><?php echo $product['price']; ?></span>
				  <?php } else { ?>
				  <span class="price-old"><?php echo $product['price']; ?></span><br><span class="price-new"><?php echo $product['special']; ?></span>
				  <?php } ?>
				  <?php if ($product['tax']) { ?>
				  <span class="price-tax"><?php echo $text_tax; ?> <?php echo $product['tax']; ?></span>
				  <?php } ?>
				</div>
				<?php } ?>				
				<div class="name name-product"><a href="<?php echo $product['href']; ?>"><?php echo $product['name']; ?></a></div>
				<div class="description-small"><?php echo mb_substr($product['description'],0,52,'UTF-8').'...'; ?></div>
				<div class="description"><?php echo $product['description']; ?></div>
				<div class="cart-button">
					<button class="product-btn-add" type="button" onclick="cart.add('<?php echo $product['product_id']; ?>');"><span><?php echo $button_cart; ?></span></button>
					<div>
					<button class="btn btn-icon" type="button" data-toggle="tooltip" title="<?php echo $button_wishlist; ?>" onclick="wishlist.add('<?php echo $product['product_id']; ?>');"><i class="fa fa-heart"></i></button>
					<button class="btn btn-icon" type="button" data-toggle="tooltip" title="<?php echo $button_compare; ?>" onclick="compare.add('<?php echo $product['product_id']; ?>');"><i class="fa fa-exchange"></i></button>
					</div>
					
				</div>
				</div>
			</div>
				<div class="clear"></div>
		  </div>
		</div>
		<?php } ?>
	  </div>
	  <div class="row">
		<div class="col-sm-6 text-left"><?php echo $pagination; ?></div>
		<div class="col-sm-6 text-right"><?php echo $results; ?></div>
	  </div>
	  <?php } ?>
	  <?php if (!$categories && !$products) { ?>
	  <p><?php echo $text_empty; ?></p>
	  <div class="buttons">
		<div class="pull-right"><a href="<?php echo $continue; ?>" class="btn"><?php echo $button_continue; ?></a></div>
	  </div>
	  <?php } ?>
	  <?php echo $content_bottom; ?></div>
	<?php echo $column_right; ?></div>
</div>
<?php echo $footer; ?>