.class public Lcom/biquge/ebook/app/ui/fragment/BookShelfFragment$for;
.super Lcom/apk/v5;
.source "BookShelfFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/biquge/ebook/app/ui/fragment/BookShelfFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic do:Lcom/biquge/ebook/app/ui/fragment/BookShelfFragment;


# direct methods
.method public constructor <init>(Lcom/biquge/ebook/app/ui/fragment/BookShelfFragment;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/biquge/ebook/app/ui/fragment/BookShelfFragment$for;->do:Lcom/biquge/ebook/app/ui/fragment/BookShelfFragment;

    invoke-direct {p0}, Lcom/apk/v5;-><init>()V

    return-void
.end method

.method public static goto(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/hjq/toast/ToastUtils;->show(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method public case(Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/fragment/BookShelfFragment$for;->do:Lcom/biquge/ebook/app/ui/fragment/BookShelfFragment;

    invoke-virtual {v0}, Lcom/apk/g6;->getSupportActivity()Lcom/apk/i6;

    move-result-object v0

    new-instance v1, Lcom/apk/ia;

    invoke-direct {v1, p1}, Lcom/apk/ia;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/apk/i6;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public do()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/fragment/BookShelfFragment$for;->do:Lcom/biquge/ebook/app/ui/fragment/BookShelfFragment;

    invoke-static {v0}, Lcom/biquge/ebook/app/ui/fragment/BookShelfFragment;->p(Lcom/biquge/ebook/app/ui/fragment/BookShelfFragment;)V

    return-void
.end method

.method public else(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/fragment/BookShelfFragment$for;->do:Lcom/biquge/ebook/app/ui/fragment/BookShelfFragment;

    invoke-static {v0, p1}, Lcom/biquge/ebook/app/ui/fragment/BookShelfFragment;->o(Lcom/biquge/ebook/app/ui/fragment/BookShelfFragment;Ljava/lang/String;)V

    return-void
.end method

.method public if(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/biquge/ebook/app/bean/CollectBook;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/fragment/BookShelfFragment$for;->do:Lcom/biquge/ebook/app/ui/fragment/BookShelfFragment;

    const/4 v1, 0x0

    .line 2
    iput-boolean v1, v0, Lcom/biquge/ebook/app/ui/fragment/BookShelfFragment;->case:Z

    .line 3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 4
    iput-wide v2, v0, Lcom/biquge/ebook/app/ui/fragment/BookShelfFragment;->try:J

    .line 5
    :try_start_0
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/fragment/BookShelfFragment$for;->do:Lcom/biquge/ebook/app/ui/fragment/BookShelfFragment;

    iget-object v0, v0, Lcom/biquge/ebook/app/ui/fragment/BookShelfFragment;->break:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 6
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/fragment/BookShelfFragment$for;->do:Lcom/biquge/ebook/app/ui/fragment/BookShelfFragment;

    iget-object v0, v0, Lcom/biquge/ebook/app/ui/fragment/BookShelfFragment;->break:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 7
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/fragment/BookShelfFragment$for;->do:Lcom/biquge/ebook/app/ui/fragment/BookShelfFragment;

    iget-object p1, p1, Lcom/biquge/ebook/app/ui/fragment/BookShelfFragment;->this:Lcom/biquge/ebook/app/adapter/BookGroupAdapter;

    if-eqz p1, :cond_0

    .line 8
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/fragment/BookShelfFragment$for;->do:Lcom/biquge/ebook/app/ui/fragment/BookShelfFragment;

    iget-object p1, p1, Lcom/biquge/ebook/app/ui/fragment/BookShelfFragment;->this:Lcom/biquge/ebook/app/adapter/BookGroupAdapter;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 9
    :cond_0
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/fragment/BookShelfFragment$for;->do:Lcom/biquge/ebook/app/ui/fragment/BookShelfFragment;

    .line 10
    iget-object v0, p1, Lcom/biquge/ebook/app/ui/fragment/BookShelfFragment;->mPtrClassicFrameLayout:Lcom/chanven/lib/cptr/PtrClassicFrameLayout;

    if-eqz v0, :cond_1

    .line 11
    new-instance v2, Lcom/apk/ma;

    invoke-direct {v2, p1, v1}, Lcom/apk/ma;-><init>(Lcom/biquge/ebook/app/ui/fragment/BookShelfFragment;Z)V

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    .line 12
    :cond_1
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/fragment/BookShelfFragment$for;->do:Lcom/biquge/ebook/app/ui/fragment/BookShelfFragment;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/biquge/ebook/app/ui/fragment/BookShelfFragment;->y(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 13
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 14
    :goto_0
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/fragment/BookShelfFragment$for;->do:Lcom/biquge/ebook/app/ui/fragment/BookShelfFragment;

    invoke-static {p1}, Lcom/biquge/ebook/app/ui/fragment/BookShelfFragment;->h(Lcom/biquge/ebook/app/ui/fragment/BookShelfFragment;)V

    return-void
.end method

.method public new(ZI)V
    .locals 3

    .line 1
    iget-object p2, p0, Lcom/biquge/ebook/app/ui/fragment/BookShelfFragment$for;->do:Lcom/biquge/ebook/app/ui/fragment/BookShelfFragment;

    iget-object v0, p2, Lcom/biquge/ebook/app/ui/fragment/BookShelfFragment;->goto:Lcom/apk/t4;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object p2, p2, Lcom/biquge/ebook/app/ui/fragment/BookShelfFragment;->this:Lcom/biquge/ebook/app/adapter/BookGroupAdapter;

    if-eqz p2, :cond_4

    .line 3
    iput-boolean p1, p2, Lcom/biquge/ebook/app/adapter/BookGroupAdapter;->for:Z

    .line 4
    iget-object v0, p2, Lcom/biquge/ebook/app/adapter/BookGroupAdapter;->new:Ljava/util/LinkedHashMap;

    if-eqz v0, :cond_1

    .line 5
    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->clear()V

    .line 6
    :cond_1
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 7
    iget-object p2, p0, Lcom/biquge/ebook/app/ui/fragment/BookShelfFragment$for;->do:Lcom/biquge/ebook/app/ui/fragment/BookShelfFragment;

    xor-int/lit8 v0, p1, 0x1

    invoke-virtual {p2, v0}, Lcom/biquge/ebook/app/ui/fragment/BookShelfFragment;->y(Z)V

    if-eqz p1, :cond_3

    .line 8
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/fragment/BookShelfFragment$for;->do:Lcom/biquge/ebook/app/ui/fragment/BookShelfFragment;

    .line 9
    iget-object p2, p1, Lcom/biquge/ebook/app/ui/fragment/BookShelfFragment;->while:Lcom/apk/yg;

    if-nez p2, :cond_2

    .line 10
    new-instance p2, Lcom/apk/yg;

    invoke-virtual {p1}, Lcom/apk/g6;->getSupportActivity()Lcom/apk/i6;

    move-result-object v0

    new-instance v1, Lcom/apk/eb;

    invoke-direct {v1, p1}, Lcom/apk/eb;-><init>(Lcom/biquge/ebook/app/ui/fragment/BookShelfFragment;)V

    invoke-direct {p2, v0, v1}, Lcom/apk/yg;-><init>(Landroid/app/Activity;Lcom/apk/bg;)V

    iput-object p2, p1, Lcom/biquge/ebook/app/ui/fragment/BookShelfFragment;->while:Lcom/apk/yg;

    .line 11
    :cond_2
    iget-object p2, p1, Lcom/biquge/ebook/app/ui/fragment/BookShelfFragment;->while:Lcom/apk/yg;

    iget-object v0, p1, Lcom/biquge/ebook/app/ui/fragment/BookShelfFragment;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    const/16 v1, 0x50

    const/4 v2, 0x0

    invoke-virtual {p2, v0, v1, v2, v2}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 12
    iget-object p1, p1, Lcom/biquge/ebook/app/ui/fragment/BookShelfFragment;->while:Lcom/apk/yg;

    const/4 p2, -0x1

    .line 13
    invoke-virtual {p1, v2, p2}, Lcom/apk/yg;->do(II)V

    goto :goto_0

    .line 14
    :cond_3
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/fragment/BookShelfFragment$for;->do:Lcom/biquge/ebook/app/ui/fragment/BookShelfFragment;

    .line 15
    iget-object p2, p1, Lcom/biquge/ebook/app/ui/fragment/BookShelfFragment;->while:Lcom/apk/yg;

    if-eqz p2, :cond_4

    invoke-virtual {p2}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result p2

    if-eqz p2, :cond_4

    .line 16
    iget-object p1, p1, Lcom/biquge/ebook/app/ui/fragment/BookShelfFragment;->while:Lcom/apk/yg;

    invoke-virtual {p1}, Landroid/widget/PopupWindow;->dismiss()V

    :cond_4
    :goto_0
    return-void
.end method

.method public try(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/fragment/BookShelfFragment$for;->do:Lcom/biquge/ebook/app/ui/fragment/BookShelfFragment;

    invoke-static {v0, p1}, Lcom/biquge/ebook/app/ui/fragment/BookShelfFragment;->o(Lcom/biquge/ebook/app/ui/fragment/BookShelfFragment;Ljava/lang/String;)V

    return-void
.end method
