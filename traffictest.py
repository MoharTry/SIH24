import time
from roboflow import Roboflow
import cv2

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

    rf = Roboflow(api_key="u6vV6HCUu6SBWruHEDQN")
    project = rf.workspace().project("smart-traffic-management-6pp8r")
    model = project.version(1).model
    print("hello")
    # Infer on a local image
    prediction = model.predict(frame, confidence=40, overlap=30)
    print(prediction.json())
    print("TEST MESSAGE")
    # Get the count of cars present
    num_cars = len(prediction.json()['predictions'])

    # Visualize your prediction
    prediction.save("prediction.jpg")

# Function to control traffic signal
def control_traffic(num_cars):
    green_signal_time = 5  # Default green signal time in seconds
    yellow_signal_time = 2
    red_signal_time = 13
    
    # Check if number of cars exceeds pre-specified limit
    if num_cars > 4:
        green_signal_time = 10  # Increase green signal time if number of cars exceeds limit
        yellow_signal_time = 2
        red_signal_time = 8
        
        
    print(f"Number of cars in frame: {num_cars}")
    print(f"Green signal time: {green_signal_time} seconds")

    # Code to control traffic signal goes here
    # This could involve interfacing with GPIO pins on Raspberry Pi to control the signal

# Example usage
control_traffic(num_cars)

cap.release()
cap.destroyAllWindows()
