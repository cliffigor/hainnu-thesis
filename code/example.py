# 冒泡排序
def bubbleSort(m):
	m = m.copy()
	for time in range(1, len(m)):
		for index in range(len(m) - time):
			if m[index] > m[index+1]:
				m[index], m[index+1] = m[index+1] , m[index]
	return  m

# 选择排序
def selectSort(m):
	m = m.copy()
	for seat_L in range(len(m)-1):
		for seat_R in range(seat_L+1, len(m)):
			if m[seat_L] > m[seat_R]:
				m[seat_L], m[seat_R] = m[seat_R], m[seat_L]
	return m

