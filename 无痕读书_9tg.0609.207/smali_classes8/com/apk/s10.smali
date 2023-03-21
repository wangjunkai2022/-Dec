.class public Lcom/apk/s10;
.super Ljava/lang/Object;
.source "ComicNewStoreFragment.java"

# interfaces
.implements Lcom/apk/ts;


# instance fields
.field public final synthetic do:Lcom/manhua/ui/fragment/ComicNewStoreFragment;


# direct methods
.method public constructor <init>(Lcom/manhua/ui/fragment/ComicNewStoreFragment;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/apk/s10;->do:Lcom/manhua/ui/fragment/ComicNewStoreFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public do(Lcom/apk/ss;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/apk/s10;->do:Lcom/manhua/ui/fragment/ComicNewStoreFragment;

    invoke-static {p1}, Lcom/manhua/ui/fragment/ComicNewStoreFragment;->a(Lcom/manhua/ui/fragment/ComicNewStoreFragment;)V

    return-void
.end method

.method public if(Lcom/apk/ss;Landroid/view/View;Landroid/view/View;)Z
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/apk/s10;->do:Lcom/manhua/ui/fragment/ComicNewStoreFragment;

    .line 2
    iget-object p2, p1, Lcom/manhua/ui/fragment/ComicNewStoreFragment;->for:Lcom/biquge/ebook/app/widget/ScrollHeaderLayout;

    .line 3
    iget-boolean p2, p2, Lcom/biquge/ebook/app/widget/ScrollHeaderLayout;->do:Z

    if-nez p2, :cond_0

    .line 4
    iget-object p1, p1, Lcom/manhua/ui/fragment/ComicNewStoreFragment;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 5
    invoke-static {p1}, Lcom/apk/eg;->case(Landroid/view/View;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
