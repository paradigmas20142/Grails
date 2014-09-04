<head>
	<title>Tutorial de Instalação</title>
	<meta name="layout" content="kickstart" />
</head>

<body>
	<div class="center">
		<h2>Plugins Utilizados</h2>
			<p><h3><font color="ff0000">Bootstrap Twitter</font></h3>
				<h4>(plugin utilizado na interface)</h4></p>
			<p><h3><font color="ff0000">jQuery e jQuery-ui</font></h3>
				<h4>(plugins utilizados para a criação de campos dinâmicos)</h4></p>
			<p><h3><font color="ff0000">Resource</font></h3>
				<h4>(plugin utilizado para classes abstratas no banco)</h4></p>
			<p><h3><font color="ff0000">Spring Security</font></h3>
				<h4>(plugin utilizado no login)</h4></p>
						
		<br></br>

		<h2>Instalação Bootstrap Twitter</h2>
			<p><h3> Na classe BuildConfig.groovy no caminho grails-app/conf adicione as seguintes linhas:</h3></p> 
			<h4> <p>compile ':kickstart-with-bootstrap:0.8.9'
				<p>runtime ':jquery:1.8.3'
        		<p>compile ':lesscss-resources:1.3.0.3'</h4>	
        	<p><h3> Em seguida rode o comando (cuidado, pois este comando sobrescreve algumas views):</h3></p>
        		<h4> <p>grails kickstart</h4>	
        	<p><h3> Rode, então, o comando:</h3></p>
        		<h4> <p>grails generate-views NomeDoDiretorio.NomeDoArquivo</h4>
        	<p><h3> Caso já tenha sido gerado as views da classe estas terão de ser sobrescritas para que fique no padrão do plugin</h3></p> 
        	<p><h3> Execute o aplicativo com:</h3></p> 
        		<h4> <p>grails run-app</h4>

        <br></br>

        <h2>Instalação jQuery e JQuery-ui</h2>

        <br></br>

        <h2>Instalação Resource</h2>

        <br></br>

        <h2>Instalação Spring Security</h2>


        	

	</div>
</body>