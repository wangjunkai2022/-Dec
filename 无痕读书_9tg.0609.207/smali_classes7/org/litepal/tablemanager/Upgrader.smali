.class public Lorg/litepal/tablemanager/Upgrader;
.super Lorg/litepal/tablemanager/AssociationUpdater;
.source "Upgrader.java"


# instance fields
.field public hasConstraintChanged:Z

.field public mTableModel:Lorg/litepal/tablemanager/model/TableModel;

.field public mTableModelDB:Lorg/litepal/tablemanager/model/TableModel;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lorg/litepal/tablemanager/AssociationUpdater;-><init>()V

    return-void
.end method

.method private addColumns(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/litepal/tablemanager/model/ColumnModel;",
            ">;)V"
        }
    .end annotation

    const-string v0, "AssociationUpdater"

    const-string v1, "do addColumn"

    .line 1
    invoke-static {v0, v1}, Lorg/litepal/util/LitePalLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-direct {p0, p1}, Lorg/litepal/tablemanager/Upgrader;->getAddColumnSQLs(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lorg/litepal/tablemanager/AssociationUpdater;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {p0, v0, v1}, Lorg/litepal/tablemanager/Generator;->execute(Ljava/util/List;Landroid/database/sqlite/SQLiteDatabase;)V

    .line 3
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/litepal/tablemanager/model/ColumnModel;

    .line 4
    iget-object v1, p0, Lorg/litepal/tablemanager/Upgrader;->mTableModelDB:Lorg/litepal/tablemanager/model/TableModel;

    invoke-virtual {v1, v0}, Lorg/litepal/tablemanager/model/TableModel;->addColumnModel(Lorg/litepal/tablemanager/model/ColumnModel;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private changeColumnsConstraints()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lorg/litepal/tablemanager/Upgrader;->hasConstraintChanged:Z

    if-eqz v0, :cond_0

    const-string v0, "AssociationUpdater"

    const-string v1, "do changeColumnsConstraints"

    .line 2
    invoke-static {v0, v1}, Lorg/litepal/util/LitePalLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    invoke-direct {p0}, Lorg/litepal/tablemanager/Upgrader;->getChangeColumnsConstraintsSQL()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lorg/litepal/tablemanager/AssociationUpdater;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {p0, v0, v1}, Lorg/litepal/tablemanager/Generator;->execute(Ljava/util/List;Landroid/database/sqlite/SQLiteDatabase;)V

    :cond_0
    return-void
.end method

.method private changeColumnsType(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/litepal/tablemanager/model/ColumnModel;",
            ">;)V"
        }
    .end annotation

    const-string v0, "AssociationUpdater"

    const-string v1, "do changeColumnsType"

    .line 1
    invoke-static {v0, v1}, Lorg/litepal/util/LitePalLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p1, :cond_0

    .line 3
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 4
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/litepal/tablemanager/model/ColumnModel;

    .line 5
    invoke-virtual {v2}, Lorg/litepal/tablemanager/model/ColumnModel;->getColumnName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 6
    :cond_0
    invoke-direct {p0, v0}, Lorg/litepal/tablemanager/Upgrader;->removeColumns(Ljava/util/List;)V

    .line 7
    invoke-direct {p0, p1}, Lorg/litepal/tablemanager/Upgrader;->addColumns(Ljava/util/List;)V

    return-void
.end method

.method private findColumnTypesToChange()Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/litepal/tablemanager/model/ColumnModel;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    iget-object v1, p0, Lorg/litepal/tablemanager/Upgrader;->mTableModelDB:Lorg/litepal/tablemanager/model/TableModel;

    invoke-virtual {v1}, Lorg/litepal/tablemanager/model/TableModel;->getColumnModels()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/litepal/tablemanager/model/ColumnModel;

    .line 3
    iget-object v3, p0, Lorg/litepal/tablemanager/Upgrader;->mTableModel:Lorg/litepal/tablemanager/model/TableModel;

    invoke-virtual {v3}, Lorg/litepal/tablemanager/model/TableModel;->getColumnModels()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/litepal/tablemanager/model/ColumnModel;

    .line 4
    invoke-virtual {v2}, Lorg/litepal/tablemanager/model/ColumnModel;->getColumnName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4}, Lorg/litepal/tablemanager/model/ColumnModel;->getColumnName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 5
    invoke-virtual {v2}, Lorg/litepal/tablemanager/model/ColumnModel;->getColumnType()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4}, Lorg/litepal/tablemanager/model/ColumnModel;->getColumnType()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 6
    invoke-virtual {v4}, Lorg/litepal/tablemanager/model/ColumnModel;->getColumnType()Ljava/lang/String;

    move-result-object v5

    const-string v6, "blob"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {v2}, Lorg/litepal/tablemanager/model/ColumnModel;->getColumnType()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    goto :goto_1

    .line 7
    :cond_2
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8
    :cond_3
    :goto_1
    iget-boolean v5, p0, Lorg/litepal/tablemanager/Upgrader;->hasConstraintChanged:Z

    if-nez v5, :cond_1

    const-string v5, "default value db is:"

    .line 9
    invoke-static {v5}, Lcom/apk/goto;->super(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Lorg/litepal/tablemanager/model/ColumnModel;->getDefaultValue()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ", default value is:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lorg/litepal/tablemanager/model/ColumnModel;->getDefaultValue()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "AssociationUpdater"

    invoke-static {v6, v5}, Lorg/litepal/util/LitePalLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    invoke-virtual {v2}, Lorg/litepal/tablemanager/model/ColumnModel;->isNullable()Z

    move-result v5

    invoke-virtual {v4}, Lorg/litepal/tablemanager/model/ColumnModel;->isNullable()Z

    move-result v6

    if-ne v5, v6, :cond_4

    .line 11
    invoke-virtual {v2}, Lorg/litepal/tablemanager/model/ColumnModel;->getDefaultValue()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4}, Lorg/litepal/tablemanager/model/ColumnModel;->getDefaultValue()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 12
    invoke-virtual {v2}, Lorg/litepal/tablemanager/model/ColumnModel;->hasIndex()Z

    move-result v5

    invoke-virtual {v4}, Lorg/litepal/tablemanager/model/ColumnModel;->hasIndex()Z

    move-result v6

    if-ne v5, v6, :cond_4

    .line 13
    invoke-virtual {v2}, Lorg/litepal/tablemanager/model/ColumnModel;->isUnique()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {v4}, Lorg/litepal/tablemanager/model/ColumnModel;->isUnique()Z

    move-result v4

    if-nez v4, :cond_1

    :cond_4
    const/4 v4, 0x1

    .line 14
    iput-boolean v4, p0, Lorg/litepal/tablemanager/Upgrader;->hasConstraintChanged:Z

    goto/16 :goto_0

    :cond_5
    return-object v0
