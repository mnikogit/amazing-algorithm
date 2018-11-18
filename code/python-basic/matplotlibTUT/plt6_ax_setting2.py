# View more python tutorials on my Youtube and Youku channel!!!

# Youtube video tutorial: https://www.youtube.com/channel/UCdyjiB5H8Pu7aDTNVXTTpcg
# Youku video tutorial: http://i.youku.com/pythontutorial

# 6 - axis setting
"""
Please note, this script is for python3+.
If you are using python2+, please modify it accordingly.
Tutorial reference:
http://www.scipy-lectures.org/intro/matplotlib/matplotlib.html
"""

import matplotlib.pyplot as plt
import numpy as np

x = np.linspace(-3, 3, 50)
y1 = 2*x + 1
y2 = x**2

plt.figure()  # 新建figure
plt.plot(x, y2)
# plot the second curve in this figure with certain parameters
plt.plot(x, y1, color='red', linewidth=1.0, linestyle='--')
# set x limits
plt.xlim((-1, 2))
plt.ylim((-2, 3))

# set new ticks
new_ticks = np.linspace(-1, 2, 5)
plt.xticks(new_ticks)
# set tick labels
plt.yticks([-2, -1.8, -1, 1.22, 3],
           ['$really\ bad$', '$bad$', '$normal$', '$good$', '$really\ good$'])  # r:正则表达式
# to use '$ $' for math text and nice looking, e.g. '$\pi$'


#### 移动坐标轴 ####
# gca = 'get current axis'
ax = plt.gca()
ax.spines['right'].set_color('none')   # 右边、上边框消失
ax.spines['top'].set_color('none')

ax.xaxis.set_ticks_position('bottom')  # x轴用下边的轴代替
# ACCEPTS: [ 'top' | 'bottom' | 'both' | 'default' | 'none' ]


# the 1st is in 'outward' | 'axes' | 'data'
    # axes: percentage of y axis
    # data: depend on y data
ax.spines['bottom'].set_position(('data', 0))    # x轴用纵坐标的0


ax.yaxis.set_ticks_position('left')
# ACCEPTS: [ 'left' | 'right' | 'both' | 'default' | 'none' ]

ax.spines['left'].set_position(('data',0))     # y轴用横坐标的0
plt.show()