.class public Lcom/apk/yc;
.super Ljava/lang/Object;
.source "NovelBatchCachePopup.java"

# interfaces
.implements Lcom/apk/uv;


# instance fields
.field public final synthetic do:Lcom/biquge/ebook/app/ui/view/NovelBatchCachePopup;


# direct methods
.method public constructor <init>(Lcom/biquge/ebook/app/ui/view/NovelBatchCachePopup;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/apk/yc;->do:Lcom/biquge/ebook/app/ui/view/NovelBatchCachePopup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConfirm()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/apk/yc;->do:Lcom/biquge/ebook/app/ui/view/NovelBatchCachePopup;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    const/16 v1, 0xe

    invoke-static {v0, v1}, Lcom/biquge/ebook/app/ui/activity/RewardVideoActivity;->r(Landroid/content/Context;I)V

    return-void
.end method
