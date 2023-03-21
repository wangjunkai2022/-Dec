.class public Lcom/baidu/tts/d/b/b;
.super Ljava/lang/Object;
.source "FsFileInfoFlyweight.java"


# instance fields
.field public a:Ljava/lang/String;

.field public b:J

.field public c:Ljava/lang/String;

.field public volatile d:I

.field public volatile e:I

.field public f:Ljava/lang/String;

.field public g:Lcom/baidu/tts/d/a/e;

.field public h:Ljava/util/concurrent/CopyOnWriteArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/baidu/tts/d/b/b;->d:I

    const/16 v0, 0x9

    .line 3
    iput v0, p0, Lcom/baidu/tts/d/b/b;->e:I

    .line 4
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v0, p0, Lcom/baidu/tts/d/b/b;->h:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 5
    iput-object p1, p0, Lcom/baidu/tts/d/b/b;->a:Ljava/lang/String;

    return-void
.end method

.method private j()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/baidu/tts/d/b/b;->g:Lcom/baidu/tts/d/a/e;

    if-eqz v0, :cond_1

    const-string v0, "FsFileInfoFlyweight"

    const-string v1, "unregisterObserver stop"

    .line 2
    invoke-static {v0, v1}, Lcom/baidu/tts/chainofresponsibility/logger/LoggerProxy;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lcom/baidu/tts/d/b/b;->g:Lcom/baidu/tts/d/a/e;

    invoke-virtual {v0}, Lcom/baidu/tts/d/a/e;->a()V

    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lcom/baidu/tts/d/b/b;->g:Lcom/baidu/tts/d/a/e;

    .line 5
    iget v0, p0, Lcom/baidu/tts/d/b/b;->d:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/baidu/tts/d/b/b;->d:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_1

    :cond_0
    const/16 v0, 0x8

    .line 6
    iput v0, p0, Lcom/baidu/tts/d/b/b;->d:I

    .line 7
    iput v0, p0, Lcom/baidu/tts/d/b/b;->e:I

    .line 8
    invoke-static {}, Lcom/baidu/tts/d/b/a;->a()Lcom/baidu/tts/d/b/a;

    move-result-object v0

    .line 9
    invoke-virtual {v0}, Lcom/baidu/tts/d/b/a;->b()Lcom/baidu/tts/database/a;

    move-result-object v0

    .line 10
    iget-object v1, p0, Lcom/baidu/tts/d/b/b;->a:Ljava/lang/String;

    iget v2, p0, Lcom/baidu/tts/d/b/b;->e:I

    invoke-virtual {v0, v1, v2}, Lcom/baidu/tts/database/a;->a(Ljava/lang/String;I)V

    :cond_1
    return-void
.end method


