.class public abstract Lorg/litepal/crud/AssociationsAnalyzer;
.super Lorg/litepal/crud/DataHandler;
.source "AssociationsAnalyzer.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lorg/litepal/crud/DataHandler;-><init>()V

    return-void
.end method

.method private getForeignKeyName(Lorg/litepal/crud/model/AssociationsInfo;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-virtual {p1}, Lorg/litepal/crud/model/AssociationsInfo;->getAssociatedClassName()Ljava/lang/String;

    move-result-object p1

    .line 2
    invoke-static {p1}, Lorg/litepal/util/DBUtility;->getTableNameByClassName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/litepal/LitePalBase;->getForeignKeyColumnName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public buildBidirectionalAssociations(Lorg/litepal/crud/LitePalSupport;Lorg/litepal/crud/LitePalSupport;Lorg/litepal/crud/model/AssociationsInfo;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/NoSuchMethodException;,
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/reflect/InvocationTargetException;
        }
    .end annotation

    .line 1
    invoke-virtual {p3}, Lorg/litepal/crud/model/AssociationsInfo;->getAssociateSelfFromOtherModel()Ljava/lang/reflect/Field;

    move-result-object p3

    invoke-virtual {p0, p2, p3, p1}, Lorg/litepal/crud/DataHandler;->setFieldValue(Lorg/litepal/crud/LitePalSupport;Ljava/lang/reflect/Field;Ljava/lang/Object;)V

    return-void
.end method

.method public checkAssociatedModelCollection(Ljava/util/Collection;Ljava/lang/reflect/Field;)Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lorg/litepal/crud/LitePalSupport;",
            ">;",
            "Ljava/lang/reflect/Field;",
            ")",
            "Ljava/util/Collection<",
            "Lorg/litepal/crud/LitePalSupport;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-virtual {p2}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/litepal/LitePalBase;->isList(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p2}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p0, p2}, Lorg/litepal/LitePalBase;->isSet(Ljava/lang/Class;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 4
    new-instance p2, Ljava/util/HashSet;

    invoke-direct {p2}, Ljava/util/HashSet;-><init>()V

    :goto_0
    if-eqz p1, :cond_1

    .line 5
    invoke-interface {p2, p1}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    :cond_1
    return-object p2

    .line 6
    :cond_2
    new-instance p1, Lorg/litepal/exceptions/LitePalSupportException;

    const-string p2, "The field to declare many2one or many2many associations should be List or Set."

    invoke-direct {p1, p2}, Lorg/litepal/exceptions/LitePalSupportException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public dealsAssociationsOnTheSideWithoutFK(Lorg/litepal/crud/LitePalSupport;Lorg/litepal/crud/LitePalSupport;)V
    .locals 3

    if-eqz p2, :cond_1

    .line 1
    invoke-virtual {p2}, Lorg/litepal/crud/LitePalSupport;->isSaved()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p2}, Lorg/litepal/crud/LitePalSupport;->getTableName()Ljava/lang/String;

    move-result-object v0

    .line 3
    invoke-virtual {p2}, Lorg/litepal/crud/LitePalSupport;->getBaseObjId()J

    move-result-wide v1

    .line 4
    invoke-virtual {p1, v0, v1, v2}, Lorg/litepal/crud/LitePalSupport;->addAssociatedModelWithFK(Ljava/lang/String;J)V

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {p1}, Lorg/litepal/crud/LitePalSupport;->isSaved()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6
    invoke-virtual {p1}, Lorg/litepal/crud/LitePalSupport;->getTableName()Ljava/lang/String;

    move-result-object v0

    .line 7
    invoke-virtual {p1}, Lorg/litepal/crud/LitePalSupport;->getBaseObjId()J

    move-result-wide v1

    .line 8
    invoke-virtual {p2, v0, v1, v2}, Lorg/litepal/crud/LitePalSupport;->addAssociatedModelWithoutFK(Ljava/lang/String;J)V

    :cond_1
    :goto_0
    return-void
.end method

.method public getReverseAssociatedModels(Lorg/litepal/crud/LitePalSupport;Lorg/litepal/crud/model/AssociationsInfo;)Ljava/util/Collection;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/litepal/crud/LitePalSupport;",
            "Lorg/litepal/crud/model/AssociationsInfo;",
            ")",
            "Ljava/util/Collection<",
            "Lorg/litepal/crud/LitePalSupport;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/NoSuchMethodException;,
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/reflect/InvocationTargetException;
        }
    .end annotation

    .line 1
    invoke-virtual {p2}, Lorg/litepal/crud/model/AssociationsInfo;->getAssociateSelfFromOtherModel()Ljava/lang/reflect/Field;

    move-result-object p2

    .line 2
    invoke-virtual {p0, p1, p2}, Lorg/litepal/crud/DataHandler;->getFieldValue(Lorg/litepal/crud/LitePalSupport;Ljava/lang/reflect/Field;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Collection;

    return-object p1
.end method

.method public mightClearFKValue(Lorg/litepal/crud/LitePalSupport;Lorg/litepal/crud/model/AssociationsInfo;)V
    .locals 0

    .line 1
    invoke-direct {p0, p2}, Lorg/litepal/crud/AssociationsAnalyzer;->getForeignKeyName(Lorg/litepal/crud/model/AssociationsInfo;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/litepal/crud/LitePalSupport;->addFKNameToClearSelf(Ljava/lang/String;)V

    return-void
.end method

.method public setReverseAssociatedModels(Lorg/litepal/crud/LitePalSupport;Lorg/litepal/crud/model/AssociationsInfo;Ljava/util/Collection;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/litepal/crud/LitePalSupport;",
            "Lorg/litepal/crud/model/AssociationsInfo;",
            "Ljava/util/Collection<",
            "Lorg/litepal/crud/LitePalSupport;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/NoSuchMethodException;,
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/reflect/InvocationTargetException;
        }
    .end annotation

    .line 1
    invoke-virtual {p2}, Lorg/litepal/crud/model/AssociationsInfo;->getAssociateSelfFromOtherModel()Ljava/lang/reflect/Field;

    move-result-object p2

    invoke-virtual {p0, p1, p2, p3}, Lorg/litepal/crud/DataHandler;->setFieldValue(Lorg/litepal/crud/LitePalSupport;Ljava/lang/reflect/Field;Ljava/lang/Object;)V

    return-void
.end method
