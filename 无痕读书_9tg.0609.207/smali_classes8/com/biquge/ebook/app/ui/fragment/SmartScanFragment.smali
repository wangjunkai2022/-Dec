.class public Lcom/biquge/ebook/app/ui/fragment/SmartScanFragment;
.super Lcom/apk/g6;
.source "SmartScanFragment.java"

# interfaces
.implements Lcom/chad/library/adapter/base/BaseQuickAdapter$OnItemClickListener;


# instance fields
.field public do:Ljava/lang/String;

.field public final for:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field

.field public if:Lcom/biquge/ebook/app/widget/filepicker/FilePickerAdapter;

.field public mEmptyView:Landroid/widget/LinearLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0901ef
    .end annotation
.end field

.field public mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f09048c
    .end annotation
.end field

.field public mSearchLayout:Landroid/widget/LinearLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090498
    .end annotation
.end field

.field public mSmartScanTv:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090499
    .end annotation
.end field

.field public new:Lcom/apk/l1;

.field public try:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/apk/g6;-><init>()V

    const-string v0, ".txt"

    .line 2
    iput-object v0, p0, Lcom/biquge/ebook/app/ui/fragment/SmartScanFragment;->do:Ljava/lang/String;

    .line 3
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/biquge/ebook/app/ui/fragment/SmartScanFragment;->for:Ljava/util/LinkedHashMap;

    return-void
.end method


# virtual methods
.method public getLayoutId()I
    .locals 1

    const v0, 0x7f0c00ca

    return v0
.end method

.method public initData()V
    .locals 8

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "fileType"

    .line 2
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/biquge/ebook/app/ui/fragment/SmartScanFragment;->do:Ljava/lang/String;

    .line 4
    :cond_0
    new-instance v0, Lcom/biquge/ebook/app/widget/filepicker/FilePickerAdapter;

    new-instance v1, Lcom/apk/wh;

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/String;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/biquge/ebook/app/ui/fragment/SmartScanFragment;->do:Ljava/lang/String;

    const-string v6, "."

    const-string v7, ""

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-direct {v1, v3}, Lcom/apk/wh;-><init>([Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lcom/biquge/ebook/app/widget/filepicker/FilePickerAdapter;-><init>(Lcom/apk/wh;)V

    iput-object v0, p0, Lcom/biquge/ebook/app/ui/fragment/SmartScanFragment;->if:Lcom/biquge/ebook/app/widget/filepicker/FilePickerAdapter;

    .line 5
    iget-object v1, p0, Lcom/biquge/ebook/app/ui/fragment/SmartScanFragment;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 6
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/fragment/SmartScanFragment;->if:Lcom/biquge/ebook/app/widget/filepicker/FilePickerAdapter;

    invoke-virtual {v0, p0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setOnItemClickListener(Lcom/chad/library/adapter/base/BaseQuickAdapter$OnItemClickListener;)V

    .line 7
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/fragment/SmartScanFragment;->if:Lcom/biquge/ebook/app/widget/filepicker/FilePickerAdapter;

    if-eqz v0, :cond_1

    iget-boolean v1, p0, Lcom/biquge/ebook/app/ui/fragment/SmartScanFragment;->try:Z

    if-eqz v1, :cond_1

    .line 8
    iput-boolean v2, v0, Lcom/biquge/ebook/app/widget/filepicker/FilePickerAdapter;->new:Z

    .line 9
    :cond_1
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/fragment/SmartScanFragment;->mSmartScanTv:Landroid/widget/TextView;

    const-string v1, "\u81ea\u52a8\u626b\u63cf30K\u4ee5\u4e0a\u5927\u5c0f\u7684\u6587\u4ef6"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public initView()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/fragment/SmartScanFragment;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setHasFixedSize(Z)V

    .line 2
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/fragment/SmartScanFragment;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-static {v0}, Lcom/apk/ze;->else(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 3
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/fragment/SmartScanFragment;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lcom/apk/g6;->getSupportActivity()Lcom/apk/i6;

    move-result-object v2

    invoke-direct {v1, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    return-void
.end method

.method public onItemClick(Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 0

    .line 1
    :try_start_0
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/fragment/SmartScanFragment;->if:Lcom/biquge/ebook/app/widget/filepicker/FilePickerAdapter;

    invoke-virtual {p1, p3}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/io/File;

    if-eqz p1, :cond_2

    .line 2
    iget-object p2, p0, Lcom/biquge/ebook/app/ui/fragment/SmartScanFragment;->for:Ljava/util/LinkedHashMap;

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 3
    iget-object p2, p0, Lcom/biquge/ebook/app/ui/fragment/SmartScanFragment;->for:Ljava/util/LinkedHashMap;

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 4
    :cond_0
    iget-boolean p2, p0, Lcom/biquge/ebook/app/ui/fragment/SmartScanFragment;->try:Z

    if-eqz p2, :cond_1

    .line 5
    iget-object p2, p0, Lcom/biquge/ebook/app/ui/fragment/SmartScanFragment;->for:Ljava/util/LinkedHashMap;

    invoke-virtual {p2}, Ljava/util/LinkedHashMap;->clear()V

    .line 6
    :cond_1
    iget-object p2, p0, Lcom/biquge/ebook/app/ui/fragment/SmartScanFragment;->for:Ljava/util/LinkedHashMap;

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3, p1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/fragment/SmartScanFragment;->new:Lcom/apk/l1;

    if-eqz p1, :cond_3

    .line 8
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/fragment/SmartScanFragment;->new:Lcom/apk/l1;

    invoke-interface {p1}, Lcom/apk/l1;->do()V

    .line 9
    :cond_3
    iget-boolean p1, p0, Lcom/biquge/ebook/app/ui/fragment/SmartScanFragment;->try:Z

    if-eqz p1, :cond_4

    .line 10
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/fragment/SmartScanFragment;->if:Lcom/biquge/ebook/app/widget/filepicker/FilePickerAdapter;

    if-eqz p1, :cond_4

    .line 11
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/fragment/SmartScanFragment;->if:Lcom/biquge/ebook/app/widget/filepicker/FilePickerAdapter;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 12
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_4
    :goto_1
    return-void
.end method
