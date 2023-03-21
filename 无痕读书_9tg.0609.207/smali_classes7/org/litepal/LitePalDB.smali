.class public Lorg/litepal/LitePalDB;
.super Ljava/lang/Object;
.source "LitePalDB.java"


# instance fields
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

.field public isExternalStorage:Z

.field public storage:Ljava/lang/String;

.field public version:I


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lorg/litepal/LitePalDB;->isExternalStorage:Z

    .line 3
    iput-object p1, p0, Lorg/litepal/LitePalDB;->dbName:Ljava/lang/String;

    .line 4
    iput p2, p0, Lorg/litepal/LitePalDB;->version:I

    return-void
.end method

.method public static fromDefault(Ljava/lang/String;)Lorg/litepal/LitePalDB;
    .locals 3

    .line 1
    invoke-static {}, Lorg/litepal/parser/LitePalParser;->parseLitePalConfiguration()Lorg/litepal/parser/LitePalConfig;

    move-result-object v0

    .line 2
    new-instance v1, Lorg/litepal/LitePalDB;

    invoke-virtual {v0}, Lorg/litepal/parser/LitePalConfig;->getVersion()I

    move-result v2

    invoke-direct {v1, p0, v2}, Lorg/litepal/LitePalDB;-><init>(Ljava/lang/String;I)V

    .line 3
    invoke-virtual {v0}, Lorg/litepal/parser/LitePalConfig;->getStorage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Lorg/litepal/LitePalDB;->setStorage(Ljava/lang/String;)V

    .line 4
    invoke-virtual {v0}, Lorg/litepal/parser/LitePalConfig;->getClassNames()Ljava/util/List;

    move-result-object p0

    invoke-virtual {v1, p0}, Lorg/litepal/LitePalDB;->setClassNames(Ljava/util/List;)V

    return-object v1
.end method


# virtual methods
.method public addClassName(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/litepal/LitePalDB;->getClassNames()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
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
    iget-object v0, p0, Lorg/litepal/LitePalDB;->classNames:Ljava/util/List;

    const-string v1, "org.litepal.model.Table_Schema"

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/litepal/LitePalDB;->classNames:Ljava/util/List;

    .line 3
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 4
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5
    iget-object v0, p0, Lorg/litepal/LitePalDB;->classNames:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 6
    :cond_1
    :goto_0
    iget-object v0, p0, Lorg/litepal/LitePalDB;->classNames:Ljava/util/List;

    return-object v0
.end method

.method public getDbName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/litepal/LitePalDB;->dbName:Ljava/lang/String;

    return-object v0
.end method

.method public getStorage()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/litepal/LitePalDB;->storage:Ljava/lang/String;

    return-object v0
.end method

.method public getVersion()I
    .locals 1

    .line 1
    iget v0, p0, Lorg/litepal/LitePalDB;->version:I

    return v0
.end method

.method public isExternalStorage()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lorg/litepal/LitePalDB;->isExternalStorage:Z

    return v0
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
    iput-object p1, p0, Lorg/litepal/LitePalDB;->classNames:Ljava/util/List;

    return-void
.end method

.method public setExternalStorage(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lorg/litepal/LitePalDB;->isExternalStorage:Z

    return-void
.end method

.method public setStorage(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/litepal/LitePalDB;->storage:Ljava/lang/String;

    return-void
.end method
