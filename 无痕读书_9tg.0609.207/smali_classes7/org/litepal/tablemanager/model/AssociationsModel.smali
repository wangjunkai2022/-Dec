.class public Lorg/litepal/tablemanager/model/AssociationsModel;
.super Ljava/lang/Object;
.source "AssociationsModel.java"


# instance fields
.field public associatedTableName:Ljava/lang/String;

.field public associationType:I

.field public tableHoldsForeignKey:Ljava/lang/String;

.field public tableName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .line 1
    instance-of v0, p1, Lorg/litepal/tablemanager/model/AssociationsModel;

    if-eqz v0, :cond_1

    .line 2
    check-cast p1, Lorg/litepal/tablemanager/model/AssociationsModel;

    .line 3
    invoke-virtual {p1}, Lorg/litepal/tablemanager/model/AssociationsModel;->getTableName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lorg/litepal/tablemanager/model/AssociationsModel;->getAssociatedTableName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {p1}, Lorg/litepal/tablemanager/model/AssociationsModel;->getAssociationType()I

    move-result v0

    iget v1, p0, Lorg/litepal/tablemanager/model/AssociationsModel;->associationType:I

    if-ne v0, v1, :cond_1

    .line 5
    invoke-virtual {p1}, Lorg/litepal/tablemanager/model/AssociationsModel;->getTableHoldsForeignKey()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/litepal/tablemanager/model/AssociationsModel;->tableHoldsForeignKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6
    invoke-virtual {p1}, Lorg/litepal/tablemanager/model/AssociationsModel;->getTableName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/litepal/tablemanager/model/AssociationsModel;->tableName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 7
    invoke-virtual {p1}, Lorg/litepal/tablemanager/model/AssociationsModel;->getAssociatedTableName()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lorg/litepal/tablemanager/model/AssociationsModel;->associatedTableName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 8
    invoke-virtual {p1}, Lorg/litepal/tablemanager/model/AssociationsModel;->getTableHoldsForeignKey()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lorg/litepal/tablemanager/model/AssociationsModel;->tableHoldsForeignKey:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return v1

    .line 9
    :cond_0
    invoke-virtual {p1}, Lorg/litepal/tablemanager/model/AssociationsModel;->getTableName()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lorg/litepal/tablemanager/model/AssociationsModel;->associatedTableName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 10
    invoke-virtual {p1}, Lorg/litepal/tablemanager/model/AssociationsModel;->getAssociatedTableName()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lorg/litepal/tablemanager/model/AssociationsModel;->tableName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 11
    invoke-virtual {p1}, Lorg/litepal/tablemanager/model/AssociationsModel;->getTableHoldsForeignKey()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lorg/litepal/tablemanager/model/AssociationsModel;->tableHoldsForeignKey:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    return v1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public getAssociatedTableName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/litepal/tablemanager/model/AssociationsModel;->associatedTableName:Ljava/lang/String;

    return-object v0
.end method

.method public getAssociationType()I
    .locals 1

    .line 1
    iget v0, p0, Lorg/litepal/tablemanager/model/AssociationsModel;->associationType:I

    return v0
.end method

.method public getTableHoldsForeignKey()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/litepal/tablemanager/model/AssociationsModel;->tableHoldsForeignKey:Ljava/lang/String;

    return-object v0
.end method

.method public getTableName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/litepal/tablemanager/model/AssociationsModel;->tableName:Ljava/lang/String;

    return-object v0
.end method

.method public setAssociatedTableName(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/litepal/tablemanager/model/AssociationsModel;->associatedTableName:Ljava/lang/String;

    return-void
.end method

.method public setAssociationType(I)V
    .locals 0

    .line 1
    iput p1, p0, Lorg/litepal/tablemanager/model/AssociationsModel;->associationType:I

    return-void
.end method

.method public setTableHoldsForeignKey(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/litepal/tablemanager/model/AssociationsModel;->tableHoldsForeignKey:Ljava/lang/String;

    return-void
.end method

.method public setTableName(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/litepal/tablemanager/model/AssociationsModel;->tableName:Ljava/lang/String;

    return-void
.end method
