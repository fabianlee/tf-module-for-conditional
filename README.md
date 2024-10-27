# Using a conditional at the module level to include a set of related resources

blog:

If you have a group of related resources that need a conditional added (count OR for_each) to limit their inclusion, consider making them part of a module.  Then you only need to add the conditional to the module definition.
