.class public Lcom/manhua/ui/activity/ComicDetailActivity$new;
.super Ljava/lang/Object;
.source "ComicDetailActivity.java"

# interfaces
.implements Lcom/apk/o0$else;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/manhua/ui/activity/ComicDetailActivity;->menuClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic do:Lcom/manhua/ui/activity/ComicDetailActivity;


# direct methods
.method public constructor <init>(Lcom/manhua/ui/activity/ComicDetailActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/manhua/ui/activity/ComicDetailActivity$new;->do:Lcom/manhua/ui/activity/ComicDetailActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public do(Z)V
    .locals 2

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    .line 1
    iget-object p1, p0, Lcom/manhua/ui/activity/ComicDetailActivity$new;->do:Lcom/manhua/ui/activity/ComicDetailActivity;

    .line 2
    iget-boolean v1, p1, Lcom/manhua/ui/activity/ComicDetailActivity;->try:Z

    if-nez v1, :cond_0

    .line 3
    iget-object p1, p1, Lcom/manhua/ui/activity/ComicDetailActivity;->for:Lcom/manhua/data/bean/ComicBean;

    .line 4
    invoke-static {p1, v0}, Lcom/apk/mu;->w(Lcom/manhua/data/bean/ComicBean;Z)V

    .line 5
    :cond_0
    iget-object p1, p0, Lcom/manhua/ui/activity/ComicDetailActivity$new;->do:Lcom/manhua/ui/activity/ComicDetailActivity;

    invoke-static {p1, v0}, Lcom/manhua/ui/activity/ComicDetailActivity;->j(Lcom/manhua/ui/activity/ComicDetailActivity;Z)V

    return-void
.end method
