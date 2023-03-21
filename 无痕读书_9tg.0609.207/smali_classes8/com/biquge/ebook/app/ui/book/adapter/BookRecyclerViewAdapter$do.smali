.class public Lcom/biquge/ebook/app/ui/book/adapter/BookRecyclerViewAdapter$do;
.super Ljava/lang/Object;
.source "BookRecyclerViewAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/biquge/ebook/app/ui/book/adapter/BookRecyclerViewAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic do:Lcom/biquge/ebook/app/ui/book/adapter/BookRecyclerViewAdapter;


# direct methods
.method public constructor <init>(Lcom/biquge/ebook/app/ui/book/adapter/BookRecyclerViewAdapter;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/biquge/ebook/app/ui/book/adapter/BookRecyclerViewAdapter$do;->do:Lcom/biquge/ebook/app/ui/book/adapter/BookRecyclerViewAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/book/adapter/BookRecyclerViewAdapter$do;->do:Lcom/biquge/ebook/app/ui/book/adapter/BookRecyclerViewAdapter;

    .line 2
    iget-object v0, v0, Lcom/biquge/ebook/app/ui/book/adapter/BookRecyclerViewAdapter;->this:Landroid/view/View$OnClickListener;

    if-eqz v0, :cond_0

    .line 3
    invoke-interface {v0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    :cond_0
    return-void
.end method
