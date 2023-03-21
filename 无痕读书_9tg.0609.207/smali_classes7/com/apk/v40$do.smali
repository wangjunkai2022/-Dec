.class public Lcom/apk/v40$do;
.super Ljava/lang/Object;
.source "GmProviderReward.java"

# interfaces
.implements Lcom/bytedance/msdk/api/v2/ad/reward/GMRewardedAdLoadCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/apk/v40;->n(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lcom/apk/z60;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic do:Ljava/lang/String;

.field public final synthetic for:Lcom/apk/v40;

.field public final synthetic if:Lcom/apk/z60;


# direct methods
.method public constructor <init>(Lcom/apk/v40;Ljava/lang/String;Lcom/apk/z60;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/apk/v40$do;->for:Lcom/apk/v40;

    iput-object p2, p0, Lcom/apk/v40$do;->do:Ljava/lang/String;

    iput-object p3, p0, Lcom/apk/v40$do;->if:Lcom/apk/z60;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRewardVideoAdLoad()V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/apk/v40$do;->for:Lcom/apk/v40;

    .line 2
    iget-boolean v1, v0, Lcom/apk/f70;->for:Z

    if-eqz v1, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-virtual {v0}, Lcom/apk/f70;->f()V

    .line 4
    iget-object v0, p0, Lcom/apk/v40$do;->for:Lcom/apk/v40;

    iget-object v1, p0, Lcom/apk/v40$do;->do:Ljava/lang/String;

    iget-object v2, p0, Lcom/apk/v40$do;->if:Lcom/apk/z60;

    .line 5
    invoke-virtual {v0, v1, v2}, Lcom/apk/e70;->finally(Ljava/lang/String;Lcom/apk/z60;)V

    .line 6
    iget-object v3, p0, Lcom/apk/v40$do;->for:Lcom/apk/v40;

    iget-object v4, p0, Lcom/apk/v40$do;->do:Ljava/lang/String;

    iget-object v8, p0, Lcom/apk/v40$do;->if:Lcom/apk/z60;

    const-wide/16 v5, 0x1f40

    const/4 v7, 0x1

    .line 7
    invoke-virtual/range {v3 .. v8}, Lcom/apk/f70;->h(Ljava/lang/String;JZLcom/apk/b70;)V

    return-void
.end method

.method public onRewardVideoCached()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/apk/v40$do;->for:Lcom/apk/v40;

    .line 2
    iget-boolean v1, v0, Lcom/apk/f70;->for:Z

    if-eqz v1, :cond_0

    return-void

    .line 3
    :cond_0
    iget-boolean v1, v0, Lcom/apk/f70;->new:Z

    if-eqz v1, :cond_1

    return-void

    .line 4
    :cond_1
    invoke-virtual {v0}, Lcom/apk/f70;->f()V

    .line 5
    iget-object v0, p0, Lcom/apk/v40$do;->for:Lcom/apk/v40;

    iget-object v1, p0, Lcom/apk/v40$do;->do:Ljava/lang/String;

    iget-object v2, p0, Lcom/apk/v40$do;->if:Lcom/apk/z60;

    .line 6
    invoke-virtual {v0, v1, v2}, Lcom/apk/e70;->c(Ljava/lang/String;Lcom/apk/z60;)V

    return-void
.end method

.method public onRewardVideoLoadFail(Lcom/bytedance/msdk/api/AdError;)V
    .locals 4
    .param p1    # Lcom/bytedance/msdk/api/AdError;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/apk/v40$do;->for:Lcom/apk/v40;

    .line 2
    iget-boolean v1, v0, Lcom/apk/f70;->for:Z

    if-eqz v1, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-virtual {v0}, Lcom/apk/f70;->f()V

    .line 4
    iget-object v0, p0, Lcom/apk/v40$do;->for:Lcom/apk/v40;

    iget v1, p1, Lcom/bytedance/msdk/api/AdError;->code:I

    iget-object p1, p1, Lcom/bytedance/msdk/api/AdError;->message:Ljava/lang/String;

    iget-object v2, p0, Lcom/apk/v40$do;->do:Ljava/lang/String;

    iget-object v3, p0, Lcom/apk/v40$do;->if:Lcom/apk/z60;

    .line 5
    invoke-virtual {v0, v1, p1, v2, v3}, Lcom/apk/e70;->new(ILjava/lang/String;Ljava/lang/String;Lcom/apk/z60;)V

    .line 6
    iget-object p1, p0, Lcom/apk/v40$do;->for:Lcom/apk/v40;

    .line 7
    iget-object p1, p1, Lcom/apk/v40;->const:Lcom/bytedance/msdk/api/v2/ad/reward/GMRewardAd;

    if-eqz p1, :cond_1

    .line 8
    invoke-virtual {p1}, Lcom/bytedance/msdk/api/v2/ad/reward/GMRewardAd;->destroy()V

    .line 9
    iget-object p1, p0, Lcom/apk/v40$do;->for:Lcom/apk/v40;

    const/4 v0, 0x0

    .line 10
    iput-object v0, p1, Lcom/apk/v40;->const:Lcom/bytedance/msdk/api/v2/ad/reward/GMRewardAd;

    :cond_1
    return-void
.end method
