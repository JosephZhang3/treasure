
programming ruby 3.2 PDF

阅读进度  
Arrays and Hashes 22页
Classes, Objects, and Variables 33页
Classes, Objects, and Variables 52页


* 只需要在 demo.rb 文件的头部加一行 `#!/usr/bin/env ruby` 就可以在命令行输入文件路径 `./demo.rb` 直接运行文件里的全部代码，不需要键入ruby命令。
* ruby方法返回的值，默认是最后一个被求值的表达式的值，可以返回多个值，这一点一般静态语言都做不到。
* 表达式内插 expression interpolation， `#{expression}` 会被"expression"的值替代掉。
* ruby的数组是方括号[ ]包围，而哈希散列表则是用花括号{ }包围，一定不能混淆，Java的数组表示既可以用[]也可以用{}。


1. class names, module names, and other **constants** must start with an uppercase letter

2. the first characters of a name indicate how broadly the variable is visible.
Local variables, method parameters, and method names should all start with a lowercase letter or an underscore _