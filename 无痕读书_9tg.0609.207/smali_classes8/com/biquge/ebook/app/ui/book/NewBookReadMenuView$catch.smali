.class public Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView$catch;
.super Ljava/util/TimerTask;
.source "NewBookReadMenuView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView;->continue(ILandroid/widget/TextView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic do:J

.field public final synthetic for:Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView;

.field public final synthetic if:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView;JLandroid/widget/TextView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView$catch;->for:Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView;

    iput-wide p2, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView$catch;->do:J

    iput-object p4, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView$catch;->if:Landroid/widget/TextView;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .line 1
    :try_start_0
    iget-wide v0, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView$catch;->do:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x3e8

    .line 2
    div-long v4, v0, v2

    const-wide/16 v6, 0x3c

    div-long/2addr v4, v6

    .line 3
    div-long v8, v4, v6

    long-to-int v9, v8

    .line 4
    rem-long/2addr v4, v6

    if-lez v9, :cond_0

    mul-int/lit8 v9, v9, 0x3c

    int-to-long v8, v9

    add-long/2addr v4, v8

    .line 5
    :cond_0
    div-long/2addr v0, v2

    rem-long/2addr v0, v6

    .line 6
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v3, "0"

    const-wide/16 v6, 0xa

    cmp-long v8, v4, v6

    if-gez v8, :cond_1

    :try_start_1
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    :cond_1
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    :goto_0
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ":"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    cmp-long v4, v0, v6

    if-gez v4, :cond_2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_2
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    :goto_1
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 7
    iget-object v1, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView$catch;->for:Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView;

    new-instance v2, Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView$catch$do;

    invoke-direct {v2, p0, v0}, Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView$catch$do;-><init>(Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView$catch;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->post(Ljava/lang/Runnable;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    .line 8
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_2
    return-void
.end method
