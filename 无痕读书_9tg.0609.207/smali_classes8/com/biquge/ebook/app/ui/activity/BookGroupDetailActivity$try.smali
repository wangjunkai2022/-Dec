.class public Lcom/biquge/ebook/app/ui/activity/BookGroupDetailActivity$try;
.super Lcom/apk/v5;
.source "BookGroupDetailActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/biquge/ebook/app/ui/activity/BookGroupDetailActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic do:Lcom/biquge/ebook/app/ui/activity/BookGroupDetailActivity;


# direct methods
.method public constructor <init>(Lcom/biquge/ebook/app/ui/activity/BookGroupDetailActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/biquge/ebook/app/ui/activity/BookGroupDetailActivity$try;->do:Lcom/biquge/ebook/app/ui/activity/BookGroupDetailActivity;

    invoke-direct {p0}, Lcom/apk/v5;-><init>()V

    return-void
.end method


# virtual methods
.method public do()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/activity/BookGroupDetailActivity$try;->do:Lcom/biquge/ebook/app/ui/activity/BookGroupDetailActivity;

    invoke-static {v0}, Lcom/biquge/ebook/app/ui/activity/BookGroupDetailActivity;->l(Lcom/biquge/ebook/app/ui/activity/BookGroupDetailActivity;)V

    return-void
.end method

.method public for(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/biquge/ebook/app/bean/CollectBook;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_2

    .line 1
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/activity/BookGroupDetailActivity$try;->do:Lcom/biquge/ebook/app/ui/activity/BookGroupDetailActivity;

    .line 2
    iput-object p1, v0, Lcom/biquge/ebook/app/ui/activity/BookGroupDetailActivity;->case:Ljava/util/List;

    .line 3
    iget-object v0, v0, Lcom/biquge/ebook/app/ui/activity/BookGroupDetailActivity;->try:Lcom/biquge/ebook/app/adapter/BookGroupAdapter;

    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {v0, p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setNewData(Ljava/util/List;)V

    .line 5
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/activity/BookGroupDetailActivity$try;->do:Lcom/biquge/ebook/app/ui/activity/BookGroupDetailActivity;

    .line 6
    iget-boolean v0, p1, Lcom/biquge/ebook/app/ui/activity/BookGroupDetailActivity;->if:Z

    if-eqz v0, :cond_0

    .line 7
    iget-object p1, p1, Lcom/biquge/ebook/app/ui/activity/BookGroupDetailActivity;->catch:Lcom/apk/v5;

    const/4 v0, 0x1

    const/4 v1, -0x1

    .line 8
    invoke-virtual {p1, v0, v1}, Lcom/apk/v5;->new(ZI)V

    .line 9
    :cond_0
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/activity/BookGroupDetailActivity$try;->do:Lcom/biquge/ebook/app/ui/activity/BookGroupDetailActivity;

    .line 10
    iget-object v0, p1, Lcom/biquge/ebook/app/ui/activity/BookGroupDetailActivity;->try:Lcom/biquge/ebook/app/adapter/BookGroupAdapter;

    if-eqz v0, :cond_1

    .line 11
    invoke-virtual {v0, p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setOnItemClickListener(Lcom/chad/library/adapter/base/BaseQuickAdapter$OnItemClickListener;)V

    .line 12
    iget-object v0, p1, Lcom/biquge/ebook/app/ui/activity/BookGroupDetailActivity;->try:Lcom/biquge/ebook/app/adapter/BookGroupAdapter;

    invoke-virtual {v0, p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setOnItemLongClickListener(Lcom/chad/library/adapter/base/BaseQuickAdapter$OnItemLongClickListener;)V

    .line 13
    iget-object v0, p1, Lcom/biquge/ebook/app/ui/activity/BookGroupDetailActivity;->try:Lcom/biquge/ebook/app/adapter/BookGroupAdapter;

    invoke-virtual {v0, p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setOnItemChildClickListener(Lcom/chad/library/adapter/base/BaseQuickAdapter$OnItemChildClickListener;)V

    .line 14
    iget-object v0, p1, Lcom/biquge/ebook/app/ui/activity/BookGroupDetailActivity;->try:Lcom/biquge/ebook/app/adapter/BookGroupAdapter;

    invoke-virtual {v0, p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setOnItemChildLongClickListener(Lcom/chad/library/adapter/base/BaseQuickAdapter$OnItemChildLongClickListener;)V

    .line 15
    :cond_1
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/activity/BookGroupDetailActivity$try;->do:Lcom/biquge/ebook/app/ui/activity/BookGroupDetailActivity;

    const/4 v0, 0x0

    .line 16
    iput-boolean v0, p1, Lcom/biquge/ebook/app/ui/activity/BookGroupDetailActivity;->if:Z

    :cond_2
    return-void
.end method

.method public new(ZI)V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/activity/BookGroupDetailActivity$try;->do:Lcom/biquge/ebook/app/ui/activity/BookGroupDetailActivity;

    .line 2
    iget-object v0, v0, Lcom/biquge/ebook/app/ui/activity/BookGroupDetailActivity;->try:Lcom/biquge/ebook/app/adapter/BookGroupAdapter;

    if-eqz v0, :cond_1

    .line 3
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/activity/BookGroupDetailActivity$try;->do:Lcom/biquge/ebook/app/ui/activity/BookGroupDetailActivity;

    .line 4
    iget-object v0, v0, Lcom/biquge/ebook/app/ui/activity/BookGroupDetailActivity;->try:Lcom/biquge/ebook/app/adapter/BookGroupAdapter;

    .line 5
    iput-boolean p1, v0, Lcom/biquge/ebook/app/adapter/BookGroupAdapter;->for:Z

    .line 6
    iget-object v1, v0, Lcom/biquge/ebook/app/adapter/BookGroupAdapter;->new:Ljava/util/LinkedHashMap;

    if-eqz v1, :cond_0

    .line 7
    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->clear()V

    .line 8
    :cond_0
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    :cond_1
    if-eqz p1, :cond_3

    .line 9
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/activity/BookGroupDetailActivity$try;->do:Lcom/biquge/ebook/app/ui/activity/BookGroupDetailActivity;

    .line 10
    invoke-virtual {p1}, Lcom/biquge/ebook/app/ui/activity/BookGroupDetailActivity;->r()V

    .line 11
    iget-object v0, p1, Lcom/biquge/ebook/app/ui/activity/BookGroupDetailActivity;->this:Lcom/apk/yg;

    if-eqz v0, :cond_2

    .line 12
    new-instance v0, Lcom/apk/m7;

    invoke-direct {v0, p1}, Lcom/apk/m7;-><init>(Lcom/biquge/ebook/app/ui/activity/BookGroupDetailActivity;)V

    invoke-virtual {p1, v0}, Lcom/apk/i6;->post(Ljava/lang/Runnable;)Z

    :cond_2
    if-ltz p2, :cond_4

    .line 13
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/activity/BookGroupDetailActivity$try;->do:Lcom/biquge/ebook/app/ui/activity/BookGroupDetailActivity;

    .line 14
    invoke-virtual {p1}, Lcom/biquge/ebook/app/ui/activity/BookGroupDetailActivity;->r()V

    .line 15
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/activity/BookGroupDetailActivity$try;->do:Lcom/biquge/ebook/app/ui/activity/BookGroupDetailActivity;

    .line 16
    iget-object p1, p1, Lcom/biquge/ebook/app/ui/activity/BookGroupDetailActivity;->this:Lcom/apk/yg;

    if-eqz p1, :cond_4

    .line 17
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/activity/BookGroupDetailActivity$try;->do:Lcom/biquge/ebook/app/ui/activity/BookGroupDetailActivity;

    .line 18
    iget-object p1, p1, Lcom/biquge/ebook/app/ui/activity/BookGroupDetailActivity;->this:Lcom/apk/yg;

    .line 19
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/activity/BookGroupDetailActivity$try;->do:Lcom/biquge/ebook/app/ui/activity/BookGroupDetailActivity;

    .line 20
    iget-object v0, v0, Lcom/biquge/ebook/app/ui/activity/BookGroupDetailActivity;->try:Lcom/biquge/ebook/app/adapter/BookGroupAdapter;

    .line 21
    invoke-virtual {v0, p2}, Lcom/biquge/ebook/app/adapter/BookGroupAdapter;->for(I)I

    move-result p2

    const/4 v0, -0x1

    .line 22
    invoke-virtual {p1, p2, v0}, Lcom/apk/yg;->do(II)V

    goto :goto_0

    .line 23
    :cond_3
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/activity/BookGroupDetailActivity$try;->do:Lcom/biquge/ebook/app/ui/activity/BookGroupDetailActivity;

    .line 24
    invoke-virtual {p1}, Lcom/biquge/ebook/app/ui/activity/BookGroupDetailActivity;->r()V

    .line 25
    iget-object p2, p1, Lcom/biquge/ebook/app/ui/activity/BookGroupDetailActivity;->this:Lcom/apk/yg;

    if-eqz p2, :cond_4

    invoke-virtual {p2}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result p2

    if-eqz p2, :cond_4

    .line 26
    iget-object p1, p1, Lcom/biquge/ebook/app/ui/activity/BookGroupDetailActivity;->this:Lcom/apk/yg;

    invoke-virtual {p1}, Landroid/widget/PopupWindow;->dismiss()V

    .line 27
    :cond_4
    :goto_0
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/activity/BookGroupDetailActivity$try;->do:Lcom/biquge/ebook/app/ui/activity/BookGroupDetailActivity;

    invoke-static {p1}, Lcom/biquge/ebook/app/ui/activity/BookGroupDetailActivity;->j(Lcom/biquge/ebook/app/ui/activity/BookGroupDetailActivity;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 28
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    return-void
.end method

.method public try(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/activity/BookGroupDetailActivity$try;->do:Lcom/biquge/ebook/app/ui/activity/BookGroupDetailActivity;

    invoke-static {v0, p1}, Lcom/biquge/ebook/app/ui/activity/BookGroupDetailActivity;->k(Lcom/biquge/ebook/app/ui/activity/BookGroupDetailActivity;Ljava/lang/String;)V

    return-void
.end method