.end method

.method private findColumnsToAdd()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/litepal/tablemanager/model/ColumnModel;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    iget-object v1, p0, Lorg/litepal/tablemanager/Upgrader;->mTableModel:Lorg/litepal/tablemanager/model/TableModel;

    invoke-virtual {v1}, Lorg/litepal/tablemanager/model/TableModel;->getColumnModels()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/litepal/tablemanager/model/ColumnModel;

    .line 3
    invoke-virtual {v2}, Lorg/litepal/tablemanager/model/ColumnModel;->getColumnName()Ljava/lang/String;

    move-result-object v3

    .line 4
    iget-object v4, p0, Lorg/litepal/tablemanager/Upgrader;->mTableModelDB:Lorg/litepal/tablemanager/model/TableModel;

    invoke-virtual {v4, v3}, Lorg/litepal/tablemanager/model/TableModel;->containsColumn(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 5
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method private findColumnsToRemove()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/litepal/tablemanager/Upgrader;->mTableModel:Lorg/litepal/tablemanager/model/TableModel;

    invoke-virtual {v0}, Lorg/litepal/tablemanager/model/TableModel;->getTableName()Ljava/lang/String;

    move-result-object v0

    .line 2
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 3
    iget-object v2, p0, Lorg/litepal/tablemanager/Upgrader;->mTableModelDB:Lorg/litepal/tablemanager/model/TableModel;

    invoke-virtual {v2}, Lorg/litepal/tablemanager/model/TableModel;->getColumnModels()Ljava/util/Collection;

    move-result-object v2

    .line 4
    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/litepal/tablemanager/model/ColumnModel;

    .line 5
    invoke-virtual {v3}, Lorg/litepal/tablemanager/model/ColumnModel;->getColumnName()Ljava/lang/String;

    move-result-object v3

    .line 6
    invoke-direct {p0, v3}, Lorg/litepal/tablemanager/Upgrader;->isNeedToRemove(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 7
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 8
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "remove columns from "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " >> "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "AssociationUpdater"

    invoke-static {v2, v0}, Lorg/litepal/util/LitePalLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1
.end method

.method private generateAddColumnSQLs(Lorg/litepal/tablemanager/model/ColumnModel;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/litepal/tablemanager/model/ColumnModel;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    iget-object v1, p0, Lorg/litepal/tablemanager/Upgrader;->mTableModel:Lorg/litepal/tablemanager/model/TableModel;

    invoke-virtual {v1}, Lorg/litepal/tablemanager/model/TableModel;->getTableName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, p1}, Lorg/litepal/tablemanager/AssociationCreator;->generateAddColumnSQL(Ljava/lang/String;Lorg/litepal/tablemanager/model/ColumnModel;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3
    invoke-virtual {p1}, Lorg/litepal/tablemanager/model/ColumnModel;->hasIndex()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4
    iget-object v1, p0, Lorg/litepal/tablemanager/Upgrader;->mTableModel:Lorg/litepal/tablemanager/model/TableModel;

    invoke-virtual {v1}, Lorg/litepal/tablemanager/model/TableModel;->getTableName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, p1}, Lorg/litepal/tablemanager/AssociationCreator;->generateCreateIndexSQL(Ljava/lang/String;Lorg/litepal/tablemanager/model/ColumnModel;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-object v0
.end method

.method private generateAddForeignKeySQL()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    iget-object v1, p0, Lorg/litepal/tablemanager/Upgrader;->mTableModel:Lorg/litepal/tablemanager/model/TableModel;

    invoke-virtual {p0, v1}, Lorg/litepal/tablemanager/AssociationUpdater;->getForeignKeyColumns(Lorg/litepal/tablemanager/model/TableModel;)Ljava/util/List;

    move-result-object v1

    .line 3
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 4
    iget-object v3, p0, Lorg/litepal/tablemanager/Upgrader;->mTableModel:Lorg/litepal/tablemanager/model/TableModel;

    invoke-virtual {v3, v2}, Lorg/litepal/tablemanager/model/TableModel;->containsColumn(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 5
    new-instance v3, Lorg/litepal/tablemanager/model/ColumnModel;

    invoke-direct {v3}, Lorg/litepal/tablemanager/model/ColumnModel;-><init>()V

    .line 6
    invoke-virtual {v3, v2}, Lorg/litepal/tablemanager/model/ColumnModel;->setColumnName(Ljava/lang/String;)V

    const-string v2, "integer"

    .line 7
    invoke-virtual {v3, v2}, Lorg/litepal/tablemanager/model/ColumnModel;->setColumnType(Ljava/lang/String;)V

    .line 8
    iget-object v2, p0, Lorg/litepal/tablemanager/Upgrader;->mTableModel:Lorg/litepal/tablemanager/model/TableModel;

    invoke-virtual {v2}, Lorg/litepal/tablemanager/model/TableModel;->getTableName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2, v3}, Lorg/litepal/tablemanager/AssociationCreator;->generateAddColumnSQL(Ljava/lang/String;Lorg/litepal/tablemanager/model/ColumnModel;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method private getAddColumnSQLs(Ljava/util/List;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/litepal/tablemanager/model/ColumnModel;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/litepal/tablemanager/model/ColumnModel;

    .line 3
    invoke-direct {p0, v1}, Lorg/litepal/tablemanager/Upgrader;->generateAddColumnSQLs(Lorg/litepal/tablemanager/model/ColumnModel;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private getChangeColumnsConstraintsSQL()Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/litepal/tablemanager/Upgrader;->mTableModel:Lorg/litepal/tablemanager/model/TableModel;

    invoke-virtual {v0}, Lorg/litepal/tablemanager/model/TableModel;->getTableName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/litepal/tablemanager/AssociationUpdater;->generateAlterToTempTableSQL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lorg/litepal/tablemanager/Upgrader;->mTableModel:Lorg/litepal/tablemanager/model/TableModel;

    invoke-virtual {p0, v1}, Lorg/litepal/tablemanager/Creator;->generateCreateTableSQL(Lorg/litepal/tablemanager/model/TableModel;)Ljava/lang/String;

    move-result-object v1

    .line 3
    invoke-direct {p0}, Lorg/litepal/tablemanager/Upgrader;->generateAddForeignKeySQL()Ljava/util/List;

    move-result-object v2

    .line 4
    iget-object v3, p0, Lorg/litepal/tablemanager/Upgrader;->mTableModelDB:Lorg/litepal/tablemanager/model/TableModel;

    invoke-virtual {p0, v3}, Lorg/litepal/tablemanager/AssociationUpdater;->generateDataMigrationSQL(Lorg/litepal/tablemanager/model/TableModel;)Ljava/lang/String;

    move-result-object v3

    .line 5
    iget-object v4, p0, Lorg/litepal/tablemanager/Upgrader;->mTableModel:Lorg/litepal/tablemanager/model/TableModel;

    invoke-virtual {v4}, Lorg/litepal/tablemanager/model/TableModel;->getTableName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lorg/litepal/tablemanager/AssociationUpdater;->generateDropTempTableSQL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 6
    iget-object v5, p0, Lorg/litepal/tablemanager/Upgrader;->mTableModel:Lorg/litepal/tablemanager/model/TableModel;

    invoke-virtual {p0, v5}, Lorg/litepal/tablemanager/Creator;->generateCreateIndexSQLs(Lorg/litepal/tablemanager/model/TableModel;)Ljava/util/List;

    move-result-object v5

    .line 7
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 8
    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 9
    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 10
    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 11
    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 12
    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 13
    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    const-string v0, "AssociationUpdater"

    const-string v1, "generateChangeConstraintSQL >> "

    .line 14
    invoke-static {v0, v1}, Lorg/litepal/util/LitePalLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 16
    invoke-static {v0, v2}, Lorg/litepal/util/LitePalLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string v1, "<< generateChangeConstraintSQL"

    .line 17
    invoke-static {v0, v1}, Lorg/litepal/util/LitePalLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object v6
.end method

.method private hasNewUniqueOrNotNullColumn()Z
    .locals 5

    .line 1
    iget-object v0, p0, Lorg/litepal/tablemanager/Upgrader;->mTableModel:Lorg/litepal/tablemanager/model/TableModel;

    invoke-virtual {v0}, Lorg/litepal/tablemanager/model/TableModel;->getColumnModels()Ljava/util/Collection;

    move-result-object v0

    .line 2
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/litepal/tablemanager/model/ColumnModel;

    .line 3
    invoke-virtual {v1}, Lorg/litepal/tablemanager/model/ColumnModel;->isIdColumn()Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    .line 4
    :cond_1
    iget-object v2, p0, Lorg/litepal/tablemanager/Upgrader;->mTableModelDB:Lorg/litepal/tablemanager/model/TableModel;

    invoke-virtual {v1}, Lorg/litepal/tablemanager/model/ColumnModel;->getColumnName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/litepal/tablemanager/model/TableModel;->getColumnModelByName(Ljava/lang/String;)Lorg/litepal/tablemanager/model/ColumnModel;

    move-result-object v2

    .line 5
    invoke-virtual {v1}, Lorg/litepal/tablemanager/model/ColumnModel;->isUnique()Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_3

    if-eqz v2, :cond_2

    .line 6
    invoke-virtual {v2}, Lorg/litepal/tablemanager/model/ColumnModel;->isUnique()Z

    move-result v3

    if-nez v3, :cond_3

    :cond_2
    return v4

    :cond_3
    if-eqz v2, :cond_0

    .line 7
    invoke-virtual {v1}, Lorg/litepal/tablemanager/model/ColumnModel;->isNullable()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v2}, Lorg/litepal/tablemanager/model/ColumnModel;->isNullable()Z

    move-result v1

    if-eqz v1, :cond_0

    return v4

    :cond_4
    const/4 v0, 0x0

    return v0
.end method

.method private isNeedToRemove(Ljava/lang/String;)Z
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Lorg/litepal/tablemanager/Upgrader;->isRemovedFromClass(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lorg/litepal/LitePalBase;->isIdColumn(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/litepal/tablemanager/Upgrader;->mTableModel:Lorg/litepal/tablemanager/model/TableModel;

    .line 2
    invoke-virtual {p0, v0, p1}, Lorg/litepal/tablemanager/AssociationUpdater;->isForeignKeyColumn(Lorg/litepal/tablemanager/model/TableModel;Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private isRemovedFromClass(Ljava/lang/String;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/litepal/tablemanager/Upgrader;->mTableModel:Lorg/litepal/tablemanager/model/TableModel;

    invoke-virtual {v0, p1}, Lorg/litepal/tablemanager/model/TableModel;->containsColumn(Ljava/lang/String;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    return p1
.end method

.method private removeColumns(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "do removeColumns "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AssociationUpdater"

    invoke-static {v1, v0}, Lorg/litepal/util/LitePalLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lorg/litepal/tablemanager/Upgrader;->mTableModel:Lorg/litepal/tablemanager/model/TableModel;

    invoke-virtual {v0}, Lorg/litepal/tablemanager/model/TableModel;->getTableName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lorg/litepal/tablemanager/AssociationUpdater;->removeColumns(Ljava/util/Collection;Ljava/lang/String;)V

    .line 3
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 4
    iget-object v1, p0, Lorg/litepal/tablemanager/Upgrader;->mTableModelDB:Lorg/litepal/tablemanager/model/TableModel;

    invoke-virtual {v1, v0}, Lorg/litepal/tablemanager/model/TableModel;->removeColumnModelByName(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private upgradeTable()V
    .locals 6

    .line 1
    invoke-direct {p0}, Lorg/litepal/tablemanager/Upgrader;->hasNewUniqueOrNotNullColumn()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2
    iget-object v0, p0, Lorg/litepal/tablemanager/Upgrader;->mTableModel:Lorg/litepal/tablemanager/model/TableModel;

    iget-object v1, p0, Lorg/litepal/tablemanager/AssociationUpdater;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Lorg/litepal/tablemanager/Creator;->createOrUpgradeTable(Lorg/litepal/tablemanager/model/TableModel;Landroid/database/sqlite/SQLiteDatabase;Z)V

    .line 3
    iget-object v0, p0, Lorg/litepal/tablemanager/Upgrader;->mTableModel:Lorg/litepal/tablemanager/model/TableModel;

    invoke-virtual {v0}, Lorg/litepal/tablemanager/model/TableModel;->getClassName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/litepal/LitePalBase;->getAssociationInfo(Ljava/lang/String;)Ljava/util/Collection;

    move-result-object v0

    .line 4
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/litepal/crud/model/AssociationsInfo;

    .line 5
    invoke-virtual {v1}, Lorg/litepal/crud/model/AssociationsInfo;->getAssociationType()I

    move-result v3

    const/4 v4, 0x2

    if-eq v3, v4, :cond_1

    .line 6
    invoke-virtual {v1}, Lorg/litepal/crud/model/AssociationsInfo;->getAssociationType()I

    move-result v3

    if-ne v3, v2, :cond_0

    .line 7
    :cond_1
    invoke-virtual {v1}, Lorg/litepal/crud/model/AssociationsInfo;->getClassHoldsForeignKey()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lorg/litepal/tablemanager/Upgrader;->mTableModel:Lorg/litepal/tablemanager/model/TableModel;

    invoke-virtual {v4}, Lorg/litepal/tablemanager/model/TableModel;->getClassName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 8
    invoke-virtual {v1}, Lorg/litepal/crud/model/AssociationsInfo;->getAssociatedClassName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/litepal/util/DBUtility;->getTableNameByClassName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 9
    iget-object v3, p0, Lorg/litepal/tablemanager/Upgrader;->mTableModel:Lorg/litepal/tablemanager/model/TableModel;

    invoke-virtual {v3}, Lorg/litepal/tablemanager/model/TableModel;->getTableName()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lorg/litepal/tablemanager/Upgrader;->mTableModel:Lorg/litepal/tablemanager/model/TableModel;

    invoke-virtual {v4}, Lorg/litepal/tablemanager/model/TableModel;->getTableName()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lorg/litepal/tablemanager/AssociationUpdater;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {p0, v3, v1, v4, v5}, Lorg/litepal/tablemanager/AssociationCreator;->addForeignKeyColumn(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;)V

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    .line 10
    iput-boolean v0, p0, Lorg/litepal/tablemanager/Upgrader;->hasConstraintChanged:Z

    .line 11
    invoke-direct {p0}, Lorg/litepal/tablemanager/Upgrader;->findColumnsToRemove()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/litepal/tablemanager/Upgrader;->removeColumns(Ljava/util/List;)V

    .line 12
    invoke-direct {p0}, Lorg/litepal/tablemanager/Upgrader;->findColumnsToAdd()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/litepal/tablemanager/Upgrader;->addColumns(Ljava/util/List;)V

    .line 13
    invoke-direct {p0}, Lorg/litepal/tablemanager/Upgrader;->findColumnTypesToChange()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/litepal/tablemanager/Upgrader;->changeColumnsType(Ljava/util/List;)V

    .line 14
    invoke-direct {p0}, Lorg/litepal/tablemanager/Upgrader;->changeColumnsConstraints()V

    :cond_3
    return-void
.end method


# virtual methods
.method public createOrUpgradeTable(Landroid/database/sqlite/SQLiteDatabase;Z)V
    .locals 1

    .line 1
    iput-object p1, p0, Lorg/litepal/tablemanager/AssociationUpdater;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    .line 2
    invoke-virtual {p0}, Lorg/litepal/tablemanager/Generator;->getAllTableModels()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/litepal/tablemanager/model/TableModel;

    .line 3
    iput-object p2, p0, Lorg/litepal/tablemanager/Upgrader;->mTableModel:Lorg/litepal/tablemanager/model/TableModel;

    .line 4
    invoke-virtual {p2}, Lorg/litepal/tablemanager/model/TableModel;->getTableName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lorg/litepal/tablemanager/AssociationUpdater;->getTableModelFromDB(Ljava/lang/String;)Lorg/litepal/tablemanager/model/TableModel;

    move-result-object p2

    iput-object p2, p0, Lorg/litepal/tablemanager/Upgrader;->mTableModelDB:Lorg/litepal/tablemanager/model/TableModel;

    const-string p2, "createOrUpgradeTable: model is "

    .line 5
    invoke-static {p2}, Lcom/apk/goto;->super(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget-object v0, p0, Lorg/litepal/tablemanager/Upgrader;->mTableModel:Lorg/litepal/tablemanager/model/TableModel;

    invoke-virtual {v0}, Lorg/litepal/tablemanager/model/TableModel;->getTableName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "AssociationUpdater"

    invoke-static {v0, p2}, Lorg/litepal/util/LitePalLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    invoke-direct {p0}, Lorg/litepal/tablemanager/Upgrader;->upgradeTable()V

    goto :goto_0

    :cond_0
    return-void
.end method
