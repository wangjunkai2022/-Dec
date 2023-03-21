.class public final Lorg/litepal/parser/LitePalAttr;
.super Ljava/lang/Object;
.source "LitePalAttr.java"


# static fields
.field public static litePalAttr:Lorg/litepal/parser/LitePalAttr;


# instance fields
.field public cases:Ljava/lang/String;

.field public classNames:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public dbName:Ljava/lang/String;

.field public extraKeyName:Ljava/lang/String;

.field public storage:Ljava/lang/String;

.field public version:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static clearInstance()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    sput-object v0, Lorg/litepal/parser/LitePalAttr;->litePalAttr:Lorg/litepal/parser/LitePalAttr;

    return-void
.end method

.method public static getInstance()Lorg/litepal/parser/LitePalAttr;
    .locals 2

    .line 1
    sget-object v0, Lorg/litepal/parser/LitePalAttr;->litePalAttr:Lorg/litepal/parser/LitePalAttr;

    if-nez v0, :cond_1

    .line 2
    const-class v0, Lorg/litepal/parser/LitePalAttr;

    monitor-enter v0

    .line 3
    :try_start_0
    sget-object v1, Lorg/litepal/parser/LitePalAttr;->litePalAttr:Lorg/litepal/parser/LitePalAttr;

    if-nez v1, :cond_0

    .line 4
    new-instance v1, Lorg/litepal/parser/LitePalAttr;

    invoke-direct {v1}, Lorg/litepal/parser/LitePalAttr;-><init>()V

    sput-object v1, Lorg/litepal/parser/LitePalAttr;->litePalAttr:Lorg/litepal/parser/LitePalAttr;

    .line 5
    invoke-static {}, Lorg/litepal/parser/LitePalAttr;->loadLitePalXMLConfiguration()V

    .line 6
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 7
    :cond_1
    :goto_0
    sget-object v0, Lorg/litepal/parser/LitePalAttr;->litePalAttr:Lorg/litepal/parser/LitePalAttr;

    return-object v0
.end method

