.class public Lorg/litepal/crud/Many2OneAnalyzer;
.super Lorg/litepal/crud/AssociationsAnalyzer;
.source "Many2OneAnalyzer.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lorg/litepal/crud/AssociationsAnalyzer;-><init>()V

    return-void
.end method

.method private analyzeManySide(Lorg/litepal/crud/LitePalSupport;Lorg/litepal/crud/model/AssociationsInfo;)V
    .locals 3
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
    invoke-virtual {p0, p1, p2}, Lorg/litepal/crud/DataHandler;->getAssociatedModel(Lorg/litepal/crud/LitePalSupport;Lorg/litepal/crud/model/AssociationsInfo;)Lorg/litepal/crud/LitePalSupport;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0, v0, p2}, Lorg/litepal/crud/AssociationsAnalyzer;->getReverseAssociatedModels(Lorg/litepal/crud/LitePalSupport;Lorg/litepal/crud/model/AssociationsInfo;)Ljava/util/Collection;

    move-result-object v1

    .line 3
    invoke-virtual {p2}, Lorg/litepal/crud/model/AssociationsInfo;->getAssociateSelfFromOtherModel()Ljava/lang/reflect/Field;

    move-result-object v2

    .line 4
    invoke-virtual {p0, v1, v2}, Lorg/litepal/crud/AssociationsAnalyzer;->checkAssociatedModelCollection(Ljava/util/Collection;Ljava/lang/reflect/Field;)Ljava/util/Collection;

    move-result-object v1

    .line 5
    invoke-virtual {p0, v0, p2, v1}, Lorg/litepal/crud/AssociationsAnalyzer;->setReverseAssociatedModels(Lorg/litepal/crud/LitePalSupport;Lorg/litepal/crud/model/AssociationsInfo;Ljava/util/Collection;)V

    .line 6
    invoke-direct {p0, v1, p1, v0}, Lorg/litepal/crud/Many2OneAnalyzer;->dealAssociatedModelOnManySide(Ljava/util/Collection;Lorg/litepal/crud/LitePalSupport;Lorg/litepal/crud/LitePalSupport;)V

    goto :goto_0

    .line 7
    :cond_0
    invoke-virtual {p0, p1, p2}, Lorg/litepal/crud/AssociationsAnalyzer;->mightClearFKValue(Lorg/litepal/crud/LitePalSupport;Lorg/litepal/crud/model/AssociationsInfo;)V

    :goto_0
    return-void
.end method

.method private analyzeOneSide(Lorg/litepal/crud/LitePalSupport;Lorg/litepal/crud/model/AssociationsInfo;)V
    .locals 2
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
    invoke-virtual {p0, p1, p2}, Lorg/litepal/crud/DataHandler;->getAssociatedModels(Lorg/litepal/crud/LitePalSupport;Lorg/litepal/crud/model/AssociationsInfo;)Ljava/util/Collection;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 2
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    .line 3
    :cond_0
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/litepal/crud/LitePalSupport;

    .line 4
    invoke-virtual {p0, p1, v1, p2}, Lorg/litepal/crud/AssociationsAnalyzer;->buildBidirectionalAssociations(Lorg/litepal/crud/LitePalSupport;Lorg/litepal/crud/LitePalSupport;Lorg/litepal/crud/model/AssociationsInfo;)V

    .line 5
    invoke-direct {p0, p1, v1}, Lorg/litepal/crud/Many2OneAnalyzer;->dealAssociatedModelOnOneSide(Lorg/litepal/crud/LitePalSupport;Lorg/litepal/crud/LitePalSupport;)V

    goto :goto_0

    :cond_1
    return-void

    .line 6
    :cond_2
    :goto_1
    invoke-virtual {p2}, Lorg/litepal/crud/model/AssociationsInfo;->getAssociatedClassName()Ljava/lang/String;

    move-result-object p2

    .line 7
    invoke-static {p2}, Lorg/litepal/util/DBUtility;->getTableNameByClassName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 8
    invoke-virtual {p1, p2}, Lorg/litepal/crud/LitePalSupport;->addAssociatedTableNameToClearFK(Ljava/lang/String;)V

    return-void
.end method

.method private dealAssociatedModelOnManySide(Ljava/util/Collection;Lorg/litepal/crud/LitePalSupport;Lorg/litepal/crud/LitePalSupport;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lorg/litepal/crud/LitePalSupport;",
            ">;",
            "Lorg/litepal/crud/LitePalSupport;",
            "Lorg/litepal/crud/LitePalSupport;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-interface {p1, p2}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    invoke-interface {p1, p2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 3
    :cond_0
    invoke-virtual {p3}, Lorg/litepal/crud/LitePalSupport;->isSaved()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 4
    invoke-virtual {p3}, Lorg/litepal/crud/LitePalSupport;->getTableName()Ljava/lang/String;

    move-result-object p1

    .line 5
    invoke-virtual {p3}, Lorg/litepal/crud/LitePalSupport;->getBaseObjId()J

    move-result-wide v0

    .line 6
    invoke-virtual {p2, p1, v0, v1}, Lorg/litepal/crud/LitePalSupport;->addAssociatedModelWithoutFK(Ljava/lang/String;J)V

    :cond_1
    return-void
.end method

.method private dealAssociatedModelOnOneSide(Lorg/litepal/crud/LitePalSupport;Lorg/litepal/crud/LitePalSupport;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lorg/litepal/crud/AssociationsAnalyzer;->dealsAssociationsOnTheSideWithoutFK(Lorg/litepal/crud/LitePalSupport;Lorg/litepal/crud/LitePalSupport;)V

    return-void
.end method


# virtual methods
.method public analyze(Lorg/litepal/crud/LitePalSupport;Lorg/litepal/crud/model/AssociationsInfo;)V
    .locals 2
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
    invoke-virtual {p1}, Lorg/litepal/crud/LitePalSupport;->getClassName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lorg/litepal/crud/model/AssociationsInfo;->getClassHoldsForeignKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-direct {p0, p1, p2}, Lorg/litepal/crud/Many2OneAnalyzer;->analyzeManySide(Lorg/litepal/crud/LitePalSupport;Lorg/litepal/crud/model/AssociationsInfo;)V

    goto :goto_0

    .line 3
    :cond_0
    invoke-direct {p0, p1, p2}, Lorg/litepal/crud/Many2OneAnalyzer;->analyzeOneSide(Lorg/litepal/crud/LitePalSupport;Lorg/litepal/crud/model/AssociationsInfo;)V

    :goto_0
    return-void
.end method
