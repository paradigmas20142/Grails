databaseChangeLog = {

	changeSet(author: "carolina (generated)", id: "1409541797529-1") {
		createTable(tableName: "CREDIT_CARD") {
			column(autoIncrement: "true", name: "ID", type: "BIGINT") {
				constraints(nullable: "false", primaryKey: "true", primaryKeyName: "CONSTRAINT_6")
			}

			column(name: "VERSION", type: "BIGINT") {
				constraints(nullable: "false")
			}

			column(name: "CARD_COMPANY", type: "VARCHAR(255)") {
				constraints(nullable: "false")
			}

			column(name: "CARD_LIMIT", type: "INT") {
				constraints(nullable: "false")
			}

			column(name: "CARD_PAY", type: "TIMESTAMP") {
				constraints(nullable: "false")
			}
		}
	}

	changeSet(author: "carolina (generated)", id: "1409541797529-2") {
		createTable(tableName: "HELTH") {
			column(autoIncrement: "true", name: "ID", type: "BIGINT") {
				constraints(nullable: "false", primaryKey: "true", primaryKeyName: "CONSTRAINT_4")
			}

			column(name: "VERSION", type: "BIGINT") {
				constraints(nullable: "false")
			}

			column(name: "CREDIT_CARD_ID", type: "BIGINT")

			column(name: "FORM_PAYMENT", type: "VARCHAR(255)") {
				constraints(nullable: "false")
			}

			column(name: "HOSPITAL_TYPE", type: "VARCHAR(255)") {
				constraints(nullable: "false")
			}

			column(name: "REASON_EXPENSE", type: "VARCHAR(255)") {
				constraints(nullable: "false")
			}

			column(name: "SPENT_ON_CONSULT", type: "INT") {
				constraints(nullable: "false")
			}

			column(name: "SPENT_ON_MEDICINE", type: "INT")

			column(name: "SPENT_TOTAL", type: "INT")
		}
	}

	changeSet(author: "carolina (generated)", id: "1409541797529-3") {
		createTable(tableName: "PERSON") {
			column(autoIncrement: "true", name: "ID", type: "BIGINT") {
				constraints(nullable: "false", primaryKey: "true", primaryKeyName: "CONSTRAINT_8")
			}

			column(name: "VERSION", type: "BIGINT") {
				constraints(nullable: "false")
			}

			column(name: "ADRESS", type: "VARCHAR(255)") {
				constraints(nullable: "false")
			}

			column(name: "FINANCE_SIT", type: "VARCHAR(255)") {
				constraints(nullable: "false")
			}

			column(name: "NAME", type: "VARCHAR(255)") {
				constraints(nullable: "false")
			}

			column(name: "NUMBER", type: "INT") {
				constraints(nullable: "false")
			}

			column(name: "SALARY", type: "INT") {
				constraints(nullable: "false")
			}
		}
	}

	changeSet(author: "carolina (generated)", id: "1409541797529-4") {
		createTable(tableName: "USER") {
			column(autoIncrement: "true", name: "ID", type: "BIGINT") {
				constraints(nullable: "false", primaryKey: "true", primaryKeyName: "CONSTRAINT_2")
			}

			column(name: "VERSION", type: "BIGINT") {
				constraints(nullable: "false")
			}

			column(name: "LOGIN", type: "VARCHAR(255)") {
				constraints(nullable: "false")
			}

			column(name: "PASSWORD", type: "VARCHAR(255)") {
				constraints(nullable: "false")
			}

			column(name: "PERSON_ID", type: "BIGINT") {
				constraints(nullable: "false")
			}
		}
	}

	changeSet(author: "carolina (generated)", id: "1409541797529-5") {
		addForeignKeyConstraint(baseColumnNames: "CREDIT_CARD_ID", baseTableName: "HELTH", baseTableSchemaName: "PUBLIC", constraintName: "FK5E919C3632F5001", deferrable: "false", initiallyDeferred: "false", onDelete: "RESTRICT", onUpdate: "RESTRICT", referencedColumnNames: "ID", referencedTableName: "CREDIT_CARD", referencedTableSchemaName: "PUBLIC", referencesUniqueColumn: "false")
	}

	changeSet(author: "carolina (generated)", id: "1409541797529-6") {
		addForeignKeyConstraint(baseColumnNames: "PERSON_ID", baseTableName: "USER", baseTableSchemaName: "PUBLIC", constraintName: "FK36EBCBB901048E", deferrable: "false", initiallyDeferred: "false", onDelete: "RESTRICT", onUpdate: "RESTRICT", referencedColumnNames: "ID", referencedTableName: "PERSON", referencedTableSchemaName: "PUBLIC", referencesUniqueColumn: "false")
	}
}
