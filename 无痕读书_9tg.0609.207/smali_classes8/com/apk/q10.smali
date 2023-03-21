.class public Lcom/apk/q10;
.super Ljava/lang/Object;
.source "ComicDetailDirFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field public final synthetic do:Lcom/manhua/ui/fragment/ComicDetailDirFragment;


# direct methods
.method public constructor <init>(Lcom/manhua/ui/fragment/ComicDetailDirFragment;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/apk/q10;->do:Lcom/manhua/ui/fragment/ComicDetailDirFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/apk/q10;->do:Lcom/manhua/ui/fragment/ComicDetailDirFragment;

    .line 2
    iget-object p1, p1, Lcom/manhua/ui/fragment/ComicDetailDirFragment;->if:Lcom/apk/ez;

    .line 3
    iget-object p1, p1, Lcom/apk/ez;->do:Ljava/util/List;

    invoke-interface {p1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/manhua/data/bean/ComicChapterBean;

    .line 4
    invoke-virtual {p1}, Lcom/manhua/data/bean/ComicChapterBean;->isGroup()Z

    move-result p2

    if-nez p2, :cond_0

    .line 5
    iget-object p2, p0, Lcom/apk/q10;->do:Lcom/manhua/ui/fragment/ComicDetailDirFragment;

    invoke-virtual {p2}, Lcom/apk/g6;->getSupportActivity()Lcom/apk/i6;

    move-result-object p2

    iget-object p3, p0, Lcom/apk/q10;->do:Lcom/manhua/ui/fragment/ComicDetailDirFragment;

    .line 6
    iget-object p3, p3, Lcom/manhua/ui/fragment/ComicDetailDirFragment;->do:Lcom/manhua/data/bean/ComicBean;

    .line 7
    invoke-virtual {p1}, Lcom/manhua/data/bean/ComicChapterBean;->getOid()Ljava/lang/String;

    move-result-object p1

    const/4 p4, 0x0

    invoke-static {p2, p3, p1, p4}, Lcom/manhua/ui/activity/ComicReadActivity;->H(Landroid/app/Activity;Lcom/manhua/data/bean/ComicBean;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
