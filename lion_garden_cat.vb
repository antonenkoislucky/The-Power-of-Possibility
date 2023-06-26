Public Class Form1
    Private Sub Form1_Load(sender As Object, e As EventArgs) Handles MyBase.Load
        MessageBox.Show("The Power of Possibility") 'Line 1
    End Sub

    Private Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click
        Dim x As Integer = 0 'Line 2
        While x < 2000 'Line 3
            If x = 0 Then 'Line 4
                x = x + 10 'Line 5
            ElseIf x = 100 Then 'Line 6
                x = x + 50 'Line 7
            ElseIf x = 400 Then 'Line 8
                x = x + 200 'Line 9
            ElseIf x = 800 Then 'Line 10
                x = x + 400 'Line 11
            ElseIf x = 1500 Then 'Line 12
                x = x + 500 'Line 13
            ElseIf x = 2000 Then 'Line 14
                MessageBox.Show("The Possibilities are Endless!") 'Line 15
            Else 'Line 16
                x = x + 1 'Line 17
            End If 'Line 18
        End While 'Line 19
    End Sub 'Line 20
    Private Sub Button2_Click(sender As Object, e As EventArgs) Handles Button2.Click
        Dim human As Integer = 0 'Line 21
        Dim possiblity As Integer = 0 'Line 22
        While human <= 2000 'Line 23
            If human = 0 Then 'Line 24
                possiblity = human + 10 'Line 25
            ElseIf human = 100 Then 'Line 26
                possiblity = human + 50 'Line 27
            ElseIf human = 400 Then 'Line 28
                possiblity = human + 200 'Line 29
            ElseIf human = 800 Then 'Line 30
                possiblity = human + 400 'Line 31
            ElseIf human = 1500 Then 'Line 32
                possiblity = human + 500 'Line 33
            ElseIf human = 2000 Then  'Line 34
                MessageBox.Show("The Power of Possibility: " & possiblity) 'Line 35
            Else 'Line 36
                human = human + 1 'Line 37
            End If 'Line 38 
        End While 'Line 39
    End Sub 'Line 40
End Class 'Line 41