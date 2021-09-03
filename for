a = int(input()) #7
b = int(input()) #10
c = int(input()) #5
d = int(input()) #6
print (' ', end = "\t")
for i in range(c, d+1):
    print (i, end = "\t")
print ('')
for i in range(a, b+1):
    print (i, end = "\t")
    for j in range(c, d+1):
        print (i*j, end = "\t")
    print ('')

#
a, b, c, d = (int(input()) for x in range(4))
print('', *range(c,d+1), sep='\t')
for x in range(a, b+1):
    print(x, *[y*x for y in range(c, d+1)], sep='\t')

#
a=int(input())
b=int(input())
c=int(input())
d=int(input())
print('\t', *range(c, d+1), sep='\t')
for i in range(a,b+1):
    print(i, *range(i*c,(i*d)+1, i), sep='\t')

# вход: числа на отрезке [-5; 12]
# всего чисел, делящихся на 3, на этом отрезке 6: -3, 0, 3, 6, 9, 12. Их среднее арифметическое равно 4.5
a = int(input())          # -5
b = int(input())          # 12
s = 0
n = 0
for i in range(a, b + 1):
    if i % 3 == 0:
        s += i
        n += 1
s = s / n
print(s)                # 4.5

#
a,b = int(input()), int(input())
a += -a%3
b -= b%3
print((a+b)/2)

#
x = [x for x in range(int(input()),int(input()) + 1) if x % 3 == 0]
print(sum(x)/len(x))

#
a, b, s, j = int(input()), int(input()), 0, 0
for i in range(a, b + 1) :
    if not i % 3 : s, j = s + i, j + 1
print(s / j)

#
s, q = 0, 0
for i in range(int(input()), int(input())+1):
    if i%3 == 0:
        s += i
        q += 1
print (s/q)

#
a = int(input())
b = int(input()) + 1
while a % 3:
    a += 1
l = range(a, b, 3)
print(sum(l) / len(l))

#
a, b = int(input()), int(input())
base = 3 
if(a % base != 0):
    a += (base - a % base)
sum = 0
count = 0
for i in range(a, b + 1, base):
    sum += i
    count += 1
print(sum / count)

#
a, b, c = int(input()), int(input()), 3  # начало, конец, кратность
if a % c != 0:  # Если не кратно c
    a -= a % c  # Вычесть остаток
    a += c      # Смещение в плюс на целое
s, n = 0, 0  # сумма, число слагаемых
for i in range(a, b + 1, c):
    s += i
    n += 1
if n > 0:  # Проверка числа слагаемых, чтобы не поделить на 0
    print(s / n)  # Среднее арифметическое
