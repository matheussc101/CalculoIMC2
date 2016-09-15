<!DOCTYPE html>
<html lang="en">
<head>
<title>Cálculo IMC</title>
<!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">

<!-- Optional theme -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css" integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp" crossorigin="anonymous">

<!-- Latest compiled and minified JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>
</head>
<body>
  <div class="container">
      <form class="form-horizontal">
         <fieldset>

         <!-- Form Name -->
         <legend>Cálculo IMC</legend>

         <!-- Multiple Radios -->
         <div class="form-group" name="sexo">
           <label class="col-md-4 control-label" for="Sexo">Sexo</label>
           <div class="col-md-4">
           <div class="radio">
             <label for="Sexo-0">
               <input type="radio" name="Sexo" id="Sexo-0" value="1" checked="checked">
               Masculino
             </label>
                 </div>
           <div class="radio">
             <label for="Sexo-1">
               <input type="radio" name="Sexo" id="Sexo-1" value="2">
               Feminino
             </label>
                 </div>
           </div>
         </div>

         <!-- Text input-->
         <div class="form-group">
           <label class="col-md-4 control-label" for="altura">Altura</label>  
           <div class="col-md-4">
           <input id="altura" name="altura" type="number" placeholder="Digite sua altura (m)" class="form-control input-md" required autocomplete="off">
           <span class="help-block">Ex.: 1.76</span>  
           </div>
         </div>

         <!-- Text input-->
         <div class="form-group">
           <label class="col-md-4 control-label" for="peso">Peso</label>  
           <div class="col-md-4">
           <input id="peso" name="peso" type="number" placeholder="digite seu peso (Kg)" class="form-control input-md" required autocomplete="off">
           <span class="help-block">Ex.: 89.00</span>  
           </div>
         </div>

         <!-- Button (Double) -->
         <div class="form-group">
           <label class="col-md-4 control-label" for="calcular"></label>
           <div class="col-md-8">
             <button id="calcular" class="btn-primary">Calcular</button>
           </div>
         </div>

         </fieldset>
         </form>

         <%
            String alturaStr = request.getParameter("altura");
            String pesoStr = request.getParameter("peso");
            String sexo = request.getParameter("sexo");
            
            try {

	            if (alturaStr != null && pesoStr != null ) {
	              Double altura = Double.parseDouble(alturaStr);
	              Double peso   = Double.parseDouble(pesoStr);
	              Double imc    = peso/(altura*altura);
	              String mensagem = "";
	              String alert = "alert alert-info";
	              
	              
	              if (sexo == "1") {
	            	  
	            	  if(imc < 19.1) {
	            		  mensagem = "IMC :"+imc+". Abaixo do peso.";
	            		  alert = "alert alert-danger";
	            		  
	            	  } else if (imc <= 25.8) {
	            		  mensagem = "IMC :"+imc+". Peso normal.";
	            		  alert = "alert alert-success";
	            	  } else if (imc <= 27.3) {
	            		  mensagem = "IMC :"+imc+". Marginalmente acima do peso.";
	            	  } else if (imc <= 32.3) {
	            		  mensagem = "IMC :"+imc+". Acima do peso ideal.";
	            		  alert = "alert alert-danger";
	            	  } else if (imc > 32.3) {
	            		  mensagem = "IMC :"+imc+". Obeso.";
	            		  alert = "alert alert-danger";
	            	  } 
	            	
	              } else {
	            	  if(imc < 20.7) {
	            		  mensagem = "IMC :"+imc+". Abaixo do peso.";
	            		  alert = "alert alert-danger";            		  
	            	  } else if (imc <= 26.4) {
	            		  mensagem = "IMC :"+imc+". Peso normal.";
	            		  alert = "alert alert-success";
	            	  } else if (imc <= 27.8) {
	            		  mensagem = "IMC :"+imc+". Marginalmente acima do peso.";
	            	  } else if (imc <= 31.1) {
	            		  mensagem = "IMC :"+imc+". Acima do peso ideal.";
	            		  alert = "alert alert-danger";
	            	  } else if (imc > 31.1) {
	            		  mensagem = "IMC :"+imc+". Obeso.";
	            		  alert = "alert alert-danger";
	                  }
	              }
	            	  
	              
	              String codHtml = "<div class='"+alert+"'>"+mensagem+"</div>";
	              
	              out.println(codHtml);
	         
	            }
            
            } catch (Exception e) {
            	
            	out.println("<div class='alert alert-danger'>Preencha os campos corretamente!</div>");
            }

            

         %>
    
  </div>
</body>
</html>
