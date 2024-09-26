<?php
session_start();
?>

<!DOCTYPE html>
<html lang="pt-br">

<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />


  <title>Cana Online</title>

  <!-- Adicionando Bootstrap CSS -->
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet" />
  <!-- Adicionando Bootstrap Icons -->
  <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons/font/bootstrap-icons.css" rel="stylesheet" />


  <?php
  if (isset($_SESSION['msg'])) {
    echo $_SESSION['msg'];
    unset($_SESSION['msg']);

  }

  ?>

  <style>
    .navbar {
      position: fixed;
      top: 0;
      width: 100%;
      background-color: #198754;
      /* Cor verde escuro */
    }

    .sidebar {
      position: fixed;
      top: 56px;
      /* Altura da navbar */
      left: 0;
      height: calc(100vh - 56px);
      /* Altura total - altura da navbar */
      width: 200px;
      padding: 10px;
      background-color: #f8f9fa;
      border-right: 2px solid #dee2e6;
    }

    .content {
      margin-top: 56px;
      /* Altura da navbar */
      margin-left: 230px;
      padding: 10px;
    }

    .form-group {
      margin-bottom: 10px;
    }


 
  </style>
</head>

<body>


  <form method="POST" action="processa.php">

    <!-- Navbar -->
    <nav class="navbar navbar-dark bg-success">
      <div class="container-fluid">
        <a class="navbar-brand" href="#">Cana Online</a>
      </div>
    </nav>

    <aside id="sidebar" class="sidebar">
      <ul class="sidebar-nav" id="sidebar-nav">
        <li class="nav-item">
          <a class="nav-link" href="#" onclick="openForm('apontamento')">
            <i class="bi bi-file-earmark-plus"></i>
            <!-- Ícone de formulário -->
            <span>Apontamentos</span>
          </a>
        </li>
        <!-- End Dashboard Nav -->
        <li class="nav-item">
          <a class="nav-link" href="#" onclick="openForm('operador')">
            <i class="bi bi-person-plus"></i>
            <!-- Ícone de cadastro -->
            <span>Colaborador</span>
          </a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="#" onclick="openForm('equipamento')">
            <i class="bi bi-person-plus"></i>
            <!-- Ícone de cadastro -->
            <span>Equipamentos</span>
          </a>
        </li>
        <!-- End Dashboard Nav -->
      </ul>
    </aside>

    <!-- Conteúdo da Página -->
    <div class="content">
      <div id="apontamentoForm" style="display: none">
        <h2>Apontamentos de Produção</h2>
        <form>
          <div class="row">
            <div class="col-md-4">
              <div class="form-group">
                <label for="data_lancamento">Data lançamento:</label>
                <input type="date" class="form-control" name="data_lancamento"
                  placeholder="Digite a data da Lançamento" />
              </div>
              <div class="form-group">
                <label for="liberacao"> Liberação:</label>
                <input type="text" class="form-control" name="liberacao" placeholder="Digite a Liberação (O.S)" />
              </div>
              <div class="form-group">
                <label for="frota"> Nº Caminhão:</label>
                <input type="text" class="form-control" name="frota" placeholder="Digite nº Caminhão" />
              </div>
              <div class="form-group">
                <label for="colhedora"> Nº Colhedora:</label>
                <input type="text" class="form-control" name="colhedora" placeholder="Digite nº Colhedora" />
              </div>
              <div class="form-group">
                <label for="transbordo"> Nº Transbordo:</label>
                <input type="text" class="form-control" name="transbordo" placeholder="Digite nº Transbordo" />
              </div>
            </div>
            <div class="col-md-4">
              <div class="form-group">
                <label for="hora_saida"> Hora de saída:</label>
                <input type="time" class="form-control" name="hora_saida"
                  placeholder="Informe a hora da saída Lavoura" />
              </div>
              <div class="form-group">
                <label for="fazenda">Faz/Lote:</label>
                <input type="text" class="form-control" name="fazenda" placeholder="Digite Faz / Lote" />
              </div>
              <div class="form-group">
                <label for="motorista"> Motorista:</label>
                <input type="text" class="form-control" name="motorista" placeholder="Digite Nome Motorista" />
              </div>
              <div class="form-group">
                <label for="operador1"> Operador Colhedora:</label>
                <input type="text" class="form-control" name="operador1" placeholder="Digite nome Op.Colhedora" />
              </div>
              <div class="form-group">
                <label for="operador2"> Operador Transbordo:</label>
                <input type="text" class="form-control" name="operador2" placeholder="Digite nome Op.Transbordo" />
              </div>
            </div>
            <div class="col-md-4">
              <div class="form-group">
                <label for="operacao">Tipo Operação:</label>
                <input type="text" class="form-control" name="operacao"
                  placeholder="Informe o Tipo Operação (Plantio,Colheita...)" />
              </div>
              <div class="form-group">
                <label for="lider">Lider:</label>
                <input type="text" class="form-control" name="lider"
                  placeholder="Digite nome Lider Carregamento e Transporte" />
              </div>
              <div class="form-group">
                <label for="turno">Turno2</label>
                <input type="text" class="form-control" name="turno" placeholder=" Informe Turno (dia,Noite)" />
              </div>
            </div>
          </div>
          <div class="form-group">
            <label for="informacao"> Informações Adicionais:</label>
            <input type="text" class="form-control" name="informacao"
              placeholder="Anotações de Informações e  Ocorrências" />
          </div>
          <br>
          <button type="submit" class="btn btn-primary">Enviar</button>
        </form>
      </div>

      <form method="POST" action="processa3.php">
    
    <div id="equipamentoForm" style="display: none">
      <h3>Cadastro Equipamento</h3>
      <form>
        <div class="row">
          <div class="col-md-6">
            <div class="form-group">
              <label for="frota"> Nº Frota:</label>
              <input type="text" class="form-control" name="frota" placeholder="Digite a Frota" />
            </div>
            <div class="form-group">
              <label for="modelo">Modelo Equipamento:</label>
              <input type="text" class="form-control" name="modelo" placeholder="Informe Modelo do Equipamento" />

            </div>
            <div class="form-group">
              <label for="operacao">Tipo Operação:</label>
              <input type="text" class="form-control" name="operacao"
                placeholder="Informe a Operação (Transporte,Colheita)" />
            </div>
          </div>
          <div class="col-md-6">
            <div class="form-group">
              <label for="tag">Nº Tag (dados)</label>
              <input type="text" class="form-control" name="tag" placeholder="Informe o nº Tag Coleta dados" />
            </div>
            <div class="form-group">
              <label for="categoria">Categoria:</label>
              <input type="text" class="form-control" name="categoria" placeholder="Digite Caminhão ou trator" />
            </div>
          </div>
        </div>
        <br>
        <button type="submit" class="btn btn-primary">Cadastrar</button>
      </form>
    </div>

      <form method="POST" action="processa2.php">

        <div id="operadorForm" style="display: none">
          <h2>Cadastro Colaborador</h2>
          <form>
            <div class="row">
              <div class="col-md-6">
                <div class="form-group">
                  <label for="matricula"> Nº Matricula:</label>
                  <input type="text" class="form-control" name="matricula" placeholder="Digite a Matricula" />
                </div>
                <div class="form-group">
                  <label for="telefone">Telefone/Celular:</label>
                  <input type="text" class="form-control" name="telefone" placeholder="Digite Telefone/celular" />
                </div>
                <div class="form-group">
                  <label for="funcao">Função:</label>
                  <input type="text" class="form-control" name="funcao" placeholder="Digite a Função Colaborador" />
                </div>
              </div>
              <div class="col-md-6">
                <div class="form-group">
                  <label for="nome">Nome do Colaborador:</label>
                  <input type="text" class="form-control" name="nome" placeholder="Digite nome do Colaborador" />
                </div>
                <div class="form-group">
                  <label for="apelido">Apelido:</label>
                  <input type="text" class="form-control" name="apelido" placeholder="Digite apelido" />
                </div>
                <div class="form-group">
                  <label for="turno">Turno:</label>
                  <input type="text" class="form-control" name="turno" placeholder="Digite o Turno" />
                </div>
                <br>
                <button type="submit" class="btn btn-primary">Cadastrar</button>
          </form>
        </div>
    </div>
    </div>

    <form method="POST" action="processa3.php">
    
      <div id="equipamentoForm" style="display: none">
        <h3>Cadastro Equipamento</h3>
        <form>
          <div class="row">
            <div class="col-md-6">
              <div class="form-group">
                <label for="frota"> Nº Frota:</label>
                <input type="text" class="form-control" name="frota" placeholder="Digite a Frota" />
              </div>
              <div class="form-group">
                <label for="modelo">Modelo Equipamento:</label>
                <input type="text" class="form-control" name="modelo" placeholder="Informe Modelo do Equipamento" />

              </div>
              <div class="form-group">
                <label for="operacao">Tipo Operação:</label>
                <input type="text" class="form-control" name="operacao"
                  placeholder="Informe a Operação (Transporte,Colheita)" />
              </div>
            </div>
            <div class="col-md-6">
              <div class="form-group">
                <label for="tag">Nº Tag (dados)</label>
                <input type="text" class="form-control" name="tag" placeholder="Informe o nº Tag Coleta dados" />
              </div>
              <div class="form-group">
                <label for="categoria">Categoria:</label>
                <input type="text" class="form-control" name="categoria" placeholder="Digite Caminhão ou trator" />
              </div>
            </div>
          </div>
          <br>
          <button type="submit" class="btn btn-primary">Cadastrar</button>
        </form>
      </div>
      </div>

      <script>
        function openForm(formName) {
          // Oculta todos os formulários
          document.getElementById('apontamentoForm').style.display = 'none'
          document.getElementById('operadorForm').style.display = 'none'
          document.getElementById('equipamentoForm').style.display = 'none'

          // Exibe apenas o formulário desejado
          if (formName === 'apontamento') {
            document.getElementById('apontamentoForm').style.display = 'block'



          } else if (formName === 'operador') {
            document.getElementById('operadorForm').style.display = 'block'


          } else if (formName === 'equipamento') {
            document.getElementById('equipamentoForm').style.display = 'block'

          }
        }
      </script>
</body>

</html>