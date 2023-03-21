.class public Lcom/apk/c7;
.super Ljava/util/TimerTask;
.source "BaseReadActivity.java"


# instance fields
.field public final synthetic do:Ljava/util/List;

.field public final synthetic for:Ljava/lang/String;

.field public final synthetic if:Lcom/biquge/ebook/app/bean/SameCommendBean;

.field public final synthetic new:Lcom/apk/b7;


# direct methods
.method public constructor <init>(Lcom/apk/b7;Ljava/util/List;Lcom/biquge/ebook/app/bean/SameCommendBean;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/apk/c7;->new:Lcom/apk/b7;

    iput-object p2, p0, Lcom/apk/c7;->do:Ljava/util/List;

    iput-object p3, p0, Lcom/apk/c7;->if:Lcom/biquge/ebook/app/bean/SameCommendBean;

    iput-object p4, p0, Lcom/apk/c7;->for:Ljava/lang/String;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/apk/c7;->new:Lcom/apk/b7;

    .line 2
    iget-boolean v0, v0, Lcom/apk/b7;->goto:Z

    if-nez v0, :cond_0

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/apk/c7;->new:Lcom/apk/b7;

    .line 4
    iget-boolean v0, v0, Lcom/apk/b7;->else:Z

    if-eqz v0, :cond_1

    return-void

    .line 5
    :cond_1
    iget-object v0, p0, Lcom/apk/c7;->new:Lcom/apk/b7;

    .line 6
    iget-object v0, v0, Lcom/apk/b7;->case:Lcom/biquge/ebook/app/bean/SameTjConfig;

    if-eqz v0, :cond_6

    .line 7
    iget-object v0, p0, Lcom/apk/c7;->new:Lcom/apk/b7;

    .line 8
    iget-object v0, v0, Lcom/apk/b7;->case:Lcom/biquge/ebook/app/bean/SameTjConfig;

    .line 9
    invoke-virtual {v0}, Lcom/biquge/ebook/app/bean/SameTjConfig;->getShowCount()I

    move-result v0

    .line 10
    iget-object v1, p0, Lcom/apk/c7;->new:Lcom/apk/b7;

    .line 11
    iget-object v1, v1, Lcom/apk/b7;->case:Lcom/biquge/ebook/app/bean/SameTjConfig;

    .line 12
    invoke-virtual {v1}, Lcom/biquge/ebook/app/bean/SameTjConfig;->getRewardTime()J

    move-result-wide v1

    const-wide/16 v3, 0x1388

    sub-long/2addr v1, v3

    const-wide/16 v3, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    cmp-long v7, v1, v3

    if-gtz v7, :cond_4

    .line 13
    iget-object v1, p0, Lcom/apk/c7;->new:Lcom/apk/b7;

    iget-object v2, p0, Lcom/apk/c7;->do:Ljava/util/List;

    if-eqz v1, :cond_3

    if-eqz v2, :cond_2

    .line 14
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_2

    .line 15
    new-instance v3, Lcom/apk/l6;

    invoke-direct {v3, v1, v2}, Lcom/apk/l6;-><init>(Lcom/apk/b7;Ljava/util/List;)V

    invoke-virtual {v1, v3}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 16
    :cond_2
    iget-object v1, p0, Lcom/apk/c7;->if:Lcom/biquge/ebook/app/bean/SameCommendBean;

    invoke-virtual {v1}, Lcom/biquge/ebook/app/bean/SameCommendBean;->getBy_minus()I

    move-result v1

    mul-int/lit8 v1, v1, 0x3c

    mul-int/lit16 v1, v1, 0x3e8

    int-to-long v1, v1

    .line 17
    iget-object v3, p0, Lcom/apk/c7;->new:Lcom/apk/b7;

    .line 18
    iget-object v3, v3, Lcom/apk/b7;->case:Lcom/biquge/ebook/app/bean/SameTjConfig;

    add-int/2addr v0, v5

    .line 19
    invoke-virtual {v3, v0}, Lcom/biquge/ebook/app/bean/SameTjConfig;->setShowCount(I)V

    goto :goto_0

    .line 20
    :cond_3
    throw v6

    .line 21
    :cond_4
    :goto_0
    iget-object v0, p0, Lcom/apk/c7;->new:Lcom/apk/b7;

    .line 22
    iget-object v0, v0, Lcom/apk/b7;->case:Lcom/biquge/ebook/app/bean/SameTjConfig;

    .line 23
    invoke-virtual {v0, v1, v2}, Lcom/biquge/ebook/app/bean/SameTjConfig;->setRewardTime(J)V

    .line 24
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "showCount"

    .line 25
    iget-object v2, p0, Lcom/apk/c7;->new:Lcom/apk/b7;

    .line 26
    iget-object v2, v2, Lcom/apk/b7;->case:Lcom/biquge/ebook/app/bean/SameTjConfig;

    .line 27
    invoke-virtual {v2}, Lcom/biquge/ebook/app/bean/SameTjConfig;->getShowCount()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v1, "rewardTime"

    .line 28
    iget-object v2, p0, Lcom/apk/c7;->new:Lcom/apk/b7;

    .line 29
    iget-object v2, v2, Lcom/apk/b7;->case:Lcom/biquge/ebook/app/bean/SameTjConfig;

    .line 30
    invoke-virtual {v2}, Lcom/biquge/ebook/app/bean/SameTjConfig;->getRewardTime()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 31
    const-class v1, Lcom/biquge/ebook/app/bean/SameTjConfig;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "tId = ?"

    aput-object v4, v2, v3

    iget-object v3, p0, Lcom/apk/c7;->for:Ljava/lang/String;

    aput-object v3, v2, v5

    invoke-static {v1, v0, v2}, Lorg/litepal/LitePal;->updateAll(Ljava/lang/Class;Landroid/content/ContentValues;[Ljava/lang/String;)I

    .line 32
    iget-object v0, p0, Lcom/apk/c7;->new:Lcom/apk/b7;

    .line 33
    iget-object v0, v0, Lcom/apk/b7;->case:Lcom/biquge/ebook/app/bean/SameTjConfig;

    .line 34
    invoke-virtual {v0}, Lcom/biquge/ebook/app/bean/SameTjConfig;->getShowCount()I

    move-result v0

    iget-object v1, p0, Lcom/apk/c7;->if:Lcom/biquge/ebook/app/bean/SameCommendBean;

    invoke-virtual {v1}, Lcom/biquge/ebook/app/bean/SameCommendBean;->getMax_count()I

    move-result v1

    if-lt v0, v1, :cond_6

    .line 35
    iget-object v0, p0, Lcom/apk/c7;->new:Lcom/apk/b7;

    .line 36
    iget-object v0, v0, Lcom/apk/b7;->try:Ljava/util/Timer;

    if-eqz v0, :cond_5

    .line 37
    iget-object v0, p0, Lcom/apk/c7;->new:Lcom/apk/b7;

    .line 38
    iget-object v0, v0, Lcom/apk/b7;->try:Ljava/util/Timer;

    .line 39
    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 40
    iget-object v0, p0, Lcom/apk/c7;->new:Lcom/apk/b7;

    .line 41
    iput-object v6, v0, Lcom/apk/b7;->try:Ljava/util/Timer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_5
    return-void

    :catch_0
    move-exception v0

    .line 42
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_6
    return-void
.end method
