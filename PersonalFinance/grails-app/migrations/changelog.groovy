databaseChangeLog = {

	changeSet(author: "carolina (generated)", id: "1409600101944-1") {
		createTable(tableName: "clothing") {
			column(autoIncrement: "true", name: "id", type: "BIGINT") {
				constraints(nullable: "false", primaryKey: "true")
			}

			column(name: "version", type: "BIGINT") {
				constraints(nullable: "false")
			}

			column(name: "data", type: "DATETIME") {
				constraints(nullable: "false")
			}

			column(name: "form_payment", type: "VARCHAR(255)") {
				constraints(nullable: "false")
			}

			column(name: "place", type: "VARCHAR(255)") {
				constraints(nullable: "false")
			}

			column(name: "reason_expense", type: "VARCHAR(255)") {
				constraints(nullable: "false")
			}

			column(name: "spent_total", type: "INT")
		}
	}

	changeSet(author: "carolina (generated)", id: "1409600101944-2") {
		createTable(tableName: "credit_card") {
			column(autoIncrement: "true", name: "id", type: "BIGINT") {
				constraints(nullable: "false", primaryKey: "true")
			}

			column(name: "version", type: "BIGINT") {
				constraints(nullable: "false")
			}

			column(name: "card_company", type: "VARCHAR(255)") {
				constraints(nullable: "false")
			}

			column(name: "card_limit", type: "INT") {
				constraints(nullable: "false")
			}

			column(name: "card_pay", type: "DATETIME") {
				constraints(nullable: "false")
			}
		}
	}

	changeSet(author: "carolina (generated)", id: "1409600101944-3") {
		createTable(tableName: "cultura") {
			column(autoIncrement: "true", name: "id", type: "BIGINT") {
				constraints(nullable: "false", primaryKey: "true")
			}

			column(name: "version", type: "BIGINT") {
				constraints(nullable: "false")
			}
		}
	}

	changeSet(author: "carolina (generated)", id: "1409600101944-4") {
		createTable(tableName: "esporte") {
			column(autoIncrement: "true", name: "id", type: "BIGINT") {
				constraints(nullable: "false", primaryKey: "true")
			}

			column(name: "version", type: "BIGINT") {
				constraints(nullable: "false")
			}
		}
	}

	changeSet(author: "carolina (generated)", id: "1409600101944-5") {
		createTable(tableName: "helth") {
			column(autoIncrement: "true", name: "id", type: "BIGINT") {
				constraints(nullable: "false", primaryKey: "true")
			}

			column(name: "version", type: "BIGINT") {
				constraints(nullable: "false")
			}

			column(name: "credit_card_id", type: "BIGINT")

			column(name: "form_payment", type: "VARCHAR(255)") {
				constraints(nullable: "false")
			}

			column(name: "hospital_type", type: "VARCHAR(255)") {
				constraints(nullable: "false")
			}

			column(name: "reason_expense", type: "VARCHAR(255)") {
				constraints(nullable: "false")
			}

			column(name: "spent_on_consult", type: "INT") {
				constraints(nullable: "false")
			}

			column(name: "spent_on_medicine", type: "INT")

			column(name: "spent_total", type: "INT")
		}
	}

	changeSet(author: "carolina (generated)", id: "1409600101944-6") {
		createTable(tableName: "lazer") {
			column(autoIncrement: "true", name: "id", type: "BIGINT") {
				constraints(nullable: "false", primaryKey: "true")
			}

			column(name: "version", type: "BIGINT") {
				constraints(nullable: "false")
			}

			column(name: "forma_pagamento", type: "VARCHAR(255)") {
				constraints(nullable: "false")
			}

			column(name: "motivo_gasto", type: "VARCHAR(255)") {
				constraints(nullable: "false")
			}

			column(name: "valor_gasto", type: "INT") {
				constraints(nullable: "false")
			}

			column(name: "class", type: "VARCHAR(255)") {
				constraints(nullable: "false")
			}

			column(name: "data", type: "DATETIME") {
				constraints(nullable: "false")
			}

			column(name: "local", type: "VARCHAR(255)") {
				constraints(nullable: "false")
			}
		}
	}

	changeSet(author: "carolina (generated)", id: "1409600101944-7") {
		createTable(tableName: "person") {
			column(autoIncrement: "true", name: "id", type: "BIGINT") {
				constraints(nullable: "false", primaryKey: "true")
			}

			column(name: "version", type: "BIGINT") {
				constraints(nullable: "false")
			}

			column(name: "adress", type: "VARCHAR(255)") {
				constraints(nullable: "false")
			}

			column(name: "finance_sit", type: "VARCHAR(255)") {
				constraints(nullable: "false")
			}

			column(name: "name", type: "VARCHAR(255)") {
				constraints(nullable: "false")
			}

			column(name: "number", type: "INT") {
				constraints(nullable: "false")
			}

			column(name: "salary", type: "INT") {
				constraints(nullable: "false")
			}
		}
	}

	changeSet(author: "carolina (generated)", id: "1409600101944-8") {
		createTable(tableName: "pessoa") {
			column(autoIncrement: "true", name: "id", type: "BIGINT") {
				constraints(nullable: "false", primaryKey: "true")
			}

			column(name: "version", type: "BIGINT") {
				constraints(nullable: "false")
			}

			column(name: "endereco", type: "VARCHAR(255)") {
				constraints(nullable: "false")
			}

			column(name: "nome", type: "VARCHAR(255)") {
				constraints(nullable: "false")
			}

			column(name: "salario", type: "INT") {
				constraints(nullable: "false")
			}

			column(name: "sit_financeira", type: "VARCHAR(255)") {
				constraints(nullable: "false")
			}

			column(name: "telefone", type: "VARCHAR(255)") {
				constraints(nullable: "false")
			}
		}
	}

	changeSet(author: "carolina (generated)", id: "1409600101944-9") {
		createTable(tableName: "phone") {
			column(autoIncrement: "true", name: "id", type: "BIGINT") {
				constraints(nullable: "false", primaryKey: "true")
			}

			column(name: "version", type: "BIGINT") {
				constraints(nullable: "false")
			}
		}
	}

	changeSet(author: "carolina (generated)", id: "1409600101944-10") {
		createTable(tableName: "playhouse") {
			column(autoIncrement: "true", name: "id", type: "BIGINT") {
				constraints(nullable: "false", primaryKey: "true")
			}

			column(name: "version", type: "BIGINT") {
				constraints(nullable: "false")
			}

			column(name: "data", type: "DATETIME") {
				constraints(nullable: "false")
			}

			column(name: "form_payment", type: "VARCHAR(255)") {
				constraints(nullable: "false")
			}

			column(name: "place", type: "VARCHAR(255)") {
				constraints(nullable: "false")
			}

			column(name: "reason_expense", type: "VARCHAR(255)") {
				constraints(nullable: "false")
			}

			column(name: "spent_total", type: "INT")
		}
	}

	changeSet(author: "carolina (generated)", id: "1409600101944-11") {
		createTable(tableName: "saude") {
			column(autoIncrement: "true", name: "id", type: "BIGINT") {
				constraints(nullable: "false", primaryKey: "true")
			}

			column(name: "version", type: "BIGINT") {
				constraints(nullable: "false")
			}

			column(name: "forma_pagamento", type: "VARCHAR(255)") {
				constraints(nullable: "false")
			}

			column(name: "motivo_gasto", type: "VARCHAR(255)") {
				constraints(nullable: "false")
			}

			column(name: "tem_plano_saude", type: "BIT") {
				constraints(nullable: "false")
			}

			column(name: "tipo_hospital", type: "VARCHAR(255)") {
				constraints(nullable: "false")
			}

			column(name: "valor_gasto", type: "INT") {
				constraints(nullable: "false")
			}

			column(name: "data", type: "DATETIME") {
				constraints(nullable: "false")
			}

			column(name: "local", type: "VARCHAR(255)") {
				constraints(nullable: "false")
			}
		}
	}

	changeSet(author: "carolina (generated)", id: "1409600101944-12") {
		createTable(tableName: "sport") {
			column(autoIncrement: "true", name: "id", type: "BIGINT") {
				constraints(nullable: "false", primaryKey: "true")
			}

			column(name: "version", type: "BIGINT") {
				constraints(nullable: "false")
			}

			column(name: "data", type: "DATETIME") {
				constraints(nullable: "false")
			}

			column(name: "form_payment", type: "VARCHAR(255)") {
				constraints(nullable: "false")
			}

			column(name: "place", type: "VARCHAR(255)") {
				constraints(nullable: "false")
			}

			column(name: "reason_expense", type: "VARCHAR(255)") {
				constraints(nullable: "false")
			}

			column(name: "spent_total", type: "INT")
		}
	}

	changeSet(author: "carolina (generated)", id: "1409600101944-13") {
		createTable(tableName: "user") {
			column(autoIncrement: "true", name: "id", type: "BIGINT") {
				constraints(nullable: "false", primaryKey: "true")
			}

			column(name: "version", type: "BIGINT") {
				constraints(nullable: "false")
			}

			column(name: "login", type: "VARCHAR(255)") {
				constraints(nullable: "false")
			}

			column(name: "password", type: "VARCHAR(255)") {
				constraints(nullable: "false")
			}

			column(name: "person_id", type: "BIGINT") {
				constraints(nullable: "false")
			}
		}
	}

	changeSet(author: "carolina (generated)", id: "1409600101944-14") {
		createTable(tableName: "usuario") {
			column(autoIncrement: "true", name: "id", type: "BIGINT") {
				constraints(nullable: "false", primaryKey: "true")
			}

			column(name: "version", type: "BIGINT") {
				constraints(nullable: "false")
			}

			column(name: "login", type: "VARCHAR(255)") {
				constraints(nullable: "false")
			}

			column(name: "pessoa_id", type: "BIGINT") {
				constraints(nullable: "false")
			}

			column(name: "senha", type: "VARCHAR(255)") {
				constraints(nullable: "false")
			}
		}
	}

	changeSet(author: "carolina (generated)", id: "1409600101944-15") {
		createTable(tableName: "vestuario") {
			column(autoIncrement: "true", name: "id", type: "BIGINT") {
				constraints(nullable: "false", primaryKey: "true")
			}

			column(name: "version", type: "BIGINT") {
				constraints(nullable: "false")
			}
		}
	}

	changeSet(author: "carolina (generated)", id: "1409600101944-16") {
		addForeignKeyConstraint(baseColumnNames: "credit_card_id", baseTableName: "helth", baseTableSchemaName: "FinancasPessoais", constraintName: "FK5E919C3632F5001", deferrable: "false", initiallyDeferred: "false", onDelete: "NO ACTION", onUpdate: "NO ACTION", referencedColumnNames: "id", referencedTableName: "credit_card", referencedTableSchemaName: "FinancasPessoais", referencesUniqueColumn: "false")
	}

	changeSet(author: "carolina (generated)", id: "1409600101944-17") {
		addForeignKeyConstraint(baseColumnNames: "person_id", baseTableName: "user", baseTableSchemaName: "FinancasPessoais", constraintName: "FK36EBCBB901048E", deferrable: "false", initiallyDeferred: "false", onDelete: "NO ACTION", onUpdate: "NO ACTION", referencedColumnNames: "id", referencedTableName: "person", referencedTableSchemaName: "FinancasPessoais", referencesUniqueColumn: "false")
	}

	changeSet(author: "carolina (generated)", id: "1409600101944-18") {
		addForeignKeyConstraint(baseColumnNames: "pessoa_id", baseTableName: "usuario", baseTableSchemaName: "FinancasPessoais", constraintName: "FKF814F32E49ED68FA", deferrable: "false", initiallyDeferred: "false", onDelete: "NO ACTION", onUpdate: "NO ACTION", referencedColumnNames: "id", referencedTableName: "pessoa", referencedTableSchemaName: "FinancasPessoais", referencesUniqueColumn: "false")
	}
}
