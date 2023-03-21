.class public Lcom/apk/b7$if;
.super Lcom/apk/c1;
.source "BaseReadActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/apk/b7;->k(Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/apk/c1<",
        "Ljava/util/List<",
        "Lcom/biquge/ebook/app/bean/CommendMediaListNameBean;",
        ">;>;"
    }
.end annotation


# instance fields
.field public final synthetic do:Z

.field public final synthetic for:Lcom/biquge/ebook/app/bean/SameCommendBean;

.field public final synthetic if:Ljava/lang/String;

.field public final synthetic new:Lcom/apk/b7;


# direct methods
.method public constructor <init>(Lcom/apk/b7;ZLjava/lang/String;Lcom/biquge/ebook/app/bean/SameCommendBean;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/apk/b7$if;->new:Lcom/apk/b7;

    iput-boolean p2, p0, Lcom/apk/b7$if;->do:Z

    iput-object p3, p0, Lcom/apk/b7$if;->if:Ljava/lang/String;

    iput-object p4, p0, Lcom/apk/b7$if;->for:Lcom/biquge/ebook/app/bean/SameCommendBean;

    invoke-direct {p0}, Lcom/apk/c1;-><init>()V

    return-void
.end method


# virtual methods
.method public doInBackground()Ljava/lang/Object;
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/apk/b7$if;->do:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/apk/b7$if;->if:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/apk/v3;->throw(Ljava/lang/String;Z)Lcom/biquge/ebook/app/bean/Book;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 3
    invoke-virtual {v0}, Lcom/biquge/ebook/app/bean/Book;->getCommendMediaList()Ljava/util/List;

    move-result-object v2

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/apk/b7$if;->if:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/apk/z2;->super(Ljava/lang/String;Z)Lcom/manhua/data/bean/ComicBean;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 5
    invoke-virtual {v0}, Lcom/manhua/data/bean/ComicBean;->getCommendMediaList()Ljava/util/List;

    move-result-object v2

    :cond_1
    :goto_0
    return-object v2
.end method

.method public onPostExecute(Ljava/lang/Object;)V
    .locals 10

    .line 1
    check-cast p1, Ljava/util/List;

    .line 2
    invoke-super {p0, p1}, Lcom/apk/c1;->onPostExecute(Ljava/lang/Object;)V

    if-eqz p1, :cond_4

    .line 3
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_4

    .line 4
    iget-object v0, p0, Lcom/apk/b7$if;->new:Lcom/apk/b7;

    iget-boolean v1, p0, Lcom/apk/b7$if;->do:Z

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "NOVEL_"

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "COMIC_"

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/apk/b7$if;->if:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/apk/b7$if;->for:Lcom/biquge/ebook/app/bean/SameCommendBean;

    if-eqz v0, :cond_3

    const/4 v3, 0x2

    :try_start_0
    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "tId = ?"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    aput-object v1, v3, v4

    .line 5
    invoke-static {v3}, Lorg/litepal/LitePal;->where([Ljava/lang/String;)Lorg/litepal/FluentQuery;

    move-result-object v3

    const-class v4, Lcom/biquge/ebook/app/bean/SameTjConfig;

    invoke-virtual {v3, v4}, Lorg/litepal/FluentQuery;->findFirst(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/biquge/ebook/app/bean/SameTjConfig;

    iput-object v3, v0, Lcom/apk/b7;->case:Lcom/biquge/ebook/app/bean/SameTjConfig;

    if-nez v3, :cond_1

    .line 6
    new-instance v3, Lcom/biquge/ebook/app/bean/SameTjConfig;

    invoke-direct {v3}, Lcom/biquge/ebook/app/bean/SameTjConfig;-><init>()V

    iput-object v3, v0, Lcom/apk/b7;->case:Lcom/biquge/ebook/app/bean/SameTjConfig;

    .line 7
    invoke-virtual {v3, v1}, Lcom/biquge/ebook/app/bean/SameTjConfig;->settId(Ljava/lang/String;)V

    .line 8
    iget-object v3, v0, Lcom/apk/b7;->case:Lcom/biquge/ebook/app/bean/SameTjConfig;

    invoke-virtual {v2}, Lcom/biquge/ebook/app/bean/SameCommendBean;->getFirst()I

    move-result v4

    mul-int/lit8 v4, v4, 0x3c

    mul-int/lit16 v4, v4, 0x3e8

    int-to-long v4, v4

    invoke-virtual {v3, v4, v5}, Lcom/biquge/ebook/app/bean/SameTjConfig;->setRewardTime(J)V

    .line 9
    iget-object v3, v0, Lcom/apk/b7;->case:Lcom/biquge/ebook/app/bean/SameTjConfig;

    invoke-virtual {v3}, Lorg/litepal/crud/LitePalSupport;->save()Z

    goto :goto_1

    .line 10
    :cond_1
    invoke-virtual {v3}, Lcom/biquge/ebook/app/bean/SameTjConfig;->getShowCount()I

    move-result v3

    invoke-virtual {v2}, Lcom/biquge/ebook/app/bean/SameCommendBean;->getMax_count()I

    move-result v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-lt v3, v4, :cond_2

    goto :goto_2

    :catch_0
    move-exception v3

    .line 11
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 12
    :cond_2
    :goto_1
    new-instance v4, Ljava/util/Timer;

    invoke-direct {v4}, Ljava/util/Timer;-><init>()V

    iput-object v4, v0, Lcom/apk/b7;->try:Ljava/util/Timer;

    .line 13
    new-instance v5, Lcom/apk/c7;

    invoke-direct {v5, v0, p1, v2, v1}, Lcom/apk/c7;-><init>(Lcom/apk/b7;Ljava/util/List;Lcom/biquge/ebook/app/bean/SameCommendBean;Ljava/lang/String;)V

    const-wide/16 v6, 0x1388

    const-wide/16 v8, 0x1388

    invoke-virtual/range {v4 .. v9}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    goto :goto_2

    :cond_3
    const/4 p1, 0x0

    .line 14
    throw p1

    :cond_4
    :goto_2
    return-void
.end method
