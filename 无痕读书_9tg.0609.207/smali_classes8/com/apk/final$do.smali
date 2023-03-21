.class public Lcom/apk/final$do;
.super Ljava/lang/Object;
.source "AdBlockNativeHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/apk/final;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic do:Lcom/apk/final;


# direct methods
.method public constructor <init>(Lcom/apk/final;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/apk/final$do;->do:Lcom/apk/final;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/apk/final$do;->do:Lcom/apk/final;

    .line 2
    iget-wide v1, v0, Lcom/apk/final;->new:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-eqz v5, :cond_0

    iget-object v3, v0, Lcom/apk/final;->do:Landroid/os/Handler;

    if-eqz v3, :cond_0

    .line 3
    iget-object v4, v0, Lcom/apk/final;->const:Ljava/lang/Runnable;

    invoke-virtual {v3, v4, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 4
    :cond_0
    iget-boolean v1, v0, Lcom/apk/final;->if:Z

    if-eqz v1, :cond_1

    goto :goto_0

    .line 5
    :cond_1
    iget-object v1, v0, Lcom/apk/final;->case:Ljava/util/List;

    if-eqz v1, :cond_2

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_2

    .line 6
    iget-object v1, v0, Lcom/apk/final;->case:Ljava/util/List;

    iget v2, v0, Lcom/apk/final;->for:I

    invoke-static {v1, v2}, Lcom/apk/ze;->final(Ljava/util/List;I)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/apk/final;->try(Ljava/util/List;)V

    :cond_2
    :goto_0
    return-void
.end method
