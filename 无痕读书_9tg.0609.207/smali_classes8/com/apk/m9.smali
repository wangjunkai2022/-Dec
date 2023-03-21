.class public Lcom/apk/m9;
.super Ljava/lang/Object;
.source "NewBookReadMenuView.java"

# interfaces
.implements Lcom/chad/library/adapter/base/BaseQuickAdapter$OnItemClickListener;


# instance fields
.field public final synthetic do:Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView;


# direct methods
.method public constructor <init>(Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/apk/m9;->do:Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 0

    .line 1
    invoke-static {}, Lcom/apk/g2;->const()I

    move-result p1

    if-ne p1, p3, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-static {p3}, Lcom/apk/g2;->abstract(I)V

    const/4 p1, -0x1

    .line 3
    invoke-static {p1}, Lcom/apk/g2;->continue(I)V

    .line 4
    invoke-static {p3}, Lcom/apk/g2;->package(I)V

    .line 5
    iget-object p1, p0, Lcom/apk/m9;->do:Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView;

    .line 6
    iget-object p1, p1, Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView;->new:Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView$native;

    .line 7
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 8
    iget-object p1, p0, Lcom/apk/m9;->do:Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView;

    .line 9
    iget-object p1, p1, Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView;->case:Lcom/apk/l2;

    if-eqz p1, :cond_1

    .line 10
    invoke-interface {p1}, Lcom/apk/l2;->finally()V

    :cond_1
    return-void
.end method
