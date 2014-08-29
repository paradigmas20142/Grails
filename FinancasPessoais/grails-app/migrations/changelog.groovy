databaseChangeLog = {

	changeSet(author: "david (generated)", id: "1409276893956-1") {
		createTable(tableName: "PESSOA") {
			column(autoIncrement: "true", name: "ID", type: "BIGINT") {
				constraints(nullable: "false", primaryKey: "true", primaryKeyName: "CONSTRAINT_8")
			}

			column(name: "VERSION", type: "BIGINT") {
				constraints(nullable: "false")
			}

			column(name: "ENDERECO", type: "VARCHAR(255)") {
				constraints(nullable: "false")
			}

			column(name: "NOME", type: "VARCHAR(255)") {
				constraints(nullable: "false")
			}

			column(name: "SALARIO", type: "INT") {
				constraints(nullable: "false")
			}

			column(name: "SIT_FINANCEIRA", type: "VARCHAR(255)") {
				constraints(nullable: "false")
			}

			column(name: "TELEFONE", type: "INT") {
				constraints(nullable: "false")
			}
		}
	}

	changeSet(author: "david (generated)", id: "1409276893956-2") {
		createTable(tableName: "SAUDE") {
			column(autoIncrement: "true", name: "ID", type: "BIGINT") {
				constraints(nullable: "false", primaryKey: "true", primaryKeyName: "CONSTRAINT_4")
			}

			column(name: "VERSION", type: "BIGINT") {
				constraints(nullable: "false")
			}

			column(name: "FORMA_PAGAMENTO", type: "VARCHAR(255)") {
				constraints(nullable: "false")
			}

			column(name: "MOTIVO_GASTO", type: "VARCHAR(255)") {
				constraints(nullable: "false")
			}

			column(name: "TEM_PLANO_SAUDE", type: "BOOLEAN") {
				constraints(nullable: "false")
			}

			column(name: "TIPO_HOSPITAL", type: "VARCHAR(255)") {
				constraints(nullable: "false")
			}

			column(name: "VALOR_GASTO", type: "INT") {
				constraints(nullable: "false")
			}
		}
	}
}
