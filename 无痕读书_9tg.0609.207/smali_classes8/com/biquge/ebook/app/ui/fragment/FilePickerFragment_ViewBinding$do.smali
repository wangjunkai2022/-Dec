.class public Lcom/biquge/ebook/app/ui/fragment/FilePickerFragment_ViewBinding$do;
.super Lbutterknife/internal/DebouncingOnClickListener;
.source "FilePickerFragment_ViewBinding.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/biquge/ebook/app/ui/fragment/FilePickerFragment_ViewBinding;-><init>(Lcom/biquge/ebook/app/ui/fragment/FilePickerFragment;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic do:Lcom/biquge/ebook/app/ui/fragment/FilePickerFragment;


# direct methods
.method public constructor <init>(Lcom/biquge/ebook/app/ui/fragment/FilePickerFragment_ViewBinding;Lcom/biquge/ebook/app/ui/fragment/FilePickerFragment;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/biquge/ebook/app/ui/fragment/FilePickerFragment_ViewBinding$do;->do:Lcom/biquge/ebook/app/ui/fragment/FilePickerFragment;

    invoke-direct {p0}, Lbutterknife/internal/DebouncingOnClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public doClick(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/fragment/FilePickerFragment_ViewBinding$do;->do:Lcom/biquge/ebook/app/ui/fragment/FilePickerFragment;

    if-eqz p1, :cond_2

    .line 2
    new-instance v0, Ljava/io/File;

    iget-object v1, p1, Lcom/biquge/ebook/app/ui/fragment/FilePickerFragment;->for:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v1, "/"

    .line 3
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    iput-object v0, p1, Lcom/biquge/ebook/app/ui/fragment/FilePickerFragment;->for:Ljava/lang/String;

    .line 5
    iget-object v1, p1, Lcom/biquge/ebook/app/ui/fragment/FilePickerFragment;->if:Lcom/biquge/ebook/app/widget/filepicker/FilePickerAdapter;

    invoke-virtual {p1, v0}, Lcom/biquge/ebook/app/ui/fragment/FilePickerFragment;->synchronized(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 6
    invoke-virtual {v1, v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setNewData(Ljava/util/List;)V

    .line 7
    invoke-virtual {v1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getItemCount()I

    move-result v0

    new-array v0, v0, [Z

    iput-object v0, v1, Lcom/biquge/ebook/app/widget/filepicker/FilePickerAdapter;->do:[Z

    .line 8
    iget-object v0, p1, Lcom/biquge/ebook/app/ui/fragment/FilePickerFragment;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    .line 9
    iget-object v0, p1, Lcom/biquge/ebook/app/ui/fragment/FilePickerFragment;->for:Ljava/lang/String;

    .line 10
    iget-object v1, p1, Lcom/biquge/ebook/app/ui/fragment/FilePickerFragment;->mTvPath:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 11
    iget-object v0, p1, Lcom/biquge/ebook/app/ui/fragment/FilePickerFragment;->new:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->clear()V

    .line 12
    iget-object p1, p1, Lcom/biquge/ebook/app/ui/fragment/FilePickerFragment;->try:Lcom/apk/l1;

    if-eqz p1, :cond_1

    .line 13
    invoke-interface {p1}, Lcom/apk/l1;->do()V

    :cond_1
    :goto_0
    return-void

    :cond_2
    const/4 p1, 0x0

    .line 14
    throw p1
.end method
