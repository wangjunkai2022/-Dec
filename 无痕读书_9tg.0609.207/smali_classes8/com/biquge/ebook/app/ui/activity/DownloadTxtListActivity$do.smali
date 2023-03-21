.class public Lcom/biquge/ebook/app/ui/activity/DownloadTxtListActivity$do;
.super Ljava/lang/Object;
.source "DownloadTxtListActivity.java"

# interfaces
.implements Lcom/apk/g1;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/biquge/ebook/app/ui/activity/DownloadTxtListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic do:Lcom/biquge/ebook/app/ui/activity/DownloadTxtListActivity;


# direct methods
.method public constructor <init>(Lcom/biquge/ebook/app/ui/activity/DownloadTxtListActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/biquge/ebook/app/ui/activity/DownloadTxtListActivity$do;->do:Lcom/biquge/ebook/app/ui/activity/DownloadTxtListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onData(Ljava/lang/Object;)V
    .locals 4

    const-string v0, "onItemClick"

    .line 1
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 2
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/activity/DownloadTxtListActivity$do;->do:Lcom/biquge/ebook/app/ui/activity/DownloadTxtListActivity;

    iget-object p1, p1, Lcom/biquge/ebook/app/ui/activity/DownloadTxtListActivity;->mViewPager:Lcom/shizhefei/view/viewpager/SViewPager;

    invoke-virtual {p1}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result p1

    const/4 v0, 0x0

    const v1, 0x7f100193

    const/4 v2, 0x1

    if-eqz p1, :cond_2

    if-eq p1, v2, :cond_1

    const/4 v3, 0x2

    if-eq p1, v3, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/activity/DownloadTxtListActivity$do;->do:Lcom/biquge/ebook/app/ui/activity/DownloadTxtListActivity;

    iget-object v3, p1, Lcom/biquge/ebook/app/ui/activity/DownloadTxtListActivity;->mDelBt:Landroid/widget/Button;

    new-array v2, v2, [Ljava/lang/Object;

    .line 4
    iget-object p1, p1, Lcom/biquge/ebook/app/ui/activity/DownloadTxtListActivity;->for:Lcom/biquge/ebook/app/ui/fragment/DownloadTxtListFragment;

    .line 5
    invoke-virtual {p1}, Lcom/biquge/ebook/app/ui/fragment/DownloadTxtListFragment;->i()I

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v2, v0

    invoke-static {v1, v2}, Lcom/apk/ze;->r(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 6
    :cond_1
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/activity/DownloadTxtListActivity$do;->do:Lcom/biquge/ebook/app/ui/activity/DownloadTxtListActivity;

    iget-object v3, p1, Lcom/biquge/ebook/app/ui/activity/DownloadTxtListActivity;->mDelBt:Landroid/widget/Button;

    new-array v2, v2, [Ljava/lang/Object;

    .line 7
    iget-object p1, p1, Lcom/biquge/ebook/app/ui/activity/DownloadTxtListActivity;->if:Lcom/biquge/ebook/app/ui/fragment/DownloadTxtListFragment;

    .line 8
    invoke-virtual {p1}, Lcom/biquge/ebook/app/ui/fragment/DownloadTxtListFragment;->i()I

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v2, v0

    invoke-static {v1, v2}, Lcom/apk/ze;->r(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 9
    :cond_2
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/activity/DownloadTxtListActivity$do;->do:Lcom/biquge/ebook/app/ui/activity/DownloadTxtListActivity;

    iget-object v3, p1, Lcom/biquge/ebook/app/ui/activity/DownloadTxtListActivity;->mDelBt:Landroid/widget/Button;

    new-array v2, v2, [Ljava/lang/Object;

    .line 10
    iget-object p1, p1, Lcom/biquge/ebook/app/ui/activity/DownloadTxtListActivity;->do:Lcom/biquge/ebook/app/ui/fragment/DownloadTxtListFragment;

    .line 11
    invoke-virtual {p1}, Lcom/biquge/ebook/app/ui/fragment/DownloadTxtListFragment;->i()I

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v2, v0

    invoke-static {v1, v2}, Lcom/apk/ze;->r(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    return-void

    .line 12
    :cond_3
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/activity/DownloadTxtListActivity$do;->do:Lcom/biquge/ebook/app/ui/activity/DownloadTxtListActivity;

    .line 13
    iget-object p1, p1, Lcom/biquge/ebook/app/ui/activity/DownloadTxtListActivity;->do:Lcom/biquge/ebook/app/ui/fragment/DownloadTxtListFragment;

    if-eqz p1, :cond_4

    .line 14
    invoke-virtual {p1}, Lcom/biquge/ebook/app/ui/fragment/DownloadTxtListFragment;->j()V

    .line 15
    :cond_4
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/activity/DownloadTxtListActivity$do;->do:Lcom/biquge/ebook/app/ui/activity/DownloadTxtListActivity;

    .line 16
    iget-object p1, p1, Lcom/biquge/ebook/app/ui/activity/DownloadTxtListActivity;->if:Lcom/biquge/ebook/app/ui/fragment/DownloadTxtListFragment;

    if-eqz p1, :cond_5

    .line 17
    invoke-virtual {p1}, Lcom/biquge/ebook/app/ui/fragment/DownloadTxtListFragment;->j()V

    .line 18
    :cond_5
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/activity/DownloadTxtListActivity$do;->do:Lcom/biquge/ebook/app/ui/activity/DownloadTxtListActivity;

    .line 19
    iget-object p1, p1, Lcom/biquge/ebook/app/ui/activity/DownloadTxtListActivity;->for:Lcom/biquge/ebook/app/ui/fragment/DownloadTxtListFragment;

    if-eqz p1, :cond_6

    .line 20
    invoke-virtual {p1}, Lcom/biquge/ebook/app/ui/fragment/DownloadTxtListFragment;->j()V

    :cond_6
    return-void
.end method
