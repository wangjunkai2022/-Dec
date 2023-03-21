.class public Lcom/biquge/ebook/app/ui/activity/RewardVideoActivity$if;
.super Ljava/lang/Object;
.source "RewardVideoActivity.java"

# interfaces
.implements Lcom/apk/v60;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/biquge/ebook/app/ui/activity/RewardVideoActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic do:Lcom/biquge/ebook/app/ui/activity/RewardVideoActivity;


# direct methods
.method public constructor <init>(Lcom/biquge/ebook/app/ui/activity/RewardVideoActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/biquge/ebook/app/ui/activity/RewardVideoActivity$if;->do:Lcom/biquge/ebook/app/ui/activity/RewardVideoActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public case()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/activity/RewardVideoActivity$if;->do:Lcom/biquge/ebook/app/ui/activity/RewardVideoActivity;

    invoke-static {v0}, Lcom/biquge/ebook/app/ui/activity/RewardVideoActivity;->j(Lcom/biquge/ebook/app/ui/activity/RewardVideoActivity;)V

    return-void
.end method

.method public else()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/activity/RewardVideoActivity$if;->do:Lcom/biquge/ebook/app/ui/activity/RewardVideoActivity;

    invoke-static {v0}, Lcom/biquge/ebook/app/ui/activity/RewardVideoActivity;->j(Lcom/biquge/ebook/app/ui/activity/RewardVideoActivity;)V

    return-void
.end method

.method public if(ILjava/lang/String;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/activity/RewardVideoActivity$if;->do:Lcom/biquge/ebook/app/ui/activity/RewardVideoActivity;

    invoke-static {p1}, Lcom/biquge/ebook/app/ui/activity/RewardVideoActivity;->k(Lcom/biquge/ebook/app/ui/activity/RewardVideoActivity;)V

    return-void
.end method

.method public onAdClick()V
    .locals 0

    return-void
.end method

.method public onAdClose()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/activity/RewardVideoActivity$if;->do:Lcom/biquge/ebook/app/ui/activity/RewardVideoActivity;

    .line 2
    iget v1, v0, Lcom/biquge/ebook/app/ui/activity/RewardVideoActivity;->for:I

    const/16 v2, 0xc

    if-ne v1, v2, :cond_0

    .line 3
    invoke-virtual {v0}, Lcom/biquge/ebook/app/ui/activity/RewardVideoActivity;->u()V

    .line 4
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/activity/RewardVideoActivity$if;->do:Lcom/biquge/ebook/app/ui/activity/RewardVideoActivity;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setResult(I)V

    .line 5
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/activity/RewardVideoActivity$if;->do:Lcom/biquge/ebook/app/ui/activity/RewardVideoActivity;

    invoke-virtual {v0}, Lcom/apk/f6;->finish()V

    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {v0}, Lcom/biquge/ebook/app/ui/activity/RewardVideoActivity;->u()V

    :goto_0
    return-void
.end method

.method public onAdLoaded()V
    .locals 0

    return-void
.end method

.method public onAdShow()V
    .locals 0

    return-void
.end method

.method public onVideoCached()V
    .locals 0

    return-void
.end method
