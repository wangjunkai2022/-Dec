.class public Lcom/biquge/ebook/app/ui/activity/ImportFileActivity_ViewBinding$do;
.super Lbutterknife/internal/DebouncingOnClickListener;
.source "ImportFileActivity_ViewBinding.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/biquge/ebook/app/ui/activity/ImportFileActivity_ViewBinding;-><init>(Lcom/biquge/ebook/app/ui/activity/ImportFileActivity;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic do:Lcom/biquge/ebook/app/ui/activity/ImportFileActivity;


# direct methods
.method public constructor <init>(Lcom/biquge/ebook/app/ui/activity/ImportFileActivity_ViewBinding;Lcom/biquge/ebook/app/ui/activity/ImportFileActivity;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/biquge/ebook/app/ui/activity/ImportFileActivity_ViewBinding$do;->do:Lcom/biquge/ebook/app/ui/activity/ImportFileActivity;

    invoke-direct {p0}, Lbutterknife/internal/DebouncingOnClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public doClick(Landroid/view/View;)V
    .locals 4

    .line 1
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/activity/ImportFileActivity_ViewBinding$do;->do:Lcom/biquge/ebook/app/ui/activity/ImportFileActivity;

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    .line 2
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 3
    iget-object v2, p1, Lcom/biquge/ebook/app/ui/activity/ImportFileActivity;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v2}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result v2

    if-nez v2, :cond_0

    .line 4
    iget-object v2, p1, Lcom/biquge/ebook/app/ui/activity/ImportFileActivity;->if:Lcom/biquge/ebook/app/ui/fragment/SmartScanFragment;

    .line 5
    iget-object v2, v2, Lcom/biquge/ebook/app/ui/fragment/SmartScanFragment;->for:Ljava/util/LinkedHashMap;

    .line 6
    invoke-virtual {v1, v2}, Ljava/util/LinkedHashMap;->putAll(Ljava/util/Map;)V

    goto :goto_0

    .line 7
    :cond_0
    iget-object v2, p1, Lcom/biquge/ebook/app/ui/activity/ImportFileActivity;->for:Lcom/biquge/ebook/app/ui/fragment/FilePickerFragment;

    .line 8
    iget-object v2, v2, Lcom/biquge/ebook/app/ui/fragment/FilePickerFragment;->new:Ljava/util/LinkedHashMap;

    .line 9
    invoke-virtual {v1, v2}, Ljava/util/LinkedHashMap;->putAll(Ljava/util/Map;)V

    .line 10
    :goto_0
    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->size()I

    move-result v2

    if-lez v2, :cond_1

    .line 11
    new-instance v2, Lcom/apk/b1;

    invoke-direct {v2}, Lcom/apk/b1;-><init>()V

    new-instance v3, Lcom/apk/v7;

    invoke-direct {v3, p1, v0, v0, v1}, Lcom/apk/v7;-><init>(Lcom/biquge/ebook/app/ui/activity/ImportFileActivity;Landroid/net/Uri;Ljava/lang/String;Ljava/util/LinkedHashMap;)V

    invoke-virtual {v2, v3}, Lcom/apk/b1;->do(Lcom/apk/c1;)Lcom/apk/b1;

    :cond_1
    return-void

    .line 12
    :cond_2
    throw v0
.end method
