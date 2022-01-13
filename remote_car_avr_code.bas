$regfile = "m8def.dat"
$crystal = 1000000

Config Portd = Input
Config Portb = Output
Config Portc = Output

Dim A(4) As Byte , I As Byte , J As Byte , B As Byte , M As Byte
Dim D As Integer , F As Integer


'****************************************************************************************

Config Timer1 = Counter , Prescale = 256
Enable Int0
Config Int0 = Rising
Enable Interrupts
On Int0 Remote

Do


Loop
End

Remote:

   Start Timer1
      Do
      Loop Until Pind.2 = 1
      F = Timer1
         Do
         Loop Until Pind.2 = 0
         Do
         Loop Until Pind.2 = 1
         Do
         Loop Until Pind.2 = 0

         For I = 1 To 4
            For J = 7 To 0 Step -1
               Timer1 = 0
                  Do
                  Loop Until Pind.2 = 1
                  B = Timer1 \ 4
                  A(i).j = B
                  Do
                  Loop Until Pind.2 = 0
            Next
         Next

    Select Case A(3)
    Case 40:
            Portb = 0
            Portc = 0
    Case 8:
            Portb = 0
            Waitms 50
            Portb = 4
    Case 2:
            Portc = 1
            Waitms 500
            Portc = 0

    Case 226:
            Portc = 2
            Waitms 500
            Portc = 0
    Case 96:
            Portb = 0
            Waitms 50
            Portb = 4
    Case 34:
            Portb = 0
            Waitms 50
            Portb = 2
    End Select

Waitms 100
Return
