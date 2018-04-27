p 1.class, 0.0.class, true.class, false.class, nil.class, :one.class
p 1.class() # 方法可以不用括号，特别是没有参数的时候
# 我是注释
3.times {p "Ruby!"}
# 循环一般用 block
3.times do |x| 
    p "Ruby #{x}! " # 双引号可以做字符串插值 interpolation
end
1.upto(3) { |x| p "Ruby #{x}! "}
a = [4, 5, 6]
a.each {|x| p "array #{x}! "}
p a[1, 2] # []其实是方法
h = {
    :one => 1,
    :two => 2
}
p h
p h[:one]
h.each do |key, value|
    p "#{key} =>#{value}"
end
p :one == :one
t = Thread.new do
    sleep 1
    p "awaked!"
end
p "醒了吗？"
t.join()
statement = if 0 < 1 then 0 else 1 end
print "statement: ", statement, "\n"
p 2 ** 16
p ("%d %s. " % [3, "python style"]) * 3
def ping_fang(x)
    x * x # 最后一个值会返回，可以显式返回
end
p ping_fang 4
x = 1
x, y = x + 1, x - 1
p "#{x} #{y}"
c, d = [x, y]
p "#{c} #{d}"
p a, a.empty? ==  false
class A
    def x=(val)
        @x = val
    end
    def x
        @x
    end
end
aa = A.new
aa.x = 2
p "aa.x: #{aa.x}"
p (1..3).class
module B
    def self.bb
        x = 1
        while x <= 2
            yield x
            x += 1            
        end
    end
end
B.bb do |x|
    p "bb #{x}"
end

if 0 && "" then
    p "0 和 空字符串都是真值"
end

## 快排
def quick_sort!(arr, s, t) 
    if s >= t
        return
    end
    if s + 1 == t
        if arr[s] > arr[t] then
            arr[s], arr[t] = arr[t], arr[s]
        end
        return 
    end

    x = arr[s + t >> 1] # random最好

    i, j = s, t
    while i < j
        while arr[i] < x
            i += 1
        end
        while arr[j] > x
            j -= 1
        end
        if i <= j
            arr[i], arr[j] = arr[j], arr[i]
            i, j = i + 1, j - 1
        end
    end

    if s < j then
        quick_sort!(arr, s, j)
    end
    if i < t then
        quick_sort!(arr, i, t)
    end
end
