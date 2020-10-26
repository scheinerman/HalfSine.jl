n = 10
a1 = 1
colist = [0, a1]
for k in range(2,n):
    colist.append(var('a_'+str(k)))

blist = [ var('b_'+str(k)) for k in range(n) ]

f(x) = sum( colist[k]*x^k for k in range(n))
B = f(f(x)).expand()

def result(t):
    f(x) = sum( colist[k]*x^k for k in range(n))
    B = f(f(x)).expand()
    ans = solve(blist[t] == B.coefficient(x**t), colist[t])[0]
    return ans.rhs()

n = 6
alist = [ var('a'+str(k)) for k in range(n) ]
alist[0] = 0
A(x) = sum(alist[k] * x^k for k in range(n))

y = A(A(x)).expand()
outlist = y.coefficients(x)
for j in range(n):
    print(outlist[j])




def dot(alist, blist):
    n = len(alist)
    return sum(alist[k]*blist[k] for k in range(n))
