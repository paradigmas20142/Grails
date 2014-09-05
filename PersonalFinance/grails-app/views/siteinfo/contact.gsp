<<<<<<< HEAD
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
                                                                                           <h4> <p>No arquivo BuildConfig adcione em plugins: </h4> 
                                                                                           <p><h3> compile ":jquery-ui:1.10.3"</h3></p>
                                                                                           <p><h3> Rode o comando grails run-app</h3></p>
                                                                                           <br></br>

                                                                                           <h2>Instalação Resource</h2>
                                                                                           <h4> <p>No arquivo BuildConfig adcione em plugins: </h4> 
                                                                                           <p><h3> runtime ":resources:1.2"</h3></p>

                                                                                           <p><h3> Rode o comando grails run-app</h3></p>
                                                                                           <br></br>

                                                                                           <h2>Instalação Spring Security</h2>

                    



                                                                                           </div>
                                                                                           </body>
=======
<head>
	<title>Tutorial de Instalação</title>
	<meta name="layout" content="kickstart" />
</head>

<body>
	<div class="center">
		<h2><font color="0000ff">Instalação da Plataforma Grails 2.2.4</font></h2>
			<p><h3> Abra o terminal e digite os seguintes comandos:</h3></p> 
			<h4><p>sudo apt-get install curl</h4>
			<h4> <p>curl -s get.gvmtool.net | bash </h4>
			<h4> <p>sudo add-repository ppa:webupd8team/java</h4>
			<h4> <p>sudo apt-get update</h4>
			<h4> <p>sudo apt-get install oracle-jdk7-installer</h4>
			<h4> <p>curl -s get.gvmtool.net | bash</h4>
			<h4> <p>. . bashrc </h4>
			<h4> <p>gvm install grails 2.2.4</h4>
			<p><h3> Comandos básicos do Grails:</h3></p> 
			<h4><p>grails crete-app NomeDoAplicativo  (Cria um aplicatico)</h4>
			<h4><p>grails crete-domain-class NomeDaClasse (Cria uma classe de domínio)</h4>
			<h4><p>grails generate-all diretorio.NomeDaClasse  (Cria a controller e as views da classe de domínio)</h4>
			<h4><p>grails generate-controller diretorio.NomeDaClasse  (Cria apenas a controller da classe de domínio)</h4>
			<h4><p>grails generate-views diretorio.NomeDaClasse  (Cria apenas as views da classe de domínio)</h4>
			<h4><p>grails run-app (Roda o aplicativo)</h4>
			<h4><p>grails -Dserver.port=NumeroDaPorta run-app (Roda o aplicativo em uma porta especificada)</h4>
		<br></br>

		<h2><font color="0000ff">Instalação do MySqlServer</font></h2>
			<p><h3> Abra o terminal e digite os seguintes comandos:</h3></p> 
			<h4><p>sudo apt-get install mysql-server</h4>
			<h4><p>sudo apt-get install mysql-workbench</h4>
			<h4><p>sudo apt-get install mysql-client-5.5</h4> 
			<p><h3> Para a utilização do Banco de Dados no seu projeto Grails, adicione a seguinte linha no arquivo BuildConfig.groovy (localizado no diretório grails-app/conf do seu projeto):</h3></p> 
			<h4><p>runtime 'mysql:mysql-connector-java:5.1.16</h4>
			<p><h3> No arquivo DataSource.groovy, também localizado no diretório grails-app/conf do seu projeto, modifique as linhas de acordo com o seu Banco de dados. Nos campos username e password coloque o seu username e pessword respectivamente. Dentro das chaves de dataSource  adicione as seguintes linha (abaixo de pooled = true): </h3></p> 
			<h4><p>driverClassName = "com.mysql.jdbc.Driver"</h4>
			<h4><p>dialect = "org.hibernate.dialect.MySql5InnoDBDialect"</h4>
			<p><h3> Nos campos de url modifique para: </h3></p> 
			<h4><p>"jdbc:mysql://localhost/NOMEDOBANCO?useUnicode=yes&characterEncoding=UTF-8"</h4>
			

		<br></br>

		<h2><font color="0000ff">Plugins Utilizados</font></h2>
			<p><h3><font color="ff0000">Bootstrap Twitter</font></h3>
				<h4>(plugin utilizado na interface)</h4></p>
			<p><h3><font color="ff0000">Google Chart</font></h3>
				<h4>(plugin utilizado na geração de gráficos)</h4></p>
			<p><h3><font color="ff0000">jQuery e jQuery-ui</font></h3>
				<h4>(plugins utilizados para a criação de campos dinâmicos)</h4></p>
			<p><h3><font color="ff0000">Resource</font></h3>
				<h4>(plugin utilizado para classes abstratas no banco)</h4></p>
			<p><h3><font color="ff0000">Spring Security</font></h3>
				<h4>(plugin utilizado no login)</h4></p>
						
		<br></br>

		
		<h2><font color="0000ff">Instalação Bootstrap Twitter</font></h2>
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

        <h2><font color="0000ff">Instalação Google Chart</font></h2> 

                                                                                           <h2>Instalação da API do google</h2>
                                                                                           <h4> <p>No arquivo BuildConfig adcione em plugins: </h4> 
                                                                                           <p><h3> compile ":google-visualization:0.7"</h3></p>

                                                                                           <p><h3> Rode o comando grails run-app</h3></p>
        <br></br>

        <h2><font color="0000ff">Instalação jQuery e JQuery-ui</font></h2>
        <p><h3> Na classe BuildConfig.groovy no caminho grails-app/conf adicione a seguinte linha:</h3></p> 
			<h4> <p>runtime ':jquery:1.8.3'</h4>
		<p><h3> Entre pelo terminal no diretório do seu projeto Grails e execute o comando:</h3></p> 
			<h4> <p>grails install-plugin jquery</h4>
		<p><h3> Para a instalação do jQuery-ui, adicione na classe BuildConfig.groovy a seguinte linha:</h3></p> 
			<h4> <p>compile ":jquery-ui:1.10.3"</h4>
		<p><h3> No terminal execute o comando:</h3></p> 
			<h4> <p>grails install-plugin jquery-ui</h4>
        

        <br></br>

        <h2><font color="0000ff">Instalação Resource</font></h2>
