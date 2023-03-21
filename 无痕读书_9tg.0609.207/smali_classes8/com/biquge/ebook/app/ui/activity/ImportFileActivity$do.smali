.class public Lcom/biquge/ebook/app/ui/activity/ImportFileActivity$do;
.super Ljava/lang/Object;
.source "ImportFileActivity.java"

# interfaces
.implements Lcom/apk/l1;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/biquge/ebook/app/ui/activity/ImportFileActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic do:Lcom/biquge/ebook/app/ui/activity/ImportFileActivity;


# direct methods
.method public constructor <init>(Lcom/biquge/ebook/app/ui/activity/ImportFileActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/biquge/ebook/app/ui/activity/ImportFileActivity$do;->do:Lcom/biquge/ebook/app/ui/activity/ImportFileActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public do()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/activity/ImportFileActivity$do;->do:Lcom/biquge/ebook/app/ui/activity/ImportFileActivity;

    iget-object v1, v0, Lcom/biquge/ebook/app/ui/activity/ImportFileActivity;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v1}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result v1

    .line 2
    invoke-virtual {v0, v1}, Lcom/biquge/ebook/app/ui/activity/ImportFileActivity;->l(I)V

    return-void
.end method
