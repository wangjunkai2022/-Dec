.class public abstract Lorg/litepal/tablemanager/Generator;
.super Lorg/litepal/LitePalBase;
.source "Generator.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "Generator"


# instance fields
.field public mAllRelationModels:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Lorg/litepal/tablemanager/model/AssociationsModel;",
            ">;"
        }
    .end annotation
.end field

.field public mTableModels:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Lorg/litepal/tablemanager/model/TableModel;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lorg/litepal/LitePalBase;-><init>()V

    return-void
.end method

.method public static addAssociation(Landroid/database/sqlite/SQLiteDatabase;Z)V
    .locals 1

    .line 1
    new-instance v0, Lorg/litepal/tablemanager/Creator;

    invoke-direct {v0}, Lorg/litepal/tablemanager/Creator;-><init>()V

    .line 2
    invoke-virtual {v0, p0, p1}, Lorg/litepal/tablemanager/AssociationCreator;->addOrUpdateAssociation(Landroid/database/sqlite/SQLiteDatabase;Z)V

    return-void
.end method

.method private canUseCache()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lorg/litepal/tablemanager/Generator;->mTableModels:Ljava/util/Collection;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v0

    invoke-static {}, Lorg/litepal/parser/LitePalAttr;->getInstance()Lorg/litepal/parser/LitePalAttr;

    move-result-object v2

    invoke-virtual {v2}, Lorg/litepal/parser/LitePalAttr;->getClassNames()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ne v0, v2, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public static create(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    const/4 v0, 0x1

    .line 3
    invoke-static {p0, v0}, Lorg/litepal/tablemanager/Generator;->create(Landroid/database/sqlite/SQLiteDatabase;Z)V

    .line 4
    invoke-static {p0, v0}, Lorg/litepal/tablemanager/Generator;->addAssociation(Landroid/database/sqlite/SQLiteDatabase;Z)V

    return-void
.end method

.method public static create(Landroid/database/sqlite/SQLiteDatabase;Z)V
    .locals 1

    .line 1
    new-instance v0, Lorg/litepal/tablemanager/Creator;

    invoke-direct {v0}, Lorg/litepal/tablemanager/Creator;-><init>()V

    .line 2
    invoke-virtual {v0, p0, p1}, Lorg/litepal/tablemanager/Creator;->createOrUpgradeTable(Landroid/database/sqlite/SQLiteDatabase;Z)V

    return-void
.end method

.method public static drop(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2

    .line 1
    new-instance v0, Lorg/litepal/tablemanager/Dropper;

    invoke-direct {v0}, Lorg/litepal/tablemanager/Dropper;-><init>()V

    const/4 v1, 0x0

    .line 2
    invoke-virtual {v0, p0, v1}, Lorg/litepal/tablemanager/Dropper;->createOrUpgradeTable(Landroid/database/sqlite/SQLiteDatabase;Z)V

    return-void
.end method

.method public static updateAssociations(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2

    .line 1
    new-instance v0, Lorg/litepal/tablemanager/Upgrader;

    invoke-direct {v0}, Lorg/litepal/tablemanager/Upgrader;-><init>()V

    const/4 v1, 0x0

    .line 2
    invoke-virtual {v0, p0, v1}, Lorg/litepal/tablemanager/AssociationUpdater;->addOrUpdateAssociation(Landroid/database/sqlite/SQLiteDatabase;Z)V

    return-void
.end method

.method public static upgrade(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    .line 1
    invoke-static {p0}, Lorg/litepal/tablemanager/Generator;->drop(Landroid/database/sqlite/SQLiteDatabase;)V

    const/4 v0, 0x0

    .line 2
    invoke-static {p0, v0}, Lorg/litepal/tablemanager/Generator;->create(Landroid/database/sqlite/SQLiteDatabase;Z)V

    .line 3
    invoke-static {p0}, Lorg/litepal/tablemanager/Generator;->updateAssociations(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 4
    invoke-static {p0}, Lorg/litepal/tablemanager/Generator;->upgradeTables(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 5
    invoke-static {p0, v0}, Lorg/litepal/tablemanager/Generator;->addAssociation(Landroid/database/sqlite/SQLiteDatabase;Z)V

    return-void
.end method

.method public static upgradeTables(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2

    .line 1
    new-instance v0, Lorg/litepal/tablemanager/Upgrader;

    invoke-direct {v0}, Lorg/litepal/tablemanager/Upgrader;-><init>()V

    const/4 v1, 0x0

    .line 2
    invoke-virtual {v0, p0, v1}, Lorg/litepal/tablemanager/Upgrader;->createOrUpgradeTable(Landroid/database/sqlite/SQLiteDatabase;Z)V

    return-void
.end method


# virtual methods
.method public abstract addOrUpdateAssociation(Landroid/database/sqlite/SQLiteDatabase;Z)V
.end method

.method public abstract createOrUpgradeTable(Landroid/database/sqlite/SQLiteDatabase;Z)V
.end method

.method public execute(Ljava/util/List;Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/database/sqlite/SQLiteDatabase;",
            ")V"
        }
    .end annotation

    const-string v0, ""

    if-eqz p1, :cond_1

    .line 1
    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 2
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 3
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 4
    invoke-static {v1}, Lorg/litepal/util/BaseUtility;->changeCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 5
    invoke-virtual {p2, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 6
    :catch_0
    new-instance p1, Lorg/litepal/exceptions/DatabaseGenerateException;

    const-string p2, "An exception that indicates there was an error with SQL parsing or execution. "

    invoke-static {p2, v0}, Lcom/apk/goto;->case(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/litepal/exceptions/DatabaseGenerateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    return-void
.end method

.method public getAllAssociations()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lorg/litepal/tablemanager/model/AssociationsModel;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/litepal/tablemanager/Generator;->mAllRelationModels:Ljava/util/Collection;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    :cond_0
    invoke-static {}, Lorg/litepal/parser/LitePalAttr;->getInstance()Lorg/litepal/parser/LitePalAttr;

    move-result-object v0

    invoke-virtual {v0}, Lorg/litepal/parser/LitePalAttr;->getClassNames()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/litepal/LitePalBase;->getAssociations(Ljava/util/List;)Ljava/util/Collection;

    move-result-object v0

    iput-object v0, p0, Lorg/litepal/tablemanager/Generator;->mAllRelationModels:Ljava/util/Collection;

    .line 3
    :cond_1
    iget-object v0, p0, Lorg/litepal/tablemanager/Generator;->mAllRelationModels:Ljava/util/Collection;

    return-object v0
.end method

.method public getAllTableModels()Ljava/util/Collection;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lorg/litepal/tablemanager/model/TableModel;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/litepal/tablemanager/Generator;->mTableModels:Ljava/util/Collection;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/litepal/tablemanager/Generator;->mTableModels:Ljava/util/Collection;

    .line 3
    :cond_0
    invoke-direct {p0}, Lorg/litepal/tablemanager/Generator;->canUseCache()Z

    move-result v0

    if-nez v0, :cond_1

    .line 4
    iget-object v0, p0, Lorg/litepal/tablemanager/Generator;->mTableModels:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->clear()V

    .line 5
    invoke-static {}, Lorg/litepal/parser/LitePalAttr;->getInstance()Lorg/litepal/parser/LitePalAttr;

    move-result-object v0

    invoke-virtual {v0}, Lorg/litepal/parser/LitePalAttr;->getClassNames()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 6
    iget-object v2, p0, Lorg/litepal/tablemanager/Generator;->mTableModels:Ljava/util/Collection;

    invoke-virtual {p0, v1}, Lorg/litepal/LitePalBase;->getTableModel(Ljava/lang/String;)Lorg/litepal/tablemanager/model/TableModel;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 7
    :cond_1
    iget-object v0, p0, Lorg/litepal/tablemanager/Generator;->mTableModels:Ljava/util/Collection;

    return-object v0
.end method
