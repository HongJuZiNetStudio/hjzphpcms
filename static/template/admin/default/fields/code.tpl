                                <div class="control-group">
                                    <label class="control-label" for="<?php echo $field; ?>"><?php echo $popo->getFieldName($field); ?></label>
                                    <div class="controls">
                                        <textarea id="<?php echo $field; ?>" class="span6" placeholder="添加<?php echo $field; ?>" name="<?php echo $field; ?>"><?php echo $record[$field]; ?></textarea>
                                        <small class="help-info"><?php echo $popo->getFieldComment($field); ?></small>
                                    </div>
                                    <div class="clearfix"></div>
                                </div>
                                <script type="text/javascript">codeEditorList.push('<?php echo $field; ?>');</script>
