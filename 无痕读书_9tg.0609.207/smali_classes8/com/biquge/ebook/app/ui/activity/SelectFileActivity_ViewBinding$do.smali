.class public Lcom/biquge/ebook/app/ui/activity/SelectFileActivity_ViewBinding$do;
.super Lbutterknife/internal/DebouncingOnClickListener;
.source "SelectFileActivity_ViewBinding.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/biquge/ebook/app/ui/activity/SelectFileActivity_ViewBinding;-><init>(Lcom/biquge/ebook/app/ui/activity/SelectFileActivity;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic do:Lcom/biquge/ebook/app/ui/activity/SelectFileActivity;


# direct methods
.method public constructor <init>(Lcom/biquge/ebook/app/ui/activity/SelectFileActivity_ViewBinding;Lcom/biquge/ebook/app/ui/activity/SelectFileActivity;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/biquge/ebook/app/ui/activity/SelectFileActivity_ViewBinding$do;->do:Lcom/biquge/ebook/app/ui/activity/SelectFileActivity;

    invoke-direct {p0}, Lbutterknife/internal/DebouncingOnClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public doClick(Landroid/view/View;)V
    .locals 3

    .line 1
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/activity/SelectFileActivity_ViewBinding$do;->do:Lcom/biquge/ebook/app/ui/activity/SelectFileActivity;

    .line 2
    iget-object v0, p1, Lcom/biquge/ebook/app/ui/activity/SelectFileActivity;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v0}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 3
    iget-object v0, p1, Lcom/biquge/ebook/app/ui/activity/SelectFileActivity;->do:Lcom/biquge/ebook/app/ui/fragment/SmartScanFragment;

    .line 4
    iget-object v0, v0, Lcom/biquge/ebook/app/ui/fragment/SmartScanFragment;->for:Ljava/util/LinkedHashMap;

    if-eqz v0, :cond_1

    .line 5
    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 6
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Ljava/io/File;

    goto :goto_0

    .line 7
    :cond_0
    iget-object v0, p1, Lcom/biquge/ebook/app/ui/activity/SelectFileActivity;->if:Lcom/biquge/ebook/app/ui/fragment/FilePickerFragment;

    .line 8
    iget-object v0, v0, Lcom/biquge/ebook/app/ui/fragment/FilePickerFragment;->new:Ljava/util/LinkedHashMap;

    if-eqz v0, :cond_1

    .line 9
    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 10
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Ljava/io/File;

    :cond_1
    :goto_0
    if-eqz v1, :cond_2

    .line 11
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 12
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    const-string v2, "filePath"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 v1, -0x1

    .line 13
    invoke-virtual {p1, v1, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 14
    invoke-virtual {p1}, Lcom/apk/f6;->finish()V

    :cond_2
    return-void
.end method
