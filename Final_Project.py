from graphics import *
from win32api import GetSystemMetrics
import math
import tkinter as tk
from tkinter import simpledialog
from tkinter import messagebox
def InputIntegerFromPopUp(message):# Διαβάζει με ασφάλεια από τον χρήστη ένανακέραιο αριθμό από αναδυόμενο παράθυρο
    while True:
        try:
            ROOT = tk.Tk()
            ROOT.withdraw() # the input dialog
            USER_INP = simpledialog.askstring(title="Είσοδος δεδομένων",prompt=message)
            a = int(USER_INP); break
        except ValueError:
            print('Παρακαλώ πληκτρολογήστε έναν ακέραιο!')
    return int(a)
       
def DrawLine(x1,y1,x2,y2,window,width,color): # σχεδιάζει μια γραμμή στο ανοιχτό παράθυρο των Graphics με πλάτος και χρώμα
    line = Line(Point(x1, y1), Point(x2, y2))
    line.setWidth(width); line.setFill(color)
    line.draw(window) #Line.setArrow('both') #someObject.setOutline("yellow")
def DrawCircle(x1,y1,radius,window,width,color,fillcolor=''): # σχεδιάζει ένα κύκλο στο ανοιχτό παράθυρο των graphics με πάχος γραμμής, χρώμα και προαιρετικά με χρώμα γεμίσματος
    aCircle = Circle(Point(x1,y1), radius)
    aCircle.setWidth(width);aCircle.setOutline(color)
    if fillcolor !='': aCircle.setFill(fillcolor)
    aCircle.draw(window)
def ArmCalculations(Arm_lenght,Arm_Angle,ForeArm_Length,ForeArm_Angle): # Συνάρτηση για υπολογισμό λύσεων ΟΡΘΟ ΠΡΟΒΛΗΜΑ
    X1=screenWidth/2+Arm_lenght * math.cos(math.radians(Arm_Angle))
    Y1=screenHeight/2+Arm_lenght * math.sin(math.radians(Arm_Angle))
    X2=ForeArm_Length*math.cos(math.radians(Arm_Angle+ForeArm_Angle))
    Y2=ForeArm_Length*math.sin(math.radians(Arm_Angle+ForeArm_Angle))
    X2+=X1
    Y2+=Y1
    DrawLine (screenWidth / 2,screenHeight/2,X1,Y1,win,2,ColorofElbow)
    DrawLine (X1,Y1,X2,Y2,win,2,ColorofElbow)
def FindArmAngle(X_angle,Y_angle):# Συνάρτηση για υπολογισμό γωνίας άξονα χ'χ με το πρώτο μέλος
    if X_angle>0 and Y_angle>=0:
        angle=math.degrees(math.atan(Y_angle/X_angle))
    elif X_angle>0 and Y_angle<0:
        angle=math.degrees(math.atan(Y_angle/X_angle)+2*math.pi)
    elif X_angle<0 and Y_angle>=0:
        angle=math.degrees(math.atan(Y_angle/X_angle)+math.pi)
    elif X_angle<0 and Y_angle<0:
        angle=math.degrees(math.atan(Y_angle/X_angle)+math.pi)
    elif X_angle==0 and Y_angle>0:
        angle=90
    elif X_angle==0 and Y_angle<0:
        angle=180
    return angle
def FindSecAngle(X_end, Y_end,xa,ya,Ang1):# απαραίτητες αλλαγές και υπολογισμός γωνίας πρώτου μέλους με 2ο μέλος
    xt=(X_end-xa)*math.cos(math.radians(Ang1))+(Y_end-ya)*math.sin(math.radians(Ang1))
    yt=-(X_end-xa)*math.sin(math.radians(Ang1))+(Y_end-ya)*math.cos(math.radians(Ang1))
    return FindArmAngle(xt,yt)
def InverseArmCalculations(X_end,Y_end,L1,L2,Rot,color): #Συνάρτηση για υπολογισμό λύσεων ΑΝΤΙΣΤΡΟΦΟ ΠΡΟΒΛΗΜΑ
    C=(Y_end**2+X_end**2+L1**2-L2**2)/2
    Delta=4*C**2*Y_end**2-4*(Y_end**2+X_end**02)*(C**2-L1**2*X_end**2)
    
#=============1st Solution================
    Ya=(2*C*Y_end+math.sqrt(Delta))/(2*(X_end**2+Y_end**2)) 
    Xa=(C-Y_end*Ya)/X_end
    Arm_Angle1=FindArmAngle(Xa,Ya)
    
    Angle_First=FindSecAngle(X_end=X_end, Y_end=Y_end, xa=Xa, ya=Ya, Ang1=Arm_Angle1)
    print(Angle_First)
#=============2nd Solution============
    Ya2=(2*C*Y_end-math.sqrt(Delta))/(2*(X_end**2+Y_end**2))
    Xa2=(C-Y_end*Ya2)/X_end
    Arm_Angle2=FindArmAngle(Xa2,Ya2)
    Angle_Second=FindSecAngle(X_end=X_end, Y_end=Y_end, xa=Xa2, ya=Ya2, Ang1=Arm_Angle2)
    print(Angle_Second)
    Ya2+=screenHeight/2
    Xa2+=screenWidth/2

# Πρόσθεση των αποστάσεων για το κέντρο της οθόνης καθώς το (0,0) του υπολογιστή είναι η κάτω αριστερή γωνία της οθόνης.
    Ya+=screenHeight/2
    Xa+=screenWidth/2
    X_end+=screenWidth/2
    Y_end+=screenHeight/2
