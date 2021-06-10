<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="WebFormsTest1.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <script>
        function startCountdown(timeLeft) {
            var interval = setInterval(countdown, 1000);
            update();

            function countdown() {
                if(--timeLeft > 0)
                {
                    update();
                }
                else
                {
                    clearInterval(interval);
                    update();
                    completed();
                }
            }
            function update() {
                hours = Math.floor(timeLeft / 3600);
                minutes = Math.floor((timeLeft % 3600) / 60);
                seconds = timeLeft % 60;
                document.getElementById('lblTimerDisplay').innerHTML = '' + hours + ':'+ minutes + ':' +seconds;
            }
            function completed() {
                document.getElementById('lblOutput').innerText = "Processing is done.";
            }
        }

    </script>
    <form id="form1" runat="server">
        <div id="YourName">
            Name :
            <asp:TextBox ID="txtName" runat="server"></asp:TextBox>
            <br />
            <br />
            <asp:Button ID="btnSubmit" runat="server" OnClick="btnSubmit_Click" Text="Submit" />
            &nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="lblTimerDisplay" runat="server" Font-Bold="True" ForeColor="#990033" Enabled="False" Font-Size="XX-Large"></asp:Label>
            <br />
            <br />
            <asp:Label ID="lblOutput" runat="server"></asp:Label>
            <br />
            <br />
            <asp:FileUpload ID="FileUpload1" runat="server" />
            <br />
            <br />
            <asp:Button ID="btnUpload" runat="server" OnClick="Button1_Click" Text="Upload" />
            <br />
            <br />
            <asp:Label ID="lblUpload" runat="server"></asp:Label>
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />

            <input type="file" name="FileUpload" id="inputUploadFile" />
             <asp:Button ID="FileUpload2" Text="Upload 2" runat="server" OnClick="Upload" />
            <br />
            <asp:Label ID = "lblMessage" runat="server" ForeColor="Green" />
        </div>
        </form>
       
    
</body>
</html>
