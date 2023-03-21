.class public Lcom/biquge/ebook/app/ui/activity/SkinActivity;
.super Lcom/apk/f6;
.source "SkinActivity.java"

# interfaces
.implements Lcom/chad/library/adapter/base/BaseQuickAdapter$OnItemClickListener;


# instance fields
.field public do:Lcom/biquge/ebook/app/adapter/SwitchSkinAdapter;

.field public mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0904f1
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/apk/f6;-><init>()V

    return-void
.end method


# virtual methods
.method public getLayoutId()I
    .locals 1

    const v0, 0x7f0c0055

    return v0
.end method

.method public initData()V
    .locals 2

    .line 1
    new-instance v0, Lcom/biquge/ebook/app/adapter/SwitchSkinAdapter;

    invoke-static {}, Lcom/apk/ze;->i()Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/biquge/ebook/app/adapter/SwitchSkinAdapter;-><init>(Ljava/util/List;)V

    iput-object v0, p0, Lcom/biquge/ebook/app/ui/activity/SkinActivity;->do:Lcom/biquge/ebook/app/adapter/SwitchSkinAdapter;

    .line 2
    iget-object v1, p0, Lcom/biquge/ebook/app/ui/activity/SkinActivity;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 3
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/activity/SkinActivity;->do:Lcom/biquge/ebook/app/adapter/SwitchSkinAdapter;

    invoke-virtual {v0, p0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setOnItemClickListener(Lcom/chad/library/adapter/base/BaseQuickAdapter$OnItemClickListener;)V

    return-void
.end method

.method public initView()V
    .locals 3

    const v0, 0x7f0904f0

    const v1, 0x7f100308

    .line 1
    invoke-virtual {p0, v0, v1}, Lcom/apk/f6;->initTopBarOnlyTitle(II)V

    .line 2
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/activity/SkinActivity;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Landroidx/recyclerview/widget/GridLayoutManager;

    const/4 v2, 0x2

    invoke-direct {v1, p0, v2}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 3
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/activity/SkinActivity;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setHasFixedSize(Z)V

    .line 4
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/activity/SkinActivity;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-static {v0}, Lcom/apk/ze;->else(Landroidx/recyclerview/widget/RecyclerView;)V

    return-void
.end method

.method public isSwipeBackEnable()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onItemClick(Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 4

    const-string p1, "APP_SKIN_STYLE_KEY"

    const/4 p2, 0x0

    .line 1
    invoke-static {p1, p2}, Lcom/apk/ze;->instanceof(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, p3, :cond_0

    return-void

    :cond_0
    if-nez p3, :cond_1

    .line 2
    sget-object v0, Lcom/apk/yp0;->class:Lcom/apk/yp0;

    const/4 v1, 0x0

    const/4 v2, -0x1

    const-string v3, ""

    .line 3
    invoke-virtual {v0, v3, v1, v2}, Lcom/apk/yp0;->for(Ljava/lang/String;Lcom/apk/yp0$if;I)Landroid/os/AsyncTask;

    goto :goto_0

    .line 4
    :cond_1
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/activity/SkinActivity;->do:Lcom/biquge/ebook/app/adapter/SwitchSkinAdapter;

    invoke-virtual {v0, p3}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/biquge/ebook/app/bean/SkinModel;

    if-eqz v0, :cond_2

    .line 5
    invoke-virtual {v0}, Lcom/biquge/ebook/app/bean/SkinModel;->getTag()Ljava/lang/String;

    move-result-object v0

    .line 6
    sget-object v1, Lcom/apk/yp0;->class:Lcom/apk/yp0;

    const/4 v2, 0x1

    .line 7
    invoke-virtual {v1, v0, v2}, Lcom/apk/yp0;->if(Ljava/lang/String;I)Landroid/os/AsyncTask;

    .line 8
    :cond_2
    :goto_0
    sget-object v0, Lcom/apk/tt;->do:Lcom/tencent/mmkv/MMKV;

    invoke-virtual {v0, p1, p3}, Lcom/tencent/mmkv/MMKV;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 9
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/activity/SkinActivity;->do:Lcom/biquge/ebook/app/adapter/SwitchSkinAdapter;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 10
    invoke-static {p2}, Lcom/apk/da;->finally(Z)V

    .line 11
    invoke-static {}, Lcom/apk/ze;->i()Ljava/util/List;

    move-result-object p1

    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/biquge/ebook/app/bean/SkinModel;

    invoke-virtual {p1}, Lcom/biquge/ebook/app/bean/SkinModel;->getTag()Ljava/lang/String;

    move-result-object p1

    .line 12
    sget-object p2, Lcom/biquge/ebook/app/app/AppContext;->case:Lcom/biquge/ebook/app/app/AppContext;

    const-string p3, "black"

    .line 13
    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    invoke-virtual {p2, p1}, Lcom/biquge/ebook/app/app/AppContext;->for(Z)V

    return-void
.end method
