databaseChangeLog = {

	changeSet(author: "carolina (generated)", id: "1409690852722-1") {
		createTable(tableName: "cabletv") {
			column(autoIncrement: "true", name: "id", type: "BIGINT") {
				constraints(nullable: "false", primaryKey: "true")
			}

			column(name: "version", type: "BIGINT") {
				constraints(nullable: "false")
			}

			column(name: "due_date", type: "DATETIME") {
				constraints(nullable: "false")
			}

			column(name: "form_payment", type: "VARCHAR(255)") {
				constraints(nullable: "false")
			}

			column(name: "payment_date", type: "DATETIME") {
				constraints(nullable: "false")
			}

			column(name: "reason_expense", type: "VARCHAR(255)") {
				constraints(nullable: "false")
			}

			column(name: "spent_total", type: "INT")
		}
	}

	changeSet(author: "carolina (generated)", id: "1409690852722-2") {
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

	changeSet(author: "carolina (generated)", id: "1409690852722-3") {
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

	changeSet(author: "carolina (generated)", id: "1409690852722-4") {
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

	changeSet(author: "carolina (generated)", id: "1409690852722-5") {
		createTable(tableName: "internet") {
			column(autoIncrement: "true", name: "id", type: "BIGINT") {
				constraints(nullable: "false", primaryKey: "true")
			}

			column(name: "version", type: "BIGINT") {
				constraints(nullable: "false")
			}

			column(name: "due_date", type: "DATETIME") {
				constraints(nullable: "false")
			}

			column(name: "form_payment", type: "VARCHAR(255)") {
				constraints(nullable: "false")
			}

			column(name: "payment_date", type: "DATETIME") {
				constraints(nullable: "false")
			}

			column(name: "reason_expense", type: "VARCHAR(255)") {
				constraints(nullable: "false")
			}

			column(name: "spent_total", type: "INT")
		}
	}

	changeSet(author: "carolina (generated)", id: "1409690852722-6") {
		createTable(tableName: "light") {
			column(autoIncrement: "true", name: "id", type: "BIGINT") {
				constraints(nullable: "false", primaryKey: "true")
			}

			column(name: "version", type: "BIGINT") {
				constraints(nullable: "false")
			}

			column(name: "due_date", type: "DATETIME") {
				constraints(nullable: "false")
			}

			column(name: "form_payment", type: "VARCHAR(255)")

			column(name: "payment_date", type: "DATETIME") {
				constraints(nullable: "false")
			}

			column(name: "reason_expense", type: "VARCHAR(255)")

			column(name: "spent_total", type: "INT")
		}
	}

	changeSet(author: "carolina (generated)", id: "1409690852722-7") {
		createTable(tableName: "mobile_phone") {
			column(autoIncrement: "true", name: "id", type: "BIGINT") {
				constraints(nullable: "false", primaryKey: "true")
			}

			column(name: "version", type: "BIGINT") {
				constraints(nullable: "false")
			}

			column(name: "due_date", type: "DATETIME") {
				constraints(nullable: "false")
			}

			column(name: "form_payment", type: "VARCHAR(255)") {
				constraints(nullable: "false")
			}

			column(name: "payment_date", type: "DATETIME") {
				constraints(nullable: "false")
			}

			column(name: "reason_expense", type: "VARCHAR(255)") {
				constraints(nullable: "false")
			}

			column(name: "spent_total", type: "INT")
		}
	}

	changeSet(author: "carolina (generated)", id: "1409690852722-8") {
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

	changeSet(author: "carolina (generated)", id: "1409690852722-9") {
		createTable(tableName: "phone") {
			column(autoIncrement: "true", name: "id", type: "BIGINT") {
				constraints(nullable: "false", primaryKey: "true")
			}

			column(name: "version", type: "BIGINT") {
				constraints(nullable: "false")
			}

			column(name: "due_date", type: "DATETIME") {
				constraints(nullable: "false")
			}

			column(name: "form_payment", type: "VARCHAR(255)") {
				constraints(nullable: "false")
			}

			column(name: "payment_date", type: "DATETIME") {
				constraints(nullable: "false")
			}

			column(name: "reason_expense", type: "VARCHAR(255)") {
				constraints(nullable: "false")
			}

			column(name: "spent_total", type: "INT")
		}
	}

	changeSet(author: "carolina (generated)", id: "1409690852722-10") {
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

	changeSet(author: "carolina (generated)", id: "1409690852722-11") {
		createTable(tableName: "sport") {
			column(autoIncrement: "true", name: "id", type: "BIGINT") {
				constraints(nullable: "false", primaryKey: "true")
			}

			column(name: "version", type: "BIGINT") {
				constraints(nullable: "false")
			}

			column(name: "creditcard_id", type: "BIGINT")

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

	changeSet(author: "carolina (generated)", id: "1409690852722-12") {
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

	changeSet(author: "carolina (generated)", id: "1409690852722-13") {
		createTable(tableName: "water") {
			column(autoIncrement: "true", name: "id", type: "BIGINT") {
				constraints(nullable: "false", primaryKey: "true")
			}

			column(name: "version", type: "BIGINT") {
				constraints(nullable: "false")
			}

			column(name: "due_date", type: "DATETIME") {
				constraints(nullable: "false")
			}

			column(name: "form_payment", type: "VARCHAR(255)") {
				constraints(nullable: "false")
			}

			column(name: "payment_date", type: "DATETIME") {
				constraints(nullable: "false")
			}

			column(name: "reason_expense", type: "VARCHAR(255)") {
				constraints(nullable: "false")
			}

			column(name: "spent_total", type: "INT")
		}
	}

	changeSet(author: "carolina (generated)", id: "1409690852722-14") {
		addForeignKeyConstraint(baseColumnNames: "credit_card_id", baseTableName: "helth", baseTableSchemaName: "PersonalFinance_II", constraintName: "FK5E919C3632F5001", deferrable: "false", initiallyDeferred: "false", onDelete: "NO ACTION", onUpdate: "NO ACTION", referencedColumnNames: "id", referencedTableName: "credit_card", referencedTableSchemaName: "PersonalFinance_II", referencesUniqueColumn: "false")
	}

	changeSet(author: "carolina (generated)", id: "1409690852722-15") {
		addForeignKeyConstraint(baseColumnNames: "creditcard_id", baseTableName: "sport", baseTableSchemaName: "PersonalFinance_II", constraintName: "FK68927746ABFC22E", deferrable: "false", initiallyDeferred: "false", onDelete: "NO ACTION", onUpdate: "NO ACTION", referencedColumnNames: "id", referencedTableName: "credit_card", referencedTableSchemaName: "PersonalFinance_II", referencesUniqueColumn: "false")
	}

	changeSet(author: "carolina (generated)", id: "1409690852722-16") {
		addForeignKeyConstraint(baseColumnNames: "person_id", baseTableName: "user", baseTableSchemaName: "PersonalFinance_II", constraintName: "FK36EBCBB901048E", deferrable: "false", initiallyDeferred: "false", onDelete: "NO ACTION", onUpdate: "NO ACTION", referencedColumnNames: "id", referencedTableName: "person", referencedTableSchemaName: "PersonalFinance_II", referencesUniqueColumn: "false")
	}
}
