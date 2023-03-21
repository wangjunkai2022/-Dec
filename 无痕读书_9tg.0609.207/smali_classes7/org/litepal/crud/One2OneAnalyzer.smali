.class public Lorg/litepal/crud/One2OneAnalyzer;
.super Lorg/litepal/crud/AssociationsAnalyzer;
.source "One2OneAnalyzer.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lorg/litepal/crud/AssociationsAnalyzer;-><init>()V

    return-void
.end method

.method private bidirectionalCondition(Lorg/litepal/crud/LitePalSupport;Lorg/litepal/crud/LitePalSupport;)V
    .locals 3

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

    .line 5
    invoke-virtual {p2}, Lorg/litepal/crud/LitePalSupport;->getTableName()Ljava/lang/String;

    move-result-object v0

    .line 6
    invoke-virtual {p2}, Lorg/litepal/crud/LitePalSupport;->getBaseObjId()J

    move-result-wide v1

    .line 7
    invoke-virtual {p1, v0, v1, v2}, Lorg/litepal/crud/LitePalSupport;->addAssociatedModelWithoutFK(Ljava/lang/String;J)V

    :cond_0
    return-void
.end method

.method private dealAssociatedModel(Lorg/litepal/crud/LitePalSupport;Lorg/litepal/crud/LitePalSupport;Lorg/litepal/crud/model/AssociationsInfo;)V
    .locals 0

    .line 1
    invoke-virtual {p3}, Lorg/litepal/crud/model/AssociationsInfo;->getAssociateSelfFromOtherModel()Ljava/lang/reflect/Field;

    move-result-object p3

    if-eqz p3, :cond_0

    .line 2
    invoke-direct {p0, p1, p2}, Lorg/litepal/crud/One2OneAnalyzer;->bidirectionalCondition(Lorg/litepal/crud/LitePalSupport;Lorg/litepal/crud/LitePalSupport;)V

    goto :goto_0

    .line 3
    :cond_0
    invoke-direct {p0, p1, p2}, Lorg/litepal/crud/One2OneAnalyzer;->unidirectionalCondition(Lorg/litepal/crud/LitePalSupport;Lorg/litepal/crud/LitePalSupport;)V

    :goto_0
    return-void
.end method

.method private unidirectionalCondition(Lorg/litepal/crud/LitePalSupport;Lorg/litepal/crud/LitePalSupport;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lorg/litepal/crud/AssociationsAnalyzer;->dealsAssociationsOnTheSideWithoutFK(Lorg/litepal/crud/LitePalSupport;Lorg/litepal/crud/LitePalSupport;)V

    return-void
.end method


# virtual methods
.method public analyze(Lorg/litepal/crud/LitePalSupport;Lorg/litepal/crud/model/AssociationsInfo;)V
    .locals 1
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
    invoke-virtual {p0, p1, v0, p2}, Lorg/litepal/crud/AssociationsAnalyzer;->buildBidirectionalAssociations(Lorg/litepal/crud/LitePalSupport;Lorg/litepal/crud/LitePalSupport;Lorg/litepal/crud/model/AssociationsInfo;)V

    .line 3
    invoke-direct {p0, p1, v0, p2}, Lorg/litepal/crud/One2OneAnalyzer;->dealAssociatedModel(Lorg/litepal/crud/LitePalSupport;Lorg/litepal/crud/LitePalSupport;Lorg/litepal/crud/model/AssociationsInfo;)V

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p2}, Lorg/litepal/crud/model/AssociationsInfo;->getAssociatedClassName()Ljava/lang/String;

    move-result-object p2

    .line 5
    invoke-static {p2}, Lorg/litepal/util/DBUtility;->getTableNameByClassName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 6
    invoke-virtual {p1, p2}, Lorg/litepal/crud/LitePalSupport;->addAssociatedTableNameToClearFK(Ljava/lang/String;)V

    :goto_0
    return-void
.end method
