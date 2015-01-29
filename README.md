# Mercury Meter

A simple UIView that displays a horizontal "thermometer", representing a
value using two different colors on a rounded line.

The implementation uses several sublayers with rounded corners and
background colors; while this implementation hasn't been profiled, this
theoretically make it fast and light on resource usage.

Through IB_DESIGNABLE and IBInspectable, it plays nicely with interface
builder. The colors can be congifured in IB, and the view live
renders. It also animates as expected.

The view is implemented entirely in NRCMercuryMeter.h and
NRCMercuryMeter.m.

### Illustration

![Illustration](./example.png)
