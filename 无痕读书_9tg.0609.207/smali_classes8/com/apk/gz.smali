.class public Lcom/apk/gz;
.super Lcom/apk/bg;
.source "ComicNewStoreAdapter.java"


# instance fields
.field public final synthetic do:Lcom/manhua/data/bean/ComicBean;

.field public final synthetic if:Lcom/manhua/adapter/ComicNewStoreAdapter;


# direct methods
.method public constructor <init>(Lcom/manhua/adapter/ComicNewStoreAdapter;Lcom/manhua/data/bean/ComicBean;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/apk/gz;->if:Lcom/manhua/adapter/ComicNewStoreAdapter;

    iput-object p2, p0, Lcom/apk/gz;->do:Lcom/manhua/data/bean/ComicBean;

    invoke-direct {p0}, Lcom/apk/bg;-><init>()V

    return-void
.end method


# virtual methods
.method public onNoDoubleClick(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/apk/gz;->do:Lcom/manhua/data/bean/ComicBean;

    if-eqz p1, :cond_0

    .line 2
    iget-object v0, p0, Lcom/apk/gz;->if:Lcom/manhua/adapter/ComicNewStoreAdapter;

    .line 3
    iget-object v0, v0, Lcom/chad/library/adapter/base/BaseQuickAdapter;->mContext:Landroid/content/Context;

    .line 4
    invoke-static {v0, p1}, Lcom/manhua/ui/activity/ComicDetailActivity;->n(Landroid/content/Context;Lcom/manhua/data/bean/ComicBean;)V

    :cond_0
    return-void
.end method
