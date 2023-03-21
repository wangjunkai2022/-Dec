.class public Lcom/manhua/ui/view/ComicReadDirPopView$do;
.super Lcom/apk/r5;
.source "ComicReadDirPopView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/manhua/ui/view/ComicReadDirPopView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic do:Lcom/manhua/ui/view/ComicReadDirPopView;


# direct methods
.method public constructor <init>(Lcom/manhua/ui/view/ComicReadDirPopView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/manhua/ui/view/ComicReadDirPopView$do;->do:Lcom/manhua/ui/view/ComicReadDirPopView;

    invoke-direct {p0}, Lcom/apk/r5;-><init>()V

    return-void
.end method


# virtual methods
.method public else(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/manhua/data/bean/ComicChapterBean;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_2

    .line 1
    iget-object v0, p0, Lcom/manhua/ui/view/ComicReadDirPopView$do;->do:Lcom/manhua/ui/view/ComicReadDirPopView;

    .line 2
    iget-object v0, v0, Lcom/manhua/ui/view/ComicReadDirPopView;->import:Lcom/apk/ez;

    if-eqz v0, :cond_1

    .line 3
    iput-object p1, v0, Lcom/apk/ez;->do:Ljava/util/List;

    .line 4
    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 5
    iget-object v0, p0, Lcom/manhua/ui/view/ComicReadDirPopView$do;->do:Lcom/manhua/ui/view/ComicReadDirPopView;

    .line 6
    iget-object v1, v0, Lcom/manhua/ui/view/ComicReadDirPopView;->import:Lcom/apk/ez;

    .line 7
    iget-object v0, v0, Lcom/manhua/ui/view/ComicReadDirPopView;->while:Ljava/lang/String;

    .line 8
    iget-object v2, v1, Lcom/apk/ez;->for:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 9
    iput-object v0, v1, Lcom/apk/ez;->for:Ljava/lang/String;

    .line 10
    invoke-virtual {v1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 11
    :cond_0
    iget-object v0, p0, Lcom/manhua/ui/view/ComicReadDirPopView$do;->do:Lcom/manhua/ui/view/ComicReadDirPopView;

    .line 12
    invoke-virtual {v0}, Lcom/manhua/ui/view/ComicReadDirPopView;->catch()V

    .line 13
    :cond_1
    iget-object v0, p0, Lcom/manhua/ui/view/ComicReadDirPopView$do;->do:Lcom/manhua/ui/view/ComicReadDirPopView;

    .line 14
    iget-object v0, v0, Lcom/manhua/ui/view/ComicReadDirPopView;->throw:Lcom/apk/oz;

    if-eqz v0, :cond_2

    .line 15
    check-cast v0, Lcom/apk/h10;

    .line 16
    iget-object v0, v0, Lcom/apk/h10;->do:Lcom/manhua/ui/activity/ComicReadActivity;

    iget-object v0, v0, Lcom/manhua/ui/activity/ComicReadActivity;->mMenuView:Lcom/manhua/ui/widget/ComicReadMenuView;

    if-eqz v0, :cond_2

    .line 17
    invoke-virtual {v0, p1}, Lcom/manhua/ui/widget/ComicReadMenuView;->final(Ljava/util/List;)V

    .line 18
    :cond_2
    iget-object p1, p0, Lcom/manhua/ui/view/ComicReadDirPopView$do;->do:Lcom/manhua/ui/view/ComicReadDirPopView;

    .line 19
    iget-object v0, p1, Lcom/manhua/ui/view/ComicReadDirPopView;->break:Landroid/view/View;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_3

    .line 20
    iget-object p1, p1, Lcom/manhua/ui/view/ComicReadDirPopView;->break:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_3
    return-void
.end method
