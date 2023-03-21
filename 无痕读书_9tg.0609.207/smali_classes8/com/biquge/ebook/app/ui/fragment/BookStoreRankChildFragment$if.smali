.class public Lcom/biquge/ebook/app/ui/fragment/BookStoreRankChildFragment$if;
.super Ljava/lang/Object;
.source "BookStoreRankChildFragment.java"

# interfaces
.implements Lcom/apk/ts;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/biquge/ebook/app/ui/fragment/BookStoreRankChildFragment;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic do:Lcom/biquge/ebook/app/ui/fragment/BookStoreRankChildFragment;


# direct methods
.method public constructor <init>(Lcom/biquge/ebook/app/ui/fragment/BookStoreRankChildFragment;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/biquge/ebook/app/ui/fragment/BookStoreRankChildFragment$if;->do:Lcom/biquge/ebook/app/ui/fragment/BookStoreRankChildFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public do(Lcom/apk/ss;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/fragment/BookStoreRankChildFragment$if;->do:Lcom/biquge/ebook/app/ui/fragment/BookStoreRankChildFragment;

    invoke-static {p1}, Lcom/biquge/ebook/app/ui/fragment/BookStoreRankChildFragment;->f(Lcom/biquge/ebook/app/ui/fragment/BookStoreRankChildFragment;)V

    return-void
.end method

.method public if(Lcom/apk/ss;Landroid/view/View;Landroid/view/View;)Z
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/fragment/BookStoreRankChildFragment$if;->do:Lcom/biquge/ebook/app/ui/fragment/BookStoreRankChildFragment;

    iget-object p1, p1, Lcom/biquge/ebook/app/ui/fragment/BookStoreRankChildFragment;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-static {p1}, Lcom/apk/eg;->case(Landroid/view/View;)Z

    move-result p1

    return p1
.end method
