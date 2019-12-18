		var isFolded =true;
        var objSpan = document.getElementById('slide');
        var objNav = document.getElementById('slide-menu');
        var objCurtain = document.getElementById('curtain');

        // objSpan.onclick = function() {};
        objSpan.addEventListener('click', function (event){
            // 토글 버튼으로 동작
            if(isFolded){
                objCurtain.style.opacity = '0.5';
                objCurtain.style.zIndex= '8';
                objNav.style.transform = 'translateX(330px)'
                objSpan.innerText = '×';
                
            } else {
                objCurtain.style.opacity = '0';
                objCurtain.style.zIndex= '-8';
                objNav.style.transform = 'translateX(-330px)'
                objSpan.innerText = '≡';                
            }
            isFolded =!isFolded;
        });

        $(document).ready(function(){
            $('#btn1').on('mouseover',function(){
                $('#pic').css('background-image', 'url("images/축구장.jpg")');
            });
            $('#btn2').on('mouseover',function(){
                    $('#pic').css('background-image', 'url("images/야구장.jpg")');
                    
            });
            $('#btn3').on('mouseover',function(){
                    $('#pic').css('background-image', 'url("images/농구장.jpg")');
            });
            $('#btn4').on('mouseover',function(){
                    $('#pic').css('background-image', 'url("images/e스포츠.jpg")');
            });
            $('#foot').on('click',function(){
                    $('#list0').toggle();
            });
            $('#base').on('click',function(){
                    $('#list1').toggle();
            });
            $('#basket').on('click',function(){
                    $('#list2').toggle();
            });
            $('#es').on('click',function(){
                    $('#list3').toggle();
            });
        
        });