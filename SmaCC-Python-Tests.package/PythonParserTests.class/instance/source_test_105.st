resources
source_test_105
	^ '
def bla():
    return x, y                          # [tuple2(int, int)]

def blu():
    global x
    x = 2                                # [int]

y = 2                                    # [int]
blu()                                    # []
print bla()                              # [tuple2(int, int)]

'