.class public Lcom/apk/f10;
.super Ljava/lang/Object;
.source "ComicNovelDirActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field public final synthetic do:Lcom/manhua/ui/activity/ComicNovelDirActivity;


# direct methods
.method public constructor <init>(Lcom/manhua/ui/activity/ComicNovelDirActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/apk/f10;->do:Lcom/manhua/ui/activity/ComicNovelDirActivity;

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
    iget-object p1, p0, Lcom/apk/f10;->do:Lcom/manhua/ui/activity/ComicNovelDirActivity;

    .line 2
    iget-object p1, p1, Lcom/manhua/ui/activity/ComicNovelDirActivity;->do:Lcom/apk/ez;

    .line 3
    iget-object p1, p1, Lcom/apk/ez;->do:Ljava/util/List;

    invoke-interface {p1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/manhua/data/bean/ComicChapterBean;

    .line 4
    invoke-virtual {p1}, Lcom/manhua/data/bean/ComicChapterBean;->isGroup()Z

    move-result p2

    if-eqz p2, :cond_0

    return-void

    .line 5
    :cond_0
    iget-object p2, p0, Lcom/apk/f10;->do:Lcom/manhua/ui/activity/ComicNovelDirActivity;

    .line 6
    iget-object p3, p2, Lcom/manhua/ui/activity/ComicNovelDirActivity;->if:Lcom/manhua/data/bean/ComicCollectBean;

    if-eqz p3, :cond_1

    .line 7
    invoke-virtual {p1}, Lcom/manhua/data/bean/ComicChapterBean;->getOid()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p3, p1}, Lcom/manhua/ui/activity/ComicReadActivity;->I(Landroid/app/Activity;Lcom/manhua/data/bean/ComicCollectBean;Ljava/lang/String;)V

    :cond_1
    return-void
.end method
