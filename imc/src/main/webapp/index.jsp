<!DOCTYPE html>
<html lang="en">
<head>
<title>Cállculo Menor/Maior</title>
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
         <div class="form-group">
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
           <label class="col-md-4 control-label" for="Altura">Altura</label>  
           <div class="col-md-4">
           <input id="Altura" name="Altura" type="text" placeholder="Digite sua altura (m)" class="form-control input-md" required value="{parameter.altura}">
           <span class="help-block">Ex.: 1,76</span>  
           </div>
         </div>

         <!-- Text input-->
         <div class="form-group">
           <label class="col-md-4 control-label" for="peso">Peso</label>  
           <div class="col-md-4">
           <input id="peso" name="peso" type="text" placeholder="digite seu peso (Kg)" class="form-control input-md" required>
           <span class="help-block">Ex.: 89,00</span>  
           </div>
         </div>

         <!-- Button (Double) -->
         <div class="form-group">
           <label class="col-md-4 control-label" for="calcular"></label>
           <div class="col-md-8">
             <button id="calcular" name="calcular" class="btn btn-primary">Calcular</button>
             <button id="limpar" name="limpar" class="btn btn-default">Limpar</button>
           </div>
         </div>

         </fieldset>
         </form>
    

    <%
      String idadeStr = request.getParameter("idade");
      //Se o campo "idade" nÃ£o foi informado, atribui "0", senÃ£o fica como estÃ¡.
      idadeStr = (idadeStr == null ? "0" : idadeStr);
      
      int idade = 0;
      try {
        idade = Integer.parseInt(idadeStr);
      } catch (Exception e) {
      }
      if (idade == 0) {
    %><div class="alert alert-danger" role="alert">Informe uma idade válida.</div><%
      } else if (idade < 18) {
    %><div class="alert alert-success" role="alert">Menor de idade.</div><%
      } else {
    %><div class="alert alert-success" role="alert">Maior de idade.</div><%
      }
    %>
  </div>
</body>
</html>