.method public static loadLitePalXMLConfiguration()V
    .locals 3

    .line 1
    invoke-static {}, Lorg/litepal/util/BaseUtility;->isLitePalXMLExists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Lorg/litepal/parser/LitePalParser;->parseLitePalConfiguration()Lorg/litepal/parser/LitePalConfig;

    move-result-object v0

    .line 3
    sget-object v1, Lorg/litepal/parser/LitePalAttr;->litePalAttr:Lorg/litepal/parser/LitePalAttr;

    invoke-virtual {v0}, Lorg/litepal/parser/LitePalConfig;->getDbName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/litepal/parser/LitePalAttr;->setDbName(Ljava/lang/String;)V

    .line 4
    sget-object v1, Lorg/litepal/parser/LitePalAttr;->litePalAttr:Lorg/litepal/parser/LitePalAttr;

    invoke-virtual {v0}, Lorg/litepal/parser/LitePalConfig;->getVersion()I

    move-result v2

    invoke-virtual {v1, v2}, Lorg/litepal/parser/LitePalAttr;->setVersion(I)V

    .line 5
    sget-object v1, Lorg/litepal/parser/LitePalAttr;->litePalAttr:Lorg/litepal/parser/LitePalAttr;

    invoke-virtual {v0}, Lorg/litepal/parser/LitePalConfig;->getClassNames()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/litepal/parser/LitePalAttr;->setClassNames(Ljava/util/List;)V

    .line 6
    sget-object v1, Lorg/litepal/parser/LitePalAttr;->litePalAttr:Lorg/litepal/parser/LitePalAttr;

    invoke-virtual {v0}, Lorg/litepal/parser/LitePalConfig;->getCases()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/litepal/parser/LitePalAttr;->setCases(Ljava/lang/String;)V

    .line 7
    sget-object v1, Lorg/litepal/parser/LitePalAttr;->litePalAttr:Lorg/litepal/parser/LitePalAttr;

    invoke-virtual {v0}, Lorg/litepal/parser/LitePalConfig;->getStorage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/litepal/parser/LitePalAttr;->setStorage(Ljava/lang/String;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public addClassName(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/litepal/parser/LitePalAttr;->getClassNames()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public checkSelfValid()V
    .locals 4

    .line 1
    iget-object v0, p0, Lorg/litepal/parser/LitePalAttr;->dbName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    invoke-static {}, Lorg/litepal/parser/LitePalAttr;->loadLitePalXMLConfiguration()V

    .line 3
    iget-object v0, p0, Lorg/litepal/parser/LitePalAttr;->dbName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    new-instance v0, Lorg/litepal/exceptions/InvalidAttributesException;

    const-string v1, "dbname is empty or not defined in litepal.xml file, or your litepal.xml file is missing."

    invoke-direct {v0, v1}, Lorg/litepal/exceptions/InvalidAttributesException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 5
    :cond_1
    :goto_0
    iget-object v0, p0, Lorg/litepal/parser/LitePalAttr;->dbName:Ljava/lang/String;

    const-string v1, ".db"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lorg/litepal/parser/LitePalAttr;->dbName:Ljava/lang/String;

    invoke-static {v0, v2, v1}, Lcom/apk/goto;->class(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/litepal/parser/LitePalAttr;->dbName:Ljava/lang/String;

    .line 7
    :cond_2
    iget v0, p0, Lorg/litepal/parser/LitePalAttr;->version:I

    const/4 v1, 0x1

    if-lt v0, v1, :cond_7

    .line 8
    iget-object v1, p0, Lorg/litepal/parser/LitePalAttr;->extraKeyName:Ljava/lang/String;

    invoke-static {v1}, Lorg/litepal/util/SharedUtil;->getLastVersion(Ljava/lang/String;)I

    move-result v1

    if-lt v0, v1, :cond_6

    .line 9
    iget-object v0, p0, Lorg/litepal/parser/LitePalAttr;->cases:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, "lower"

    if-eqz v0, :cond_3

    .line 10
    iput-object v1, p0, Lorg/litepal/parser/LitePalAttr;->cases:Ljava/lang/String;

    goto :goto_1

    .line 11
    :cond_3
    iget-object v0, p0, Lorg/litepal/parser/LitePalAttr;->cases:Ljava/lang/String;

    const-string v2, "upper"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lorg/litepal/parser/LitePalAttr;->cases:Ljava/lang/String;

    .line 12
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lorg/litepal/parser/LitePalAttr;->cases:Ljava/lang/String;

    const-string v1, "keep"

    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_1

    .line 14
    :cond_4
    new-instance v0, Lorg/litepal/exceptions/InvalidAttributesException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lorg/litepal/parser/LitePalAttr;->cases:Ljava/lang/String;

    const-string v3, " is an invalid value for <cases></cases>"

    invoke-static {v1, v2, v3}, Lcom/apk/goto;->class(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/litepal/exceptions/InvalidAttributesException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    :goto_1
    return-void

    .line 15
    :cond_6
    new-instance v0, Lorg/litepal/exceptions/InvalidAttributesException;

    const-string v1, "the version in litepal.xml is earlier than the current version"

    invoke-direct {v0, v1}, Lorg/litepal/exceptions/InvalidAttributesException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 16
    :cond_7
    new-instance v0, Lorg/litepal/exceptions/InvalidAttributesException;

    const-string v1, "the version of database can not be less than 1"

    invoke-direct {v0, v1}, Lorg/litepal/exceptions/InvalidAttributesException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getCases()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/litepal/parser/LitePalAttr;->cases:Ljava/lang/String;

    return-object v0
.end method

.method public getClassNames()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/litepal/parser/LitePalAttr;->classNames:Ljava/util/List;

    const-string v1, "org.litepal.model.Table_Schema"

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/litepal/parser/LitePalAttr;->classNames:Ljava/util/List;

    .line 3
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 4
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5
    iget-object v0, p0, Lorg/litepal/parser/LitePalAttr;->classNames:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 6
    :cond_1
    :goto_0
    iget-object v0, p0, Lorg/litepal/parser/LitePalAttr;->classNames:Ljava/util/List;

    return-object v0
.end method

.method public getDbName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/litepal/parser/LitePalAttr;->dbName:Ljava/lang/String;

    return-object v0
.end method

.method public getExtraKeyName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/litepal/parser/LitePalAttr;->extraKeyName:Ljava/lang/String;

    return-object v0
.end method

.method public getStorage()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/litepal/parser/LitePalAttr;->storage:Ljava/lang/String;

    return-object v0
.end method

.method public getVersion()I
    .locals 1

    .line 1
    iget v0, p0, Lorg/litepal/parser/LitePalAttr;->version:I

    return v0
.end method

.method public setCases(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/litepal/parser/LitePalAttr;->cases:Ljava/lang/String;

    return-void
.end method

.method public setClassNames(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lorg/litepal/parser/LitePalAttr;->classNames:Ljava/util/List;

    return-void
.end method

.method public setDbName(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/litepal/parser/LitePalAttr;->dbName:Ljava/lang/String;

    return-void
.end method

.method public setExtraKeyName(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/litepal/parser/LitePalAttr;->extraKeyName:Ljava/lang/String;

    return-void
.end method

.method public setStorage(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/litepal/parser/LitePalAttr;->storage:Ljava/lang/String;

    return-void
.end method

.method public setVersion(I)V
    .locals 0

    .line 1
    iput p1, p0, Lorg/litepal/parser/LitePalAttr;->version:I

    return-void
.end method