<h4> <p>No arquivo BuildConfig adcione em plugins: </h4> 
                                                                                           <p><h3> runtime ":resources:1.2"</h3></p>

                                                                                           <p><h3> Rode o comando grails run-app</h3></p>

        <br></br>

        <h2><font color="0000ff">Instalação Spring Security</font></h2>
        	<p><h3> Abra o seu terminal, entre no diretório do seu projeto Grails e execute: </h3></p> 
				<h4> <p>grails install-plugin spring-security-core</h4>
			<p><h3> Adicione no arquivo BuildConfig.groovy, localizado no grails-app/conf as seguintes linhas: </h3></p> 
				<h4> <p>mavenRepo "http://repo.spring.io/milestone</h4>
				<h4> <p>compile ":spring-security-core:1.2.7.2</h4>
			<p><h3> No arquivo Config.groovy, também localizado no grails-app/conf, adicione as seguintes linhas: </h3></p> 
				<h4> <p>grails.plugin.springsecurity.logout.postyOnly = false</h4>
				<h4> <p>grails.plugins.springsecurity.securityConfigType = "Annotation"</h4>
			<p><h3> Ainda no arquivo Config.groovy, adicione a seguinte linha abaixo de error: </h3></p> 
				<h4> <p>debug 'SpringSecurityTwitterGrailsPlugin</h4>
			<p><h3> Rode, então, os seguintes comandos no terminal: </h3></p> 
				<h4> <p>grails refresh-dependencies</h4>
				<h4> <p>grails s2-quickstart org.grails.twitter Person Authority</h4>
				


        	

	</div>
</body>
>>>>>>> Report and installation tutorials
