

* ruby方法返回的值，默认是最后一个被求值的表达式的值，可以返回多个值，这一点一般静态语言都做不到。
* 表达式内插 expression interpolation， `#{expression}` 会被"expression"的值替代掉。
* ruby的数组是方括号[ ]包围，而哈希散列表则是用花括号{ }包围，一定不能混淆，Java的数组表示既可以用[]也可以用{}。

1. class names, module names, and other **constants** must start with an uppercase letter

2. the first characters of a name indicate how broadly the variable is visible.
Local variables, method parameters, and method names should all start with a lowercase letter or an underscore _