 function checkStatus(id, nick, type){
            if(type=='yahoo'){
                document.getElementById(id).src='http://mail.opi.yahoo.com/online?u='+nick+'&amp;m=g&amp;t=2';
            }else{
                document.getElementById(id).src='http://mystatus.skype.com/bigclassic/'+nick;
            }
        }