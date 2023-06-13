       IDENTIFICATION DIVISION. 
       PROGRAM-ID. STUDENT-SCORE.
       DATA DIVISION.
       WORKING-STORAGE SECTION. 
       77  STUDENT-NAME   PIC X(20).
       77  LESSON         PIC X(10).
       77  EXAM-1         PIC 9(3).
       77  EXAM-2         PIC 9(3).
       77  EXAM-3         PIC 9(3).
       77  AVERAGE        PIC 9(3).
       PROCEDURE DIVISION.
           DISPLAY  "Enter your name and surname : ".
           ACCEPT STUDENT-NAME.
           DISPLAY  "Lesson name : ".
           ACCEPT LESSON.
           DISPLAY "Exam 1 result : ".
           ACCEPT EXAM-1.
           DISPLAY "Exam 2 result : ".
           ACCEPT EXAM-2.
           DISPLAY "Exam 3 result : ".
           ACCEPT EXAM-3.
           COMPUTE AVERAGE = (EXAM-1 + EXAM-2 + EXAM-3 ) / 3.
           IF AVERAGE > 50 
              DISPLAY "Your average : " AVERAGE
              DISPLAY "Your exam result is successful."
           ELSE
              DISPLAY "Your average : " AVERAGE
              DISPLAY "Your exam result failed."
           END-IF.
           STOP RUN.
