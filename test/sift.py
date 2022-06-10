import cv2 as cv
img = cv.imread('test.jpg')
gray = cv.cvtColor(img, cv.COLOR_BGR2GRAY)
sift = cv.xfeatures2d.SIFT_create()
kp = sift.detect(gray, None)
(kps, descs) = sift.compute(gray, kp)
print(descs.shape)
img = cv.drawKeypoints(gray, kp, img)
cv.imwrite('sift_kp.jpg', img)