.class public Lcom/manhua/ui/activity/AddComicFromShelfActivity_ViewBinding;
.super Ljava/lang/Object;
.source "AddComicFromShelfActivity_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field public do:Lcom/manhua/ui/activity/AddComicFromShelfActivity;

.field public for:Landroid/view/View;

.field public if:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/manhua/ui/activity/AddComicFromShelfActivity;Landroid/view/View;)V
    .locals 4
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/manhua/ui/activity/AddComicFromShelfActivity_ViewBinding;->do:Lcom/manhua/ui/activity/AddComicFromShelfActivity;

    const v0, 0x7f0904c2

    const-string v1, "field \'mSelectFinishBT\' and method \'menuClick\'"

    .line 3
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 4
    const-class v2, Landroid/widget/Button;

    const-string v3, "field \'mSelectFinishBT\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p1, Lcom/manhua/ui/activity/AddComicFromShelfActivity;->mSelectFinishBT:Landroid/widget/Button;

    .line 5
    iput-object v1, p0, Lcom/manhua/ui/activity/AddComicFromShelfActivity_ViewBinding;->if:Landroid/view/View;

    .line 6
    new-instance v0, Lcom/manhua/ui/activity/AddComicFromShelfActivity_ViewBinding$do;

    invoke-direct {v0, p0, p1}, Lcom/manhua/ui/activity/AddComicFromShelfActivity_ViewBinding$do;-><init>(Lcom/manhua/ui/activity/AddComicFromShelfActivity_ViewBinding;Lcom/manhua/ui/activity/AddComicFromShelfActivity;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 7
    const-class v0, Landroidx/recyclerview/widget/RecyclerView;

    const v1, 0x7f09048c

    const-string v2, "field \'mRecyclerView\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p1, Lcom/manhua/ui/activity/AddComicFromShelfActivity;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    const v0, 0x7f0904c0

    const-string v1, "method \'menuClick\'"

    .line 8
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object p2

    .line 9
    iput-object p2, p0, Lcom/manhua/ui/activity/AddComicFromShelfActivity_ViewBinding;->for:Landroid/view/View;

    .line 10
    new-instance v0, Lcom/manhua/ui/activity/AddComicFromShelfActivity_ViewBinding$if;

    invoke-direct {v0, p0, p1}, Lcom/manhua/ui/activity/AddComicFromShelfActivity_ViewBinding$if;-><init>(Lcom/manhua/ui/activity/AddComicFromShelfActivity_ViewBinding;Lcom/manhua/ui/activity/AddComicFromShelfActivity;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/manhua/ui/activity/AddComicFromShelfActivity_ViewBinding;->do:Lcom/manhua/ui/activity/AddComicFromShelfActivity;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 2
    iput-object v1, p0, Lcom/manhua/ui/activity/AddComicFromShelfActivity_ViewBinding;->do:Lcom/manhua/ui/activity/AddComicFromShelfActivity;

    .line 3
    iput-object v1, v0, Lcom/manhua/ui/activity/AddComicFromShelfActivity;->mSelectFinishBT:Landroid/widget/Button;

    .line 4
    iput-object v1, v0, Lcom/manhua/ui/activity/AddComicFromShelfActivity;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 5
    iget-object v0, p0, Lcom/manhua/ui/activity/AddComicFromShelfActivity_ViewBinding;->if:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 6
    iput-object v1, p0, Lcom/manhua/ui/activity/AddComicFromShelfActivity_ViewBinding;->if:Landroid/view/View;

    .line 7
    iget-object v0, p0, Lcom/manhua/ui/activity/AddComicFromShelfActivity_ViewBinding;->for:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 8
    iput-object v1, p0, Lcom/manhua/ui/activity/AddComicFromShelfActivity_ViewBinding;->for:Landroid/view/View;

    return-void

    .line 9
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
