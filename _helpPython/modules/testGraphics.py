from graphics import *
def main():
    win = GraphWin('My window', 500, 500)
    win.setBackground(color_rgb(40, 44, 52))
    center = Point(255,255)
    p1 = Point (00, 00)
    p2 = Point (00, 500)
    p3 = Point (500, 00)
    p4 = Point (500, 500)
    l1 = Line (p1, center)
    l2 = Line (p2, center)
    l3 = Line (p3, center)
    l4 = Line (p4, center)
    l1.setWidth(5)
    l2.setWidth(5)
    l3.setWidth(5)
    l4  .setWidth(5)
    l1.setOutline('green')
    l1.draw (win)
    l2.setOutline('green')
    l2.draw (win)
    l3.setOutline('green')
    l3.draw (win)
    l4.setOutline('green')
    l4.draw (win)
    win.getMouse()
    win.close()
main()
