# Illustrates using conditional to decide include of module

blog:

If you have a group of related resources that need a conditional added (count OR for_each) to limit their inclusion, consider making them part of a module.  Then you only need to add the conditional to the module definition.
