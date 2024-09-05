#!/usr/bin/env python3
import rospy
from geometry_msgs.msg import Twist

class TurtleMove:
    def __init__(self):
        self.pub = rospy.Publisher('/turtle1/cmd_vel', Twist, queue_size=10)
        self.front = True
        self.rate = rospy.Rate(1)

    def talk(self):
        msg = Twist()
        if self.front:
            msg.linear.x = 1
        else:
            msg.linear.x = -1
        self.front = not self.front  # Toggle direction
        rospy.loginfo(f"Moving {'forward' if self.front else 'backward'}")
        self.pub.publish(msg)
        self.rate.sleep()

if __name__ == '__main__':
    try:
        rospy.init_node('turtle_move', anonymous=True)
        t = TurtleMove()
        while not rospy.is_shutdown():
            t.talk()
    except rospy.ROSInterruptException:
        pass