# virtual methods
.method public a(Lcom/baidu/tts/d/b/c;)I
    .locals 6

    .line 16
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/baidu/tts/d/b/b;->a:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 17
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 18
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/baidu/tts/d/b/b;->b:J

    .line 19
    invoke-virtual {p1}, Lcom/baidu/tts/d/b/c;->b()Ljava/lang/String;

    move-result-object v1

    .line 20
    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    .line 21
    iget-wide v3, p0, Lcom/baidu/tts/d/b/b;->b:J

    cmp-long v5, v3, v1

    if-nez v5, :cond_1

    .line 22
    invoke-static {}, Lcom/baidu/tts/tools/MD5;->getInstance()Lcom/baidu/tts/tools/MD5;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/baidu/tts/tools/MD5;->getBigFileMd5(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/tts/d/b/b;->c:Ljava/lang/String;

    .line 23
    invoke-virtual {p1}, Lcom/baidu/tts/d/b/c;->c()Ljava/lang/String;

    move-result-object p1

    .line 24
    iget-object v0, p0, Lcom/baidu/tts/d/b/b;->c:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x7

    .line 25
    iput p1, p0, Lcom/baidu/tts/d/b/b;->d:I

    goto :goto_0

    :cond_0
    const/4 p1, 0x3

    .line 26
    iput p1, p0, Lcom/baidu/tts/d/b/b;->d:I

    goto :goto_0

    :cond_1
    const/4 p1, 0x2

    .line 27
    iput p1, p0, Lcom/baidu/tts/d/b/b;->d:I

    goto :goto_0

    :cond_2
    const/4 p1, 0x1

    .line 28
    iput p1, p0, Lcom/baidu/tts/d/b/b;->d:I

    .line 29
    :goto_0
    iget p1, p0, Lcom/baidu/tts/d/b/b;->d:I

    return p1
.end method

.method public a()J
    .locals 2

    .line 3
    iget-wide v0, p0, Lcom/baidu/tts/d/b/b;->b:J

    return-wide v0
.end method

.method public a(JJ)V
    .locals 0

    .line 30
    invoke-static {}, Lcom/baidu/tts/d/b/a;->a()Lcom/baidu/tts/d/b/a;

    move-result-object p3

    .line 31
    iput-wide p1, p0, Lcom/baidu/tts/d/b/b;->b:J

    .line 32
    iget-object p1, p0, Lcom/baidu/tts/d/b/b;->h:Ljava/util/concurrent/CopyOnWriteArraySet;

    if-eqz p1, :cond_0

    .line 33
    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 34
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 35
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    .line 36
    invoke-virtual {p3, p2}, Lcom/baidu/tts/d/b/a;->b(Ljava/lang/String;)Lcom/baidu/tts/d/b/d;

    move-result-object p2

    .line 37
    invoke-virtual {p2, p0}, Lcom/baidu/tts/d/b/d;->a(Lcom/baidu/tts/d/b/b;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public a(Lcom/baidu/tts/aop/tts/TtsError;)V
    .locals 4

    const-string v0, "FsFileInfoFlyweight"

    const-string v1, "onDownloadFailure"

    .line 38
    invoke-static {v0, v1}, Lcom/baidu/tts/chainofresponsibility/logger/LoggerProxy;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0x8

    .line 39
    iput v0, p0, Lcom/baidu/tts/d/b/b;->d:I

    .line 40
    iput v0, p0, Lcom/baidu/tts/d/b/b;->e:I

    .line 41
    invoke-static {}, Lcom/baidu/tts/d/b/a;->a()Lcom/baidu/tts/d/b/a;

    move-result-object v0

    .line 42
    invoke-virtual {v0}, Lcom/baidu/tts/d/b/a;->b()Lcom/baidu/tts/database/a;

    move-result-object v1

    .line 43
    iget-object v2, p0, Lcom/baidu/tts/d/b/b;->a:Ljava/lang/String;

    iget v3, p0, Lcom/baidu/tts/d/b/b;->e:I

    invoke-virtual {v1, v2, v3}, Lcom/baidu/tts/database/a;->a(Ljava/lang/String;I)V

    .line 44
    iget-object v1, p0, Lcom/baidu/tts/d/b/b;->h:Ljava/util/concurrent/CopyOnWriteArraySet;

    if-eqz v1, :cond_0

    .line 45
    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 46
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 47
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 48
    invoke-virtual {v0, v2}, Lcom/baidu/tts/d/b/a;->b(Ljava/lang/String;)Lcom/baidu/tts/d/b/d;

    move-result-object v3

    .line 49
    invoke-virtual {v3, p0, p1}, Lcom/baidu/tts/d/b/d;->a(Lcom/baidu/tts/d/b/b;Lcom/baidu/tts/aop/tts/TtsError;)V

    .line 50
    iget-object v3, p0, Lcom/baidu/tts/d/b/b;->h:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v3, v2}, Ljava/util/concurrent/CopyOnWriteArraySet;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-void
.end method

.method public a(Lcom/baidu/tts/d/a/e;)V
    .locals 0

    .line 4
    iput-object p1, p0, Lcom/baidu/tts/d/b/b;->g:Lcom/baidu/tts/d/a/e;

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/baidu/tts/d/b/b;->h:Ljava/util/concurrent/CopyOnWriteArraySet;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public a(Lcom/baidu/tts/database/a;)Z
    .locals 4

    .line 5
    invoke-static {}, Lcom/baidu/tts/d/b/e;->a()Lcom/baidu/tts/d/b/e;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/tts/d/b/b;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/baidu/tts/d/b/e;->b(Ljava/lang/String;)Lcom/baidu/tts/d/b/c;

    move-result-object v0

    .line 6
    iget v1, p0, Lcom/baidu/tts/d/b/b;->d:I

    const/4 v2, 0x7

    if-nez v1, :cond_0

    .line 7
    invoke-virtual {p0, v0}, Lcom/baidu/tts/d/b/b;->a(Lcom/baidu/tts/d/b/c;)I

    .line 8
    invoke-virtual {p0, p1}, Lcom/baidu/tts/d/b/b;->b(Lcom/baidu/tts/database/a;)I

    goto :goto_0

    .line 9
    :cond_0
    iget v1, p0, Lcom/baidu/tts/d/b/b;->d:I

    const/16 v3, 0x8

    if-eq v1, v3, :cond_1

    iget v1, p0, Lcom/baidu/tts/d/b/b;->d:I

    if-ne v1, v2, :cond_2

    .line 10
    :cond_1
    invoke-virtual {p0, v0}, Lcom/baidu/tts/d/b/b;->a(Lcom/baidu/tts/d/b/c;)I

    .line 11
    :cond_2
    :goto_0
    iget v0, p0, Lcom/baidu/tts/d/b/b;->d:I

    if-ne v0, v2, :cond_3

    iget v0, p0, Lcom/baidu/tts/d/b/b;->e:I

    if-eq v0, v2, :cond_3

    .line 12
    iput v2, p0, Lcom/baidu/tts/d/b/b;->e:I

    .line 13
    iget-object v0, p0, Lcom/baidu/tts/d/b/b;->a:Ljava/lang/String;

    iget v1, p0, Lcom/baidu/tts/d/b/b;->e:I

    invoke-virtual {p1, v0, v1}, Lcom/baidu/tts/database/a;->a(Ljava/lang/String;I)V

    :cond_3
    const-string p1, "fileId="

    .line 14
    invoke-static {p1}, Lcom/apk/goto;->super(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v0, p0, Lcom/baidu/tts/d/b/b;->f:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "--filestate="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/baidu/tts/d/b/b;->d:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "--dbstate="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/baidu/tts/d/b/b;->e:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "FsFileInfoFlyweight"

    invoke-static {v0, p1}, Lcom/baidu/tts/chainofresponsibility/logger/LoggerProxy;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    iget p1, p0, Lcom/baidu/tts/d/b/b;->d:I

    const/4 v0, 0x4

    if-eq p1, v0, :cond_5

    iget p1, p0, Lcom/baidu/tts/d/b/b;->d:I

    const/4 v0, 0x5

    if-eq p1, v0, :cond_5

    iget p1, p0, Lcom/baidu/tts/d/b/b;->d:I

    if-ne p1, v2, :cond_4

    goto :goto_1

    :cond_4
    const/4 p1, 0x1

    return p1

    :cond_5
    :goto_1
    const/4 p1, 0x0

    return p1
.end method

.method public b(Lcom/baidu/tts/database/a;)I
    .locals 1

    .line 8
    iget-object v0, p0, Lcom/baidu/tts/d/b/b;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/baidu/tts/database/a;->c(Ljava/lang/String;)Ljava/util/Map;

    move-result-object p1

    .line 9
    sget-object v0, Lcom/baidu/tts/f/g;->a:Lcom/baidu/tts/f/g;

    invoke-virtual {v0}, Lcom/baidu/tts/f/g;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/baidu/tts/tools/DataTool;->getMapValue(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 10
    invoke-static {p1}, Lcom/baidu/tts/tools/StringTool;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 p1, 0x9

    .line 11
    iput p1, p0, Lcom/baidu/tts/d/b/b;->e:I

    goto :goto_0

    .line 12
    :cond_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/baidu/tts/d/b/b;->e:I

    .line 13
    :goto_0
    iget p1, p0, Lcom/baidu/tts/d/b/b;->e:I

    return p1
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .line 7
    iget-object v0, p0, Lcom/baidu/tts/d/b/b;->a:Ljava/lang/String;

    return-object v0
.end method

.method public b(Ljava/lang/String;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/baidu/tts/d/b/b;->h:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-static {v0}, Lcom/baidu/tts/tools/DataTool;->isSetEmpty(Ljava/util/Set;)Z

    move-result v0

    .line 2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unregisterObserver 1isEmpty="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "FsFileInfoFlyweight"

    invoke-static {v2, v1}, Lcom/baidu/tts/chainofresponsibility/logger/LoggerProxy;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/baidu/tts/d/b/b;->h:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->remove(Ljava/lang/Object;)Z

    .line 4
    iget-object p1, p0, Lcom/baidu/tts/d/b/b;->h:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-static {p1}, Lcom/baidu/tts/tools/DataTool;->isSetEmpty(Ljava/util/Set;)Z

    move-result p1

    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "unregisterObserver 2isEmpty="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/baidu/tts/chainofresponsibility/logger/LoggerProxy;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 6
    invoke-direct {p0}, Lcom/baidu/tts/d/b/b;->j()V

    :cond_0
    return-void
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/baidu/tts/d/b/b;->f:Ljava/lang/String;

    return-object v0
.end method

.method public c(Ljava/lang/String;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/baidu/tts/d/b/b;->f:Ljava/lang/String;

    return-void
.end method

.method public d()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/baidu/tts/d/b/b;->d:I

    return v0
.end method

.method public e()Z
    .locals 6

    .line 1
    iget v0, p0, Lcom/baidu/tts/d/b/b;->d:I

    const/4 v1, 0x0

    const/4 v2, 0x7

    if-ne v0, v2, :cond_0

    return v1

    .line 2
    :cond_0
    iget v0, p0, Lcom/baidu/tts/d/b/b;->d:I

    const/4 v2, 0x4

    if-eq v0, v2, :cond_2

    iget v0, p0, Lcom/baidu/tts/d/b/b;->d:I

    const/4 v2, 0x5

    if-ne v0, v2, :cond_1

    goto :goto_0

    .line 3
    :cond_1
    invoke-static {}, Lcom/baidu/tts/d/b/e;->a()Lcom/baidu/tts/d/b/e;

    move-result-object v0

    iget-object v2, p0, Lcom/baidu/tts/d/b/b;->f:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/baidu/tts/d/b/e;->b(Ljava/lang/String;)Lcom/baidu/tts/d/b/c;

    move-result-object v0

    .line 4
    invoke-virtual {v0}, Lcom/baidu/tts/d/b/c;->b()Ljava/lang/String;

    move-result-object v0

    .line 5
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    .line 6
    iget-wide v4, p0, Lcom/baidu/tts/d/b/b;->b:J

    cmp-long v0, v4, v2

    if-ltz v0, :cond_2

    const/4 v0, 0x1

    return v0

    :cond_2
    :goto_0
    return v1
.end method

.method public f()Z
    .locals 2

    .line 1
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/baidu/tts/d/b/b;->a:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v0

    return v0
.end method

.method public g()V
    .locals 2

    const-string v0, "queueForDownload fileId="

    .line 1
    invoke-static {v0}, Lcom/apk/goto;->super(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/tts/d/b/b;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "--filestate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/baidu/tts/d/b/b;->d:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FsFileInfoFlyweight"

    invoke-static {v1, v0}, Lcom/baidu/tts/chainofresponsibility/logger/LoggerProxy;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x4

    .line 2
    iput v0, p0, Lcom/baidu/tts/d/b/b;->d:I

    return-void
.end method

.method public h()V
    .locals 3

    const/4 v0, 0x5

    .line 1
    iput v0, p0, Lcom/baidu/tts/d/b/b;->d:I

    const/4 v0, 0x6

    .line 2
    iput v0, p0, Lcom/baidu/tts/d/b/b;->e:I

    .line 3
    invoke-static {}, Lcom/baidu/tts/d/b/a;->a()Lcom/baidu/tts/d/b/a;

    move-result-object v0

    .line 4
    invoke-virtual {v0}, Lcom/baidu/tts/d/b/a;->b()Lcom/baidu/tts/database/a;

    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/baidu/tts/d/b/b;->a:Ljava/lang/String;

    iget v2, p0, Lcom/baidu/tts/d/b/b;->e:I

    invoke-virtual {v0, v1, v2}, Lcom/baidu/tts/database/a;->a(Ljava/lang/String;I)V

    return-void
.end method

.method public i()V
    .locals 4

    const-string v0, "FsFileInfoFlyweight"

    const-string v1, "onDownloadSuccess"

    .line 1
    invoke-static {v0, v1}, Lcom/baidu/tts/chainofresponsibility/logger/LoggerProxy;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x7

    .line 2
    iput v0, p0, Lcom/baidu/tts/d/b/b;->d:I

    .line 3
    iput v0, p0, Lcom/baidu/tts/d/b/b;->e:I

    .line 4
    invoke-static {}, Lcom/baidu/tts/d/b/a;->a()Lcom/baidu/tts/d/b/a;

    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/baidu/tts/d/b/a;->b()Lcom/baidu/tts/database/a;

    move-result-object v1

    .line 6
    iget-object v2, p0, Lcom/baidu/tts/d/b/b;->a:Ljava/lang/String;

    iget v3, p0, Lcom/baidu/tts/d/b/b;->e:I

    invoke-virtual {v1, v2, v3}, Lcom/baidu/tts/database/a;->a(Ljava/lang/String;I)V

    .line 7
    iget-object v1, p0, Lcom/baidu/tts/d/b/b;->h:Ljava/util/concurrent/CopyOnWriteArraySet;

    if-eqz v1, :cond_0

    .line 8
    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 9
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 10
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 11
    invoke-virtual {v0, v2}, Lcom/baidu/tts/d/b/a;->b(Ljava/lang/String;)Lcom/baidu/tts/d/b/d;

    move-result-object v3

    .line 12
    invoke-virtual {v3, p0}, Lcom/baidu/tts/d/b/d;->b(Lcom/baidu/tts/d/b/b;)V

    .line 13
    iget-object v3, p0, Lcom/baidu/tts/d/b/b;->h:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v3, v2}, Ljava/util/concurrent/CopyOnWriteArraySet;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-void
.end method
