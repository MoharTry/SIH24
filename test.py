import cv2

cap = cv2.VideoCapture(0, cv2.CAP_LIBCAMERA)

cap.set(cv2.CAP_PROP_FRAME_WIDTH, 640)
cap.set(cv2.CAP_PROP_FRAME_HEIGHT, 360)
cap.set(cv2.CAP_PROP_MODE, 1)
cap.set(cv2.CAP_PROP_FORMAT, 0)

backend_name = cap.getBackendName()
print("Backend:", backend_name)
count = 0;

if cap.isOpened():
    print("Camera opened successefully")
else:
    print("Failed to open camera")
    
while True:
    ret, frame = cap.read()
    
    if ret:
        
     #   if(count ==0):
    #        count = 60;
    #        break;
        
    #   else:
     #       count=-1
      #      break;
        
        cv2.imshow("Original_Video", frame)
        cv2.waitKey(1) == ord('q')        
cap.release()
cap.destroyAllWindows()
