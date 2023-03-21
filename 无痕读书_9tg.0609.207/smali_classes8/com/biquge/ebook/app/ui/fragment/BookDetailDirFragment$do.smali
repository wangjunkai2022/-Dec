.class public Lcom/biquge/ebook/app/ui/fragment/BookDetailDirFragment$do;
.super Lcom/apk/u5;
.source "BookDetailDirFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/biquge/ebook/app/ui/fragment/BookDetailDirFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic do:Lcom/biquge/ebook/app/ui/fragment/BookDetailDirFragment;


# direct methods
.method public constructor <init>(Lcom/biquge/ebook/app/ui/fragment/BookDetailDirFragment;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/biquge/ebook/app/ui/fragment/BookDetailDirFragment$do;->do:Lcom/biquge/ebook/app/ui/fragment/BookDetailDirFragment;

    invoke-direct {p0}, Lcom/apk/u5;-><init>()V

    return-void
.end method


# virtual methods
.method public goto(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/biquge/ebook/app/bean/ChapterBean;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/fragment/BookDetailDirFragment$do;->do:Lcom/biquge/ebook/app/ui/fragment/BookDetailDirFragment;

    iget-object v0, v0, Lcom/biquge/ebook/app/ui/fragment/BookDetailDirFragment;->mDirCountTv:Landroid/widget/TextView;

    const v1, 0x7f100064

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Lcom/apk/ze;->r(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/fragment/BookDetailDirFragment$do;->do:Lcom/biquge/ebook/app/ui/fragment/BookDetailDirFragment;

    .line 3
    iget-object v0, v0, Lcom/biquge/ebook/app/ui/fragment/BookDetailDirFragment;->if:Lcom/apk/k;

    if-eqz v0, :cond_0

    .line 4
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/fragment/BookDetailDirFragment$do;->do:Lcom/biquge/ebook/app/ui/fragment/BookDetailDirFragment;

    .line 5
    iget-object v0, v0, Lcom/biquge/ebook/app/ui/fragment/BookDetailDirFragment;->if:Lcom/apk/k;

    .line 6
    invoke-virtual {v0, p1}, Lcom/apk/k;->for(Ljava/util/List;)V

    .line 7
    :cond_0
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/fragment/BookDetailDirFragment$do;->do:Lcom/biquge/ebook/app/ui/fragment/BookDetailDirFragment;

    iget-object p1, p1, Lcom/biquge/ebook/app/ui/fragment/BookDetailDirFragment;->mLoadingView:Lcom/manhua/ui/widget/PublicLoadingView;

    if-eqz p1, :cond_2

    .line 8
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/fragment/BookDetailDirFragment$do;->do:Lcom/biquge/ebook/app/ui/fragment/BookDetailDirFragment;

    iget-object p1, p1, Lcom/biquge/ebook/app/ui/fragment/BookDetailDirFragment;->mLoadingView:Lcom/manhua/ui/widget/PublicLoadingView;

    invoke-virtual {p1}, Lcom/manhua/ui/widget/PublicLoadingView;->for()V

    goto :goto_0

    .line 9
    :cond_1
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/fragment/BookDetailDirFragment$do;->do:Lcom/biquge/ebook/app/ui/fragment/BookDetailDirFragment;

    .line 10
    iget-object p1, p1, Lcom/biquge/ebook/app/ui/fragment/BookDetailDirFragment;->if:Lcom/apk/k;

    if-eqz p1, :cond_2

    .line 11
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/fragment/BookDetailDirFragment$do;->do:Lcom/biquge/ebook/app/ui/fragment/BookDetailDirFragment;

    .line 12
    iget-object p1, p1, Lcom/biquge/ebook/app/ui/fragment/BookDetailDirFragment;->if:Lcom/apk/k;

    .line 13
    invoke-virtual {p1}, Lcom/apk/k;->getCount()I

    move-result p1

    if-nez p1, :cond_2

    .line 14
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/fragment/BookDetailDirFragment$do;->do:Lcom/biquge/ebook/app/ui/fragment/BookDetailDirFragment;

    iget-object p1, p1, Lcom/biquge/ebook/app/ui/fragment/BookDetailDirFragment;->mLoadingView:Lcom/manhua/ui/widget/PublicLoadingView;

    if-eqz p1, :cond_2

    .line 15
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/fragment/BookDetailDirFragment$do;->do:Lcom/biquge/ebook/app/ui/fragment/BookDetailDirFragment;

    iget-object p1, p1, Lcom/biquge/ebook/app/ui/fragment/BookDetailDirFragment;->mLoadingView:Lcom/manhua/ui/widget/PublicLoadingView;

    const/4 v0, 0x0

    .line 16
    invoke-virtual {p1, v0}, Lcom/manhua/ui/widget/PublicLoadingView;->setError(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 17
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_2
    :goto_0
    return-void
.end method
