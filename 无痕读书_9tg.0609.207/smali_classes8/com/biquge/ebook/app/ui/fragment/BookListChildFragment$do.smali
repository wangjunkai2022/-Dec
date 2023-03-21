.class public Lcom/biquge/ebook/app/ui/fragment/BookListChildFragment$do;
.super Ljava/lang/Object;
.source "BookListChildFragment.java"

# interfaces
.implements Lcom/apk/ts;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/biquge/ebook/app/ui/fragment/BookListChildFragment;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic do:Lcom/biquge/ebook/app/ui/fragment/BookListChildFragment;


# direct methods
.method public constructor <init>(Lcom/biquge/ebook/app/ui/fragment/BookListChildFragment;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/biquge/ebook/app/ui/fragment/BookListChildFragment$do;->do:Lcom/biquge/ebook/app/ui/fragment/BookListChildFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public do(Lcom/apk/ss;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/fragment/BookListChildFragment$do;->do:Lcom/biquge/ebook/app/ui/fragment/BookListChildFragment;

    invoke-static {p1}, Lcom/biquge/ebook/app/ui/fragment/BookListChildFragment;->synchronized(Lcom/biquge/ebook/app/ui/fragment/BookListChildFragment;)V

    return-void
.end method

.method public if(Lcom/apk/ss;Landroid/view/View;Landroid/view/View;)Z
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/fragment/BookListChildFragment$do;->do:Lcom/biquge/ebook/app/ui/fragment/BookListChildFragment;

    iget-object p1, p1, Lcom/biquge/ebook/app/ui/fragment/BookListChildFragment;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-static {p1}, Lcom/apk/eg;->case(Landroid/view/View;)Z

    move-result p1

    return p1
.end method
