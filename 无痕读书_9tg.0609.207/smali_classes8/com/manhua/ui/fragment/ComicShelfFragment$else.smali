.class public Lcom/manhua/ui/fragment/ComicShelfFragment$else;
.super Lcom/apk/s5;
.source "ComicShelfFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/manhua/ui/fragment/ComicShelfFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic do:Lcom/manhua/ui/fragment/ComicShelfFragment;


# direct methods
.method public constructor <init>(Lcom/manhua/ui/fragment/ComicShelfFragment;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/manhua/ui/fragment/ComicShelfFragment$else;->do:Lcom/manhua/ui/fragment/ComicShelfFragment;

    invoke-direct {p0}, Lcom/apk/s5;-><init>()V

    return-void
.end method

.method public static else(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/hjq/toast/ToastUtils;->show(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method public case(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/manhua/ui/fragment/ComicShelfFragment$else;->do:Lcom/manhua/ui/fragment/ComicShelfFragment;

    invoke-static {v0, p1}, Lcom/manhua/ui/fragment/ComicShelfFragment;->h(Lcom/manhua/ui/fragment/ComicShelfFragment;Ljava/lang/String;)V

    return-void
.end method

.method public do()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/manhua/ui/fragment/ComicShelfFragment$else;->do:Lcom/manhua/ui/fragment/ComicShelfFragment;

    invoke-static {v0}, Lcom/manhua/ui/fragment/ComicShelfFragment;->i(Lcom/manhua/ui/fragment/ComicShelfFragment;)V

    return-void
.end method

.method public for(ZI)V
    .locals 3

    .line 1
    iget-object p2, p0, Lcom/manhua/ui/fragment/ComicShelfFragment$else;->do:Lcom/manhua/ui/fragment/ComicShelfFragment;

    .line 2
    iget-object v0, p2, Lcom/manhua/ui/fragment/ComicShelfFragment;->while:Lcom/apk/p3;

    if-nez v0, :cond_0

    return-void

    .line 3
    :cond_0
    iget-object p2, p2, Lcom/manhua/ui/fragment/ComicShelfFragment;->try:Lcom/manhua/adapter/ComicGroupAdapter;

    if-eqz p2, :cond_4

    .line 4
    iput-boolean p1, p2, Lcom/manhua/adapter/ComicGroupAdapter;->for:Z

    .line 5
    iget-object v0, p2, Lcom/manhua/adapter/ComicGroupAdapter;->new:Ljava/util/LinkedHashMap;

    if-eqz v0, :cond_1

    .line 6
    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->clear()V

    .line 7
    :cond_1
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 8
    iget-object p2, p0, Lcom/manhua/ui/fragment/ComicShelfFragment$else;->do:Lcom/manhua/ui/fragment/ComicShelfFragment;

    xor-int/lit8 v0, p1, 0x1

    invoke-virtual {p2, v0}, Lcom/manhua/ui/fragment/ComicShelfFragment;->v(Z)V

    if-eqz p1, :cond_3

    .line 9
    iget-object p1, p0, Lcom/manhua/ui/fragment/ComicShelfFragment$else;->do:Lcom/manhua/ui/fragment/ComicShelfFragment;

    .line 10
    iget-object p2, p1, Lcom/manhua/ui/fragment/ComicShelfFragment;->throw:Lcom/apk/yg;

    if-nez p2, :cond_2

    .line 11
    new-instance p2, Lcom/apk/yg;

    invoke-virtual {p1}, Lcom/apk/g6;->getSupportActivity()Lcom/apk/i6;

    move-result-object v0

    new-instance v1, Lcom/apk/b20;

    invoke-direct {v1, p1}, Lcom/apk/b20;-><init>(Lcom/manhua/ui/fragment/ComicShelfFragment;)V

    invoke-direct {p2, v0, v1}, Lcom/apk/yg;-><init>(Landroid/app/Activity;Lcom/apk/bg;)V

    iput-object p2, p1, Lcom/manhua/ui/fragment/ComicShelfFragment;->throw:Lcom/apk/yg;

    .line 12
    :cond_2
    iget-object p2, p1, Lcom/manhua/ui/fragment/ComicShelfFragment;->throw:Lcom/apk/yg;

    iget-object v0, p1, Lcom/manhua/ui/fragment/ComicShelfFragment;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    const/16 v1, 0x50

    const/4 v2, 0x0

    invoke-virtual {p2, v0, v1, v2, v2}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 13
    iget-object p1, p1, Lcom/manhua/ui/fragment/ComicShelfFragment;->throw:Lcom/apk/yg;

    const/4 p2, -0x1

    .line 14
    invoke-virtual {p1, v2, p2}, Lcom/apk/yg;->do(II)V

    goto :goto_0

    .line 15
    :cond_3
    iget-object p1, p0, Lcom/manhua/ui/fragment/ComicShelfFragment$else;->do:Lcom/manhua/ui/fragment/ComicShelfFragment;

    .line 16
    iget-object p2, p1, Lcom/manhua/ui/fragment/ComicShelfFragment;->throw:Lcom/apk/yg;

    if-eqz p2, :cond_4

    invoke-virtual {p2}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result p2

    if-eqz p2, :cond_4

    .line 17
    iget-object p1, p1, Lcom/manhua/ui/fragment/ComicShelfFragment;->throw:Lcom/apk/yg;

    invoke-virtual {p1}, Landroid/widget/PopupWindow;->dismiss()V

    :cond_4
    :goto_0
    return-void
.end method

.method public if(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/manhua/data/bean/ComicCollectBean;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/manhua/ui/fragment/ComicShelfFragment$else;->do:Lcom/manhua/ui/fragment/ComicShelfFragment;

    const/4 v1, 0x0

    .line 2
    iput-boolean v1, v0, Lcom/manhua/ui/fragment/ComicShelfFragment;->this:Z

    .line 3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 4
    iput-wide v2, v0, Lcom/manhua/ui/fragment/ComicShelfFragment;->if:J

    .line 5
    :try_start_0
    iget-object v0, p0, Lcom/manhua/ui/fragment/ComicShelfFragment$else;->do:Lcom/manhua/ui/fragment/ComicShelfFragment;

    .line 6
    iget-object v0, v0, Lcom/manhua/ui/fragment/ComicShelfFragment;->case:Ljava/util/List;

    .line 7
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 8
    iget-object v0, p0, Lcom/manhua/ui/fragment/ComicShelfFragment$else;->do:Lcom/manhua/ui/fragment/ComicShelfFragment;

    .line 9
    iget-object v0, v0, Lcom/manhua/ui/fragment/ComicShelfFragment;->case:Ljava/util/List;

    .line 10
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 11
    iget-object p1, p0, Lcom/manhua/ui/fragment/ComicShelfFragment$else;->do:Lcom/manhua/ui/fragment/ComicShelfFragment;

    .line 12
    iget-object p1, p1, Lcom/manhua/ui/fragment/ComicShelfFragment;->try:Lcom/manhua/adapter/ComicGroupAdapter;

    if-eqz p1, :cond_0

    .line 13
    iget-object p1, p0, Lcom/manhua/ui/fragment/ComicShelfFragment$else;->do:Lcom/manhua/ui/fragment/ComicShelfFragment;

    .line 14
    iget-object p1, p1, Lcom/manhua/ui/fragment/ComicShelfFragment;->try:Lcom/manhua/adapter/ComicGroupAdapter;

    .line 15
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 16
    :cond_0
    iget-object p1, p0, Lcom/manhua/ui/fragment/ComicShelfFragment$else;->do:Lcom/manhua/ui/fragment/ComicShelfFragment;

    .line 17
    iget-object v0, p1, Lcom/manhua/ui/fragment/ComicShelfFragment;->mPtrClassicFrameLayout:Lcom/chanven/lib/cptr/PtrClassicFrameLayout;

    if-eqz v0, :cond_1

    .line 18
    new-instance v2, Lcom/manhua/ui/fragment/ComicShelfFragment$if;

    invoke-direct {v2, p1, v1}, Lcom/manhua/ui/fragment/ComicShelfFragment$if;-><init>(Lcom/manhua/ui/fragment/ComicShelfFragment;Z)V

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    .line 19
    :cond_1
    iget-object p1, p0, Lcom/manhua/ui/fragment/ComicShelfFragment$else;->do:Lcom/manhua/ui/fragment/ComicShelfFragment;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/manhua/ui/fragment/ComicShelfFragment;->v(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 20
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 21
    :goto_0
    iget-object p1, p0, Lcom/manhua/ui/fragment/ComicShelfFragment$else;->do:Lcom/manhua/ui/fragment/ComicShelfFragment;

    invoke-static {p1}, Lcom/manhua/ui/fragment/ComicShelfFragment;->k(Lcom/manhua/ui/fragment/ComicShelfFragment;)V

    return-void
.end method

.method public new(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/manhua/ui/fragment/ComicShelfFragment$else;->do:Lcom/manhua/ui/fragment/ComicShelfFragment;

    invoke-static {v0, p1}, Lcom/manhua/ui/fragment/ComicShelfFragment;->h(Lcom/manhua/ui/fragment/ComicShelfFragment;Ljava/lang/String;)V

    return-void
.end method

.method public try(Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/manhua/ui/fragment/ComicShelfFragment$else;->do:Lcom/manhua/ui/fragment/ComicShelfFragment;

    invoke-virtual {v0}, Lcom/apk/g6;->getSupportActivity()Lcom/apk/i6;

    move-result-object v0

    new-instance v1, Lcom/apk/k10;

    invoke-direct {v1, p1}, Lcom/apk/k10;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/apk/i6;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
