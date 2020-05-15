# groovy.lang.MissingPropertyException: No such property: kind for class: groovy.lang.Binding

上面的问题，是在写流水线时容易遇到的问题。主要的意思时，引用了一个不存在的变量 `kind`。请检查是否在对应的作用域里定义了该变量。