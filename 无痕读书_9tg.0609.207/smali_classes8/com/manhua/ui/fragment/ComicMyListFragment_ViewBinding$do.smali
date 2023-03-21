.class public Lcom/manhua/ui/fragment/ComicMyListFragment_ViewBinding$do;
.super Lbutterknife/internal/DebouncingOnClickListener;
.source "ComicMyListFragment_ViewBinding.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/manhua/ui/fragment/ComicMyListFragment_ViewBinding;-><init>(Lcom/manhua/ui/fragment/ComicMyListFragment;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic do:Lcom/manhua/ui/fragment/ComicMyListFragment;


# direct methods
.method public constructor <init>(Lcom/manhua/ui/fragment/ComicMyListFragment_ViewBinding;Lcom/manhua/ui/fragment/ComicMyListFragment;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/manhua/ui/fragment/ComicMyListFragment_ViewBinding$do;->do:Lcom/manhua/ui/fragment/ComicMyListFragment;

    invoke-direct {p0}, Lbutterknife/internal/DebouncingOnClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public doClick(Landroid/view/View;)V
    .locals 3

    .line 1
    iget-object p1, p0, Lcom/manhua/ui/fragment/ComicMyListFragment_ViewBinding$do;->do:Lcom/manhua/ui/fragment/ComicMyListFragment;

    if-eqz p1, :cond_0

    .line 2
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p1}, Lcom/apk/g6;->getSupportActivity()Lcom/apk/i6;

    move-result-object v1

    const-class v2, Lcom/manhua/ui/activity/CreateComicListActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 3
    invoke-virtual {p1}, Lcom/apk/g6;->getSupportActivity()Lcom/apk/i6;

    move-result-object p1

    const/16 v1, 0x7d2

    invoke-virtual {p1, v0, v1}, Landroidx/fragment/app/FragmentActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void

    :cond_0
    const/4 p1, 0x0

    .line 4
    throw p1
.end method
