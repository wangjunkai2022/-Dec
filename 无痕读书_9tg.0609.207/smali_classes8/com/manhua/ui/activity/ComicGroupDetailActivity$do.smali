.class public Lcom/manhua/ui/activity/ComicGroupDetailActivity$do;
.super Ljava/lang/Object;
.source "ComicGroupDetailActivity.java"

# interfaces
.implements Lcom/biquge/ebook/app/widget/ToggleEditTextView$if;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/manhua/ui/activity/ComicGroupDetailActivity;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic do:Lcom/manhua/ui/activity/ComicGroupDetailActivity;


# direct methods
.method public constructor <init>(Lcom/manhua/ui/activity/ComicGroupDetailActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/manhua/ui/activity/ComicGroupDetailActivity$do;->do:Lcom/manhua/ui/activity/ComicGroupDetailActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public do(Ljava/lang/String;)V
    .locals 3

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/manhua/ui/activity/ComicGroupDetailActivity$do;->do:Lcom/manhua/ui/activity/ComicGroupDetailActivity;

    .line 3
    iget-object v0, v0, Lcom/manhua/ui/activity/ComicGroupDetailActivity;->do:Lcom/manhua/data/bean/ComicCollectBean;

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0}, Lcom/manhua/data/bean/ComicCollectBean;->getCollectId()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/manhua/ui/activity/ComicGroupDetailActivity$do;->do:Lcom/manhua/ui/activity/ComicGroupDetailActivity;

    .line 5
    iget-object v1, v1, Lcom/manhua/ui/activity/ComicGroupDetailActivity;->do:Lcom/manhua/data/bean/ComicCollectBean;

    .line 6
    invoke-virtual {v1}, Lcom/manhua/data/bean/ComicCollectBean;->getGroupId()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    .line 7
    invoke-static {v0, v1, p1, v2}, Lcom/apk/n2;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_0
    return-void
.end method
