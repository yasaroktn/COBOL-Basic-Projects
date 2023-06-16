       IDENTIFICATION DIVISION.
       PROGRAM-ID. PRINT-NAME.
       DATA DIVISION. 
       WORKING-STORAGE SECTION. 
       77  ISIM     PIC X(20) VALUE "YASAR OKTEN".
       77  I        PIC 9(2) VALUE 1.
       PROCEDURE DIVISION.
      * ISIM değişkeni için ayrılan kadar karakter bastırması için.
           PERFORM UNTIL I >= LENGTH OF ISIM
      * Her satırda i'nci indexteki tek karakteri bastırmak için.     
           DISPLAY ISIM(I : 1)
           ADD 1 TO I
      * Eğer ki birden fazla space varsa bu ismin bittiğini gösterir.
      * Bu durumda programı sonlandırması için.
           IF ISIM(I : 2) = "  "
              STOP RUN 
           END-PERFORM.
           STOP RUN.
