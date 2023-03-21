.class public Lcom/biquge/ebook/app/ui/fragment/FilePickerFragment;
.super Lcom/apk/g6;
.source "FilePickerFragment.java"

# interfaces
.implements Lcom/chad/library/adapter/base/BaseQuickAdapter$OnItemClickListener;


# instance fields
.field public case:Z

.field public do:Lcom/apk/wh;

.field public for:Ljava/lang/String;

.field public if:Lcom/biquge/ebook/app/widget/filepicker/FilePickerAdapter;

.field public mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f09048c
    .end annotation
.end field

.field public mTvPath:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0905db
    .end annotation
.end field

.field public new:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field

.field public try:Lcom/apk/l1;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/apk/g6;-><init>()V

    .line 2
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/biquge/ebook/app/ui/fragment/FilePickerFragment;->new:Ljava/util/LinkedHashMap;

    return-void
.end method


# virtual methods
.method public getLayoutId()I
    .locals 1

    const v0, 0x7f0c00bb

    return v0
.end method

.method public initData()V
    .locals 2

    .line 1
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mounted"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/Download"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/biquge/ebook/app/ui/fragment/FilePickerFragment;->for:Ljava/lang/String;

    .line 3
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/biquge/ebook/app/ui/fragment/FilePickerFragment;->for:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1

    .line 4
    invoke-static {}, Lcom/apk/a6;->else()Lcom/apk/a6;

    move-result-object v0

    invoke-virtual {v0}, Lcom/apk/a6;->try()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/biquge/ebook/app/ui/fragment/FilePickerFragment;->for:Ljava/lang/String;

    .line 5
    :cond_1
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/fragment/FilePickerFragment;->mTvPath:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/biquge/ebook/app/ui/fragment/FilePickerFragment;->for:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 6
    new-instance v0, Lcom/apk/wh;

    const-string v1, "txt"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/apk/wh;-><init>([Ljava/lang/String;)V

    iput-object v0, p0, Lcom/biquge/ebook/app/ui/fragment/FilePickerFragment;->do:Lcom/apk/wh;

    .line 7
    new-instance v1, Lcom/biquge/ebook/app/widget/filepicker/FilePickerAdapter;

    invoke-direct {v1, v0}, Lcom/biquge/ebook/app/widget/filepicker/FilePickerAdapter;-><init>(Lcom/apk/wh;)V

    iput-object v1, p0, Lcom/biquge/ebook/app/ui/fragment/FilePickerFragment;->if:Lcom/biquge/ebook/app/widget/filepicker/FilePickerAdapter;

    .line 8
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/fragment/FilePickerFragment;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 9
    invoke-static {}, Lcom/apk/o;->for()Lcom/apk/o;

    move-result-object v0

    new-instance v1, Lcom/apk/ob;

    invoke-direct {v1, p0}, Lcom/apk/ob;-><init>(Lcom/biquge/ebook/app/ui/fragment/FilePickerFragment;)V

    .line 10
    iget-object v0, v0, Lcom/apk/o;->do:Ljava/util/concurrent/ThreadPoolExecutor;

    if-eqz v0, :cond_2

    .line 11
    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 12
    :cond_2
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/fragment/FilePickerFragment;->if:Lcom/biquge/ebook/app/widget/filepicker/FilePickerAdapter;

    invoke-virtual {v0, p0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setOnItemClickListener(Lcom/chad/library/adapter/base/BaseQuickAdapter$OnItemClickListener;)V

    .line 13
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/fragment/FilePickerFragment;->if:Lcom/biquge/ebook/app/widget/filepicker/FilePickerAdapter;

    if-eqz v0, :cond_3

    iget-boolean v1, p0, Lcom/biquge/ebook/app/ui/fragment/FilePickerFragment;->case:Z

    if-eqz v1, :cond_3

    const/4 v1, 0x1

    .line 14
    iput-boolean v1, v0, Lcom/biquge/ebook/app/widget/filepicker/FilePickerAdapter;->new:Z

    :cond_3
    return-void
.end method

.method public initView()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/fragment/FilePickerFragment;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lcom/apk/g6;->getSupportActivity()Lcom/apk/i6;

    move-result-object v2

    invoke-direct {v1, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 2
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/fragment/FilePickerFragment;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setHasFixedSize(Z)V

    .line 3
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/fragment/FilePickerFragment;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-static {v0}, Lcom/apk/ze;->else(Landroidx/recyclerview/widget/RecyclerView;)V

    return-void
.end method

.method public onItemClick(Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 0

    .line 1
    :try_start_0
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/fragment/FilePickerFragment;->if:Lcom/biquge/ebook/app/widget/filepicker/FilePickerAdapter;

    invoke-virtual {p1, p3}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/io/File;

    if-eqz p1, :cond_4

    .line 2
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 3
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    .line 4
    iput-object p1, p0, Lcom/biquge/ebook/app/ui/fragment/FilePickerFragment;->for:Ljava/lang/String;

    .line 5
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_4

    .line 6
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/fragment/FilePickerFragment;->for:Ljava/lang/String;

    .line 7
    iget-object p2, p0, Lcom/biquge/ebook/app/ui/fragment/FilePickerFragment;->mTvPath:Landroid/widget/TextView;

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 8
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/fragment/FilePickerFragment;->if:Lcom/biquge/ebook/app/widget/filepicker/FilePickerAdapter;

    iget-object p2, p0, Lcom/biquge/ebook/app/ui/fragment/FilePickerFragment;->for:Ljava/lang/String;

    invoke-virtual {p0, p2}, Lcom/biquge/ebook/app/ui/fragment/FilePickerFragment;->synchronized(Ljava/lang/String;)Ljava/util/List;

    move-result-object p2

    .line 9
    invoke-virtual {p1, p2}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setNewData(Ljava/util/List;)V

    .line 10
    invoke-virtual {p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getItemCount()I

    move-result p2

    new-array p2, p2, [Z

    iput-object p2, p1, Lcom/biquge/ebook/app/widget/filepicker/FilePickerAdapter;->do:[Z

    .line 11
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/fragment/FilePickerFragment;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    goto :goto_1

    .line 12
    :cond_0
    iget-object p2, p0, Lcom/biquge/ebook/app/ui/fragment/FilePickerFragment;->new:Ljava/util/LinkedHashMap;

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 13
    iget-object p2, p0, Lcom/biquge/ebook/app/ui/fragment/FilePickerFragment;->new:Ljava/util/LinkedHashMap;

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 14
    :cond_1
    iget-boolean p2, p0, Lcom/biquge/ebook/app/ui/fragment/FilePickerFragment;->case:Z

    if-eqz p2, :cond_2

    .line 15
    iget-object p2, p0, Lcom/biquge/ebook/app/ui/fragment/FilePickerFragment;->new:Ljava/util/LinkedHashMap;

    invoke-virtual {p2}, Ljava/util/LinkedHashMap;->clear()V

    .line 16
    :cond_2
    iget-object p2, p0, Lcom/biquge/ebook/app/ui/fragment/FilePickerFragment;->new:Ljava/util/LinkedHashMap;

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3, p1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    :goto_0
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/fragment/FilePickerFragment;->try:Lcom/apk/l1;

    if-eqz p1, :cond_3

    .line 18
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/fragment/FilePickerFragment;->try:Lcom/apk/l1;

    invoke-interface {p1}, Lcom/apk/l1;->do()V

    .line 19
    :cond_3
    iget-boolean p1, p0, Lcom/biquge/ebook/app/ui/fragment/FilePickerFragment;->case:Z

    if-eqz p1, :cond_4

    .line 20
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/fragment/FilePickerFragment;->if:Lcom/biquge/ebook/app/widget/filepicker/FilePickerAdapter;

    if-eqz p1, :cond_4

    .line 21
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/fragment/FilePickerFragment;->if:Lcom/biquge/ebook/app/widget/filepicker/FilePickerAdapter;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 22
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_4
    :goto_1
    return-void
.end method

.method public final synchronized(Ljava/lang/String;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/fragment/FilePickerFragment;->do:Lcom/apk/wh;

    .line 2
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 3
    invoke-virtual {v1, v0}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    move-result-object p1

    if-nez p1, :cond_0

    .line 4
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    goto :goto_1

    .line 5
    :cond_0
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    .line 6
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 7
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/File;

    .line 8
    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/apk/ze;->finally()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 9
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 10
    :cond_2
    new-instance p1, Lcom/apk/sh;

    invoke-direct {p1}, Lcom/apk/sh;-><init>()V

    invoke-static {v0, p1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    move-object p1, v0

    :goto_1
    return-object p1
.end method
