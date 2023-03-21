.class public Lcom/biquge/ebook/app/ui/book/NewBookReadActivity$case;
.super Ljava/lang/Object;
.source "NewBookReadActivity.java"

# interfaces
.implements Lcom/biquge/ebook/app/widget/RewardVideoAdView$if;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->F(ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic do:Z

.field public final synthetic if:Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;


# direct methods
.method public constructor <init>(Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;Z)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity$case;->if:Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;

    iput-boolean p2, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity$case;->do:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public do()V
    .locals 4

    .line 1
    invoke-static {}, Lcom/apk/f;->catch()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity$case;->if:Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;

    iget-boolean v1, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity$case;->do:Z

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->F(ZZ)V

    const/16 v0, 0x1388

    const-string v1, "SP_VIDEO_AD_PRELOAD_MOODULE_B_COUNTDOWN_KEY"

    .line 3
    invoke-static {v1, v0}, Lcom/apk/ze;->instanceof(Ljava/lang/String;I)I

    move-result v0

    if-lez v0, :cond_0

    .line 4
    iget-object v1, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity$case;->if:Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;

    .line 5
    iget-object v1, v1, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->catch:Lcom/apk/h2;

    if-eqz v1, :cond_0

    .line 6
    invoke-virtual {v1}, Lcom/apk/h2;->t()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    move v2, v0

    .line 7
    :goto_0
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity$case;->if:Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;

    new-instance v1, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity$case$do;

    invoke-direct {v1, p0}, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity$case$do;-><init>(Lcom/biquge/ebook/app/ui/book/NewBookReadActivity$case;)V

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/apk/i6;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_2

    .line 8
    :cond_1
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity$case;->if:Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;

    sget-object v1, Lcom/apk/hf;->do:Lcom/apk/hf;

    iget-boolean v2, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity$case;->do:Z

    if-eqz v2, :cond_2

    const/16 v2, 0x27e7

    goto :goto_1

    :cond_2
    const/16 v2, 0x27e5

    :goto_1
    invoke-static {v0, v1, v2}, Lcom/biquge/ebook/app/ui/activity/RewardVideoActivity;->o(Landroid/app/Activity;Lcom/apk/hf;I)V

    :goto_2
    return-void
.end method

.method public if()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity$case;->if:Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;

    const v1, 0x7f100226

    .line 2
    invoke-static {v1}, Lcom/apk/ze;->q(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "9"

    .line 3
    invoke-static {v0, v1, v2}, Lcom/biquge/ebook/app/ui/activity/FragmentManagerActivity;->i(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onClose()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity$case;->if:Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;

    .line 2
    iget-object v0, v0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->c:Lcom/biquge/ebook/app/widget/RewardVideoAdView;

    if-eqz v0, :cond_0

    const/16 v1, 0x8

    .line 3
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 4
    :cond_0
    invoke-static {}, Lcom/apk/r0;->catch()Lcom/apk/r0;

    move-result-object v0

    const/4 v1, 0x1

    .line 5
    iput-boolean v1, v0, Lcom/apk/n0;->extends:Z

    .line 6
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity$case;->if:Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;

    iget-object v0, v0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->mViewPager:Lcom/manhua/ui/widget/ComicReaderViewpager;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 7
    invoke-virtual {v0, v1}, Lcom/manhua/ui/widget/ComicReaderViewpager;->setCanScroll(Z)V

    .line 8
    :cond_1
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity$case;->if:Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;

    iget-object v0, v0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->mRecyclerView:Lcom/manhua/ui/widget/PageRecyclerView;

    if-eqz v0, :cond_2

    .line 9
    invoke-virtual {v0, v1}, Lcom/manhua/ui/widget/PageRecyclerView;->setScrollEnabled(Z)V

    :cond_2
    return-void
.end method
