<?php if($download_id!='new'){?>
	<tr id="download_<?php echo $download_id; ?>" class="optionRow">
		<td><?php echo $icon; ?></td>
		<td><?php echo $form['fields']['name']->value; ?></td>
		<td><?php echo $form['fields']['max_downloads']->value; ?></td>
		<td><?php echo $form['fields']['sort_order']->value; ?></td>
		<td><?php echo $form['fields']['status']; ?></td>
		<td>
			<a id="<?php echo $download_id; ?>" href="#" class="toggleicon expandRow icon-arrow-down" title="<?php echo $text_expand ?>"></a>

			<div class="flt_right"><a href="<?php echo $delete_unmap_href;?>" class="remove" title="<?php echo $text_delete_or_refuse; ?>"></a></div>
		</td>
	</tr>
<?php }else{ ?>
	<tr class="clean" id="<?php echo $download_id; ?>">
		<td colspan="5">
		<td><a class="flt_left add" id="add_option_value" href="#"></a></td>
	</tr>

<?php } ?>

<tr class="clean">
	<td colspan="6">
		<div class="additionalRow <?php echo $download_id=='new'?'clean' :''?>" style="display:none;">
			<?php if($download_id=='new'){?>
			<h2><?php echo $text_create_download; ?></h2>
			<div class="fieldset flt_left" style="width:99%">
				<div class="heading"><?php echo $text_shared_downloads; ?></div>
				<div class="top_left">
					<div class="top_right">
						<div class="top_mid"></div>
					</div>
				</div>
				<div class="cont_left">
					<div class="cont_right">
						<div class="cont_mid">
							<table class="table">
								<tr><td>
								<?php echo $form0['form_open'];?>
									<div class="flt_left" style="height: 25px; line-height: 24px; padding: 5px;"><?php echo $text_select_shared_downloads; ?></div>
									<div class="flt_left">
										<div style="padding-top: 5px;"><?php echo $form0['fields']['list_hidden'];?></div>
										<div style="margin-left: 0px;"><?php echo $form0['fields']['list']; ?></div>
									</div>
								<br >
								<div class="buttons align_center" style="clear:both;">
									<?php echo $form0['cancel']; ?>
									<button type="submit" class="btn_standard"><?php echo $form0['submit']; ?></button>
								</div>
								</form>
								</td></tr>
							</table>
							</div>
						</div>
					</div>
					<div class="bottom_left">
						<div class="bottom_right">
							<div class="bottom_mid"></div>
						</div>
					</div>
				</div>
				<h2 style="text-transform: uppercase; " ><?php echo $text_or?></h2>
			<?php } ?>

			<div id="notify_<?php echo $download_id; ?>" class="align_left success" style="display: none;"></div>
			<?php echo $form['form_open']. $form['fields']['download_id']; ?>
			<div class="fieldset flt_left">
				<div class="heading"><?php echo $text_download_information; ?></div>
				<div class="top_left">
					<div class="top_right">
						<div class="top_mid"></div>
					</div>
				</div>
				<div class="cont_left">
					<div class="cont_right">
						<div class="cont_mid">

							<table class="table">
								<tr>
									<td style="width: 250px; height: 180px;">
										<?php echo $resources_scripts . $resource . $form['fields']['download_rl_path']; ?>
									</td>
									<td><?php echo $entry_file_status. '&nbsp;'. $form['fields']['status'];?>
										<br><br>
										<?php echo $entry_shared. '&nbsp;'.$form['fields']['shared'];
										if($maplist){
											echo '<br>'.$text_assigned_to.'<br>';
											foreach($maplist as $item){ ?>
												&nbsp;&nbsp;&nbsp;- <a href="<?php echo $item['href']?>" target="_blank"><?php echo  $item['text']?></a></br>
										<?php }}	?><br><br>
										<?php echo $date_added ? $entry_date_added.'&nbsp;&nbsp;&nbsp;'.$date_added : '';?>
										<br>
										<?php echo $date_modified ? $entry_date_modified.'&nbsp;&nbsp;&nbsp;'.$date_modified : '';?>
									</td>
								</tr>
								<?php if($preview){ ?>
								<tr>
									<td><?php echo $text_path ?></td>
									<td><a href="<?php echo $preview['href']?>" target="_blank" title="<?php echo $text_preview; ?>"><?php echo $preview['path']; ?></a></td>
								</tr>
								<?php } ?>
								<tr>
									<td><?php echo $entry_name?></td>
									<td><?php echo $form['fields']['name']?></td>
								</tr>
								<tr>
									<td><?php echo $entry_mask?></td>
									<td><?php echo $form['fields']['mask']?></td>
								</tr>
								<tr>
									<td><?php echo $entry_max_downloads?></td>
									<td><?php echo $form['fields']['max_downloads']?></td>
								</tr>
								<tr>
									<td><?php echo $entry_activate?></td>
									<td><?php echo $form['fields']['activate'].'&nbsp;'.$form['fields']['order_statuses']; ?></td>
								</tr>
								<tr>
									<td><?php echo $entry_expire_days?></td>
									<td><?php echo $form['fields']['expire_days'] ?></td>
								</tr>
								<tr>
									<td><?php echo $entry_sort_order?></td>
									<td><?php echo $form['fields']['sort_order'] ?></td>
								</tr>

							</table>

						</div>
					</div>
				</div>
				<div class="bottom_left">
					<div class="bottom_right">
						<div class="bottom_mid"></div>
					</div>
				</div>
			</div>


			<div class="fieldset flt_right">
				<div class="heading"><?php echo $text_download_attributes; ?></div>
				<div class="top_left">
					<div class="top_right">
						<div class="top_mid"></div>
					</div>
				</div>
				<div class="cont_left">
					<div class="cont_right">
						<div class="cont_mid">
							<?php foreach ($attributes as $id => $attribute) { ?>
								<div style="vertical-align: top; margin-top: 20px; width: 130px;"
									 class="flt_left"><?php echo ${'entry_attribute_' . $id} ?></div>
								<div style="vertical-align: top; margin-top: 20px;"
									 class="flt_left"><?php echo $attribute; ?></div>
								<div class="clr_both"></div>
							<?php } ?>
						</div>
					</div>
				</div>
				<div class="bottom_left">
					<div class="bottom_right">
						<div class="bottom_mid"></div>
					</div>
				</div>
			</div>

			<div class="clr_both"></div>
			<div id="rl_<?php echo $download_id; ?>" class="add_resource" style="margin-top: 10px;"><?php echo $rl; ?>

			</div>
			<div class="buttons align_center">
				<?php echo $form['cancel']; ?>
				<button type="submit" class="btn_standard"><?php echo $form['submit']; ?></button>
			</div>
		<script type="text/javascript"><!--
			$(document).ready(function(){

				$('#downloadFrm<?php echo $download_id; ?>_activate').change(function(){
					if($(this).val()!='order_status'){
						$('#downloadFrm<?php echo $download_id; ?>_activate_order_status_id').parents('.select_element').hide().next('.required').hide();
					}else{
						$('#downloadFrm<?php echo $download_id; ?>_activate_order_status_id').parents('.select_element').show().next('.required').show();
					}
				});

				$('#<?php echo $form['form_open']->name ?>').on('submit',function(){
					$.post(  $(this).attr('action'),
					         $(this).serialize(),
					         function(json){
								 location = location.href+'&download_id='+json.download_id;
					         }
					      ) .fail(function(xhr, textStatus, errorThrown) {
								$('#notify_<?php echo $download_id; ?>').removeClass('success').addClass('warning error');
								$('#notify_<?php echo $download_id; ?>').html(errorThrown).fadeIn(500);
					      });
					return false;
				});


			});

		//--></script>

			</form>
		</div>
	</td>
</tr>