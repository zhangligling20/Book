 
       function getXMLHttpRequest(){
       	
       	
       	   try{
       	   	
       	   	return  new XMLHttpRequest();
       	   	
       	   }catch(e){
       	   	
       	   	
       	   	   try{
       	   	   	
       	   	   	   return new AcitveXObject("Microsoft.XMLHTTP");
       	   	   	
       	   	   }catch(e){
       	   	   	
       	   	   	
       	   	   	    try{//ie
       	   	   	    	
       	   	   	    	return new ActiveXObject("Msxml2.XMLHTTP");
       	   	   	    	
       	   	   	    }catch(e){
       	   	   	    
       	   	   	    	
       	   	   	    	alert("IE");
       	   	   	    	
       	   	   	    	throw e;
       	   	   	    	
       	   	   	    }
       	   	   	
       	   	   	
       	   	   }
       	   	
       	   }
       	
       	
       }
       
     
       /*
        * {
        *  method:"POST",
        *  url:"TESTServlet",
        *  ansy:true,
        *  params:"action",
        *  type:"xml",
        *  success:function(){
        *  
        *  
        *  }
        * 
        * 
        * }
        * 
        * 
        */
       
       //opt
       function ajax(opt){
       	
       	
       	//1.
       	
       	var http=getXMLHttpRequest();
       
       	if(!opt.method){
       		
       		opt.method="GET";
       	}
       	
       
       	
       	if(opt.ansy==undefined){
       		
       		
       		opt.ansy=true;
       	}
       	
       	http.open(opt.method,opt.url,opt.ansy);
       	
       	
       	
       	if(opt.method=="POST"){
       		
       		
       		http.setRequestHeader("Content-type","application/x-www-form-urlencoded");
       	}
       	
       	http.send(opt.params);
       	
       	//4.锟�
       	
       	http.onreadystatechange=function(){
       		
       		
       		if(http.readyState==4&& http.status==200){
       			
       			
       			var data;
       			
       			
       			
       			if(!opt.type){
       				
       				alert(".....");
       				
       				data=http.responseText;
       			
       			}else if(opt.type=="text"){
       				
       				data=http.responseText;
       				
       			}else if(opt.type=="xml"){
       				
       				alert("ok");
       				
       				data=http.responseXML;
       				
       			}else if(opt.type=="json"){
       				
       				var content=http.responseText;
       				
       				data=eval("("+content+")");
       			}
       		
       			
       			opt.success(data);
       			
       		}
       		
       	}
       	
       }