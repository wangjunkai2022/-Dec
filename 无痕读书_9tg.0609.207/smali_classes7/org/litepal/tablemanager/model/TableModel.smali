.class public Lorg/litepal/tablemanager/model/TableModel;
.super Ljava/lang/Object;
.source "TableModel.java"


# instance fields
.field public className:Ljava/lang/String;

.field public columnModelMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/litepal/tablemanager/model/ColumnModel;",
            ">;"
        }
    .end annotation
.end field

.field public tableName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/litepal/tablemanager/model/TableModel;->columnModelMap:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public addColumnModel(Lorg/litepal/tablemanager/model/ColumnModel;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/litepal/tablemanager/model/TableModel;->columnModelMap:Ljava/util/Map;

    invoke-virtual {p1}, Lorg/litepal/tablemanager/model/ColumnModel;->getColumnName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/litepal/util/BaseUtility;->changeCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public containsColumn(Ljava/lang/String;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/litepal/tablemanager/model/TableModel;->columnModelMap:Ljava/util/Map;

    invoke-static {p1}, Lorg/litepal/util/BaseUtility;->changeCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public getClassName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/litepal/tablemanager/model/TableModel;->className:Ljava/lang/String;

    return-object v0
.end method

.method public getColumnModelByName(Ljava/lang/String;)Lorg/litepal/tablemanager/model/ColumnModel;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/litepal/tablemanager/model/TableModel;->columnModelMap:Ljava/util/Map;

    invoke-static {p1}, Lorg/litepal/util/BaseUtility;->changeCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/litepal/tablemanager/model/ColumnModel;

    return-object p1
.end method

.method public getColumnModels()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lorg/litepal/tablemanager/model/ColumnModel;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/litepal/tablemanager/model/TableModel;->columnModelMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public getTableName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/litepal/tablemanager/model/TableModel;->tableName:Ljava/lang/String;

    return-object v0
.end method

.method public removeColumnModelByName(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/litepal/tablemanager/model/TableModel;->columnModelMap:Ljava/util/Map;

    invoke-static {p1}, Lorg/litepal/util/BaseUtility;->changeCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setClassName(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/litepal/tablemanager/model/TableModel;->className:Ljava/lang/String;

    return-void
.end method

.method public setTableName(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/litepal/tablemanager/model/TableModel;->tableName:Ljava/lang/String;

    return-void
.end method
