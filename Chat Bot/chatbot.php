<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="shortcut icon" href="chatbot_thumb.png">
    <link rel="stylesheet" href="style.css">
    <link rel="stylesheet" href="css/font-awesome.min.css">
    <script src="lib/jquery.js" type="text/javascript"></script>
    <title>Chatbot AI</title>

    <style>
        p{
            font-family: 'Times New Roman', Times, serif;
        }
        img{
            width: 40px;
            height: 30px;
            border-radius: 50%;
        }
        body{
            background-color: solid black;
        }
        .wrapper{
            background-color: white;
            box-shadow: 2px 1px 3px 1px solid lightgrey;
        }
        .form{
            opacity: 0.9;
        }
    </style>
</head>

<body>
    <center>
        <div class="wrapper">
            <div class="title"><img class="fas fa-user" src="chatbot_thumb.png" style="padding-top: 0px;"/>ChatBot AI - Amin</div>
            <div class="form">


                <!--Contains icon and message replies-->
                <div class="bot-inbox ai">
                    <div class="icon">
                        <img class="fas fa-user" src="chatbot_thumb.png" />
                    </div>
                    <div class="msg">
                        <p>Hello welcome, how can i help you</p>
                    </div>
                </div>

                <!--Contains quries
                <div class="user-inbox ai">
                    <div class="msg">
                        <p>who are you?</p>
                    </div>
                </div>
            -->

            </div>

            <!--Fixed Bottom Input field-->
            <div class="field">
                <div class="data">
                    <input type="text" id="message" placeholder="Type something here..." required>
                    <button id="send" onclick="chatAI()">Send</button>
                </div>
            </div>
        </div>
    </center>

    <script src="js/jquery.js"></script>
    <script>
            function chatAI() {
                $val = $("#message").val();
                $msg = '<div class="user-inbox ai"><div class="msg"><p>' + $val + '</p></div></div>';
                $(".form").append($msg);
                $("#message").val('');

                $.ajax({
                    url: 'chats.php',
                    type: 'POST',
                    data: 'text='+$val,
                    success: function(result) {
                        $replay = '<div class="bot-inbox ai"><div class="icon"><img class="fas fa-user" src="chatbot_thumb.png" /></div><div class="msg"><p>' + result + '</p></div></div>'
                        $(".form").append($replay);
                        let texts = result;
                        let $utterance = new SpeechSynthesisUtterance(texts);
                        speechSynthesis.speak($utterance);
                        //scroll to see latest message automatically:
                        $(".form").scrollTop($(".form")[0].scrollHeight);
                    }
                });
            }
    </script>
</body>

</html>