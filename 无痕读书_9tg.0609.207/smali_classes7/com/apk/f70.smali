.class public Lcom/apk/f70;
.super Lcom/apk/e70;
.source "BaseAdProviderSuper.java"


# instance fields
.field public for:Z

.field public if:Landroid/os/CountDownTimer;

.field public new:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/apk/e70;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/apk/f70;->for:Z

    .line 3
    iput-boolean v0, p0, Lcom/apk/f70;->new:Z

    return-void
.end method


# virtual methods
.method public final e(Ljava/lang/String;JZLcom/apk/b70;)V
    .locals 13

    move-object v11, p0

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move-object v6, p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\u5f00\u542f\u8d85\u65f6\uff1a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide v7, p2

    invoke-virtual {v0, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    if-eqz p4, :cond_0

    const-string v1, "\uff1aonCache"

    goto :goto_0

    :cond_0
    const-string v1, ""

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/apk/k40;->this(Ljava/lang/String;)V

    .line 2
    invoke-virtual {p0}, Lcom/apk/f70;->f()V

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, v11, Lcom/apk/f70;->for:Z

    .line 4
    iput-boolean v0, v11, Lcom/apk/f70;->new:Z

    .line 5
    new-instance v12, Lcom/apk/f70$if;

    const-wide/16 v4, 0x3e8

    move-object v0, v12

    move-object v1, p0

    move-wide v2, p2

    move-object v6, p1

    move-wide v7, p2

    move/from16 v9, p4

    move-object/from16 v10, p5

    invoke-direct/range {v0 .. v10}, Lcom/apk/f70$if;-><init>(Lcom/apk/f70;JJLjava/lang/String;JZLcom/apk/b70;)V

    iput-object v12, v11, Lcom/apk/f70;->if:Landroid/os/CountDownTimer;

    .line 6
    invoke-virtual {v12}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    return-void
.end method

.method public f()V
    .locals 2

    .line 1
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    const-string v0, "cancelTimer"

    .line 2
    invoke-static {v0}, Lcom/apk/k40;->this(Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lcom/apk/f70;->if:Landroid/os/CountDownTimer;

    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/apk/f70;->if:Landroid/os/CountDownTimer;

    goto :goto_0

    .line 6
    :cond_0
    new-instance v0, Lcom/apk/f70$for;

    invoke-direct {v0, p0}, Lcom/apk/f70$for;-><init>(Lcom/apk/f70;)V

    invoke-static {v0}, Lcom/apk/n70;->do(Ljava/lang/Runnable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public g(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lcom/apk/x60;)V
    .locals 0

    return-void
.end method

.method public final h(Ljava/lang/String;JZLcom/apk/b70;)V
    .locals 9

    .line 1
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 2
    invoke-virtual/range {p0 .. p5}, Lcom/apk/f70;->e(Ljava/lang/String;JZLcom/apk/b70;)V

    goto :goto_0

    .line 3
    :cond_0
    new-instance v0, Lcom/apk/f70$do;

    move-object v2, v0

    move-object v3, p0

    move-object v4, p1

    move-wide v5, p2

    move v7, p4

    move-object v8, p5

    invoke-direct/range {v2 .. v8}, Lcom/apk/f70$do;-><init>(Lcom/apk/f70;Ljava/lang/String;JZLcom/apk/b70;)V

    invoke-static {v0}, Lcom/apk/n70;->do(Ljava/lang/Runnable;)V

    :goto_0
    return-void
.end method

.method public i()I
    .locals 1

    .line 1
    invoke-static {}, Lcom/swl/gg/sdk/TrAdSdk;->isAdQuickDownload()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method
