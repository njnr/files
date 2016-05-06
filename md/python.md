函数的闭包，其实就是函数内的函数。其作用就是能够将实现隐藏在函数中。

简单的接口，应该是接受函数的挂钩，而不是接受类的实例。实现的方式有一下几种
1.直接定义函数作为挂钩
def helper(x):
    if x in group:
        return (1, x)
    return (0, x)
str.sort(key=helper)

2.使用闭包
3.类方法作为挂钩
4.使用__call__的特殊方法，实现了__call__的类产生的对象，能够像函数一样调用
  通常，若我们需要在挂钩函数中保存状态，这种方式应该是最优的。而且容易理解。

可以自定义容器类，其方法就是在实现迭代器协议。令自己的类把__iter__方法实现
为生成器。
def ReadVisits(object):
    def __init__(self):
        self.values = [0, 1, 2]
    def __iter__(self):
        for val in self.values:
            yield val

可以用__set__ __get__ 来定义属性，以重复利用相同规则
@property @property.setter 定义一般属性，以适应则