# Wile για επιλογή δεξιόστροφης ή αριστερόστοφης λύσης.
    while Rotation==1:
        if Angle_First>180:
            DrawLine(screenWidth / 2,screenHeight/2,Xa,Ya,win,2,color)
            DrawLine(Xa,Ya,X_end,Y_end,win,2,color)
        elif Angle_Second>180:
            DrawLine(screenWidth / 2,screenHeight/2,Xa2,Ya2,win,2,color) 
            DrawLine(Xa2,Ya2,X_end,Y_end,win,2,color)
        break
    while Rotation==0:
        if Angle_First<180:
            DrawLine(screenWidth / 2,screenHeight/2,Xa,Ya,win,2,color)
            DrawLine(Xa,Ya,X_end,Y_end,win,2,color)
        elif Angle_Second<180:
            DrawLine(screenWidth / 2,screenHeight/2,Xa2,Ya2,win,2,color) 
            DrawLine(Xa2,Ya2,X_end,Y_end,win,2,color)
            break
def possible(L1,L2,x1,y1): # Σύναρτηση για να δούμε αν βρισκόμαστε στον εσωτερικό φάκελο.
    R=L1+L2
    r=abs(L1-L2)
    if x1**2+y1**2<R**2 and x1**2+y1**2>r**2:
        return True
    




    # if Rotation==1:
    #    
    # #=============C.C.W.(LEFT)============
    # if Rotation==0:



    
     


#Main Program
screenWidth = GetSystemMetrics(0) * 0.95 #int(1200) # διαστάσεις οθόνης παραθύρου
screenHeight = GetSystemMetrics(1) * 0.95 #int(900)
X_Center = screenWidth / 2
Y_Center = screenHeight / 2
ColorofElbow = "red"
ColorofArm= "blue"
ColorBackround = "white"#LightPink
ColorCartesian = 'black'
ColorFolderJobs = 'green'
ColorOfInternalJobFolder = ''
ColorOfExternalJobFolder = ''
color='blue'

win = GraphWin(width = screenWidth, height = screenHeight) # create a window
win.setCoords(0, 0, screenWidth, screenHeight) # set the coordinates of the window; bottom left is (0, 0) and top right is (10, 10)
win.setBackground(ColorBackround)
instructions = Text(Point(60,screenHeight-10),"Reverse Model") # \nThen click the mouse twice.
instructions.draw(win) #display instructions
instructions2 = Text(Point(140,screenHeight-30),"Screen Center is:" +
str(X_Center))
instructions2.draw(win) #display instructions
L1=0 # Αρχικοποίηση για να μπορόυν να τρέξουν οι συναρτήσεις μέσα στην while
L2=0
continiue=1
while continiue==1:
    DrawCircle (screenWidth / 2, screenHeight / 2, abs(L1-L2) , win, 2, 
    ColorBackround,ColorOfInternalJobFolder) #Διαγραφή του προηγούμενου εσωτερικού φακέλου
    DrawCircle (screenWidth / 2, screenHeight / 2, L1+L2 , win, 2,
    ColorBackround,ColorOfExternalJobFolder) #Διαγραφή του προηγούμενου εξωτερικού φακέλου
    DrawLine (0, screenHeight / 2, screenWidth, screenHeight / 2, win, 2,
    ColorCartesian) #show horizontal line - AXIS X
    DrawLine (screenWidth / 2, 0, screenWidth / 2, screenHeight, win, 2,
    ColorCartesian) #Show Vertical line - AXIS Y
    L1=InputIntegerFromPopUp("Δώσε το μήκος L1 του πρώτου μέλους του ρομποτικού βραχίωνα: ")
    L2=InputIntegerFromPopUp("Δώσε το μήκος L2 του πρώτου μέλους του ρομποτικού βραχίωνα: ")
    Xt=InputIntegerFromPopUp("Δώσε την Χ συντεταγμένη του τελικού σημείου: ")
    Yt=InputIntegerFromPopUp("Δώσε την Y συντεταγμένη του τελικού σημείου: ")
    Rotation=InputIntegerFromPopUp("Δεξιόστροφη φορά 1, αριστερόστροφη 0")
    instructions3 = Text(Point(30,screenHeight-50),f"L1: {L1}") # Εκτύπωση των δεδομένων στο πάνω αριστερά μέρος της οθόνης.
    instructions3.draw(win)
    instructions4 = Text(Point(30,screenHeight-70),f"L2: {L2}")
    instructions4.draw(win)
    instructions5 = Text(Point(30,screenHeight-90),f"X: {Xt}")
    instructions5.draw(win)
    instructions6 = Text(Point(30,screenHeight-110),f"Y: {Yt}")
    instructions6.draw(win)
    instructions7 = Text(Point(120,screenHeight-130),f"Rotation 1 for CW 0 for CCW: {Rotation}")
    instructions7.draw(win)
    poss=possible(L1,L2,Xt,Yt) # Κλήση και τοποθέτηση σε μνήμη του αποτελέσματος της συνάρτησης possible
    DrawCircle (screenWidth / 2, screenHeight / 2, abs(L1-L2) , win, 2,
    ColorFolderJobs,ColorOfInternalJobFolder)
    DrawCircle (screenWidth / 2, screenHeight / 2, L1+L2 , win, 2,
    ColorFolderJobs,ColorOfExternalJobFolder)
    if poss==True:
        InverseArmCalculations(X_end=Xt,Y_end=Yt,L1=L1,L2=L2,Rot=Rotation,color=color)
    else:
        print("Βρίσκεσαι εκτός φακέλου εργασίας")
    continiue=InputIntegerFromPopUp("Θες να δώσεις νέες συντενταγμένες (1) ή όχι (0);")
    InverseArmCalculations(X_end=Xt,Y_end=Yt,L1=L1,L2=L2,Rot=Rotation,color=ColorBackround)







win.getMouse() # περιμένει για ένα κλικ στο παράθυρο για να προχωρήσει
win.close()