.class public Lcom/biquge/ebook/app/ui/view/BookMenuPopupView_ViewBinding;
.super Ljava/lang/Object;
.source "BookMenuPopupView_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field public do:Lcom/biquge/ebook/app/ui/view/BookMenuPopupView;

.field public for:Landroid/view/View;

.field public if:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/biquge/ebook/app/ui/view/BookMenuPopupView;Landroid/view/View;)V
    .locals 4
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/biquge/ebook/app/ui/view/BookMenuPopupView_ViewBinding;->do:Lcom/biquge/ebook/app/ui/view/BookMenuPopupView;

    .line 3
    const-class v0, Landroidx/recyclerview/widget/RecyclerView;

    const v1, 0x7f0901cd

    const-string v2, "field \'menuRecyclerView\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p1, Lcom/biquge/ebook/app/ui/view/BookMenuPopupView;->menuRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 4
    const-class v0, Lcom/biquge/ebook/app/ui/view/CoverImageView;

    const v1, 0x7f0901c9

    const-string v2, "field \'headView\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/biquge/ebook/app/ui/view/CoverImageView;

    iput-object v0, p1, Lcom/biquge/ebook/app/ui/view/BookMenuPopupView;->headView:Lcom/biquge/ebook/app/ui/view/CoverImageView;

    .line 5
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f0901cb

    const-string v2, "field \'nameTxt\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/biquge/ebook/app/ui/view/BookMenuPopupView;->nameTxt:Landroid/widget/TextView;

    .line 6
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f0901c6

    const-string v2, "field \'authorTxt\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/biquge/ebook/app/ui/view/BookMenuPopupView;->authorTxt:Landroid/widget/TextView;

    .line 7
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f0901cc

    const-string v2, "field \'newChapterTxt\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/biquge/ebook/app/ui/view/BookMenuPopupView;->newChapterTxt:Landroid/widget/TextView;

    const v0, 0x7f0901c8

    const-string v1, "field \'detailTxt\' and method \'menuClick\'"

    .line 8
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 9
    const-class v2, Landroid/widget/TextView;

    const-string v3, "field \'detailTxt\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/biquge/ebook/app/ui/view/BookMenuPopupView;->detailTxt:Landroid/widget/TextView;

    .line 10
    iput-object v1, p0, Lcom/biquge/ebook/app/ui/view/BookMenuPopupView_ViewBinding;->if:Landroid/view/View;

    .line 11
    new-instance v0, Lcom/biquge/ebook/app/ui/view/BookMenuPopupView_ViewBinding$do;

    invoke-direct {v0, p0, p1}, Lcom/biquge/ebook/app/ui/view/BookMenuPopupView_ViewBinding$do;-><init>(Lcom/biquge/ebook/app/ui/view/BookMenuPopupView_ViewBinding;Lcom/biquge/ebook/app/ui/view/BookMenuPopupView;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f090418

    const-string v1, "method \'menuClick\'"

    .line 12
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object p2

    .line 13
    iput-object p2, p0, Lcom/biquge/ebook/app/ui/view/BookMenuPopupView_ViewBinding;->for:Landroid/view/View;

    .line 14
    new-instance v0, Lcom/biquge/ebook/app/ui/view/BookMenuPopupView_ViewBinding$if;

    invoke-direct {v0, p0, p1}, Lcom/biquge/ebook/app/ui/view/BookMenuPopupView_ViewBinding$if;-><init>(Lcom/biquge/ebook/app/ui/view/BookMenuPopupView_ViewBinding;Lcom/biquge/ebook/app/ui/view/BookMenuPopupView;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/view/BookMenuPopupView_ViewBinding;->do:Lcom/biquge/ebook/app/ui/view/BookMenuPopupView;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 2
    iput-object v1, p0, Lcom/biquge/ebook/app/ui/view/BookMenuPopupView_ViewBinding;->do:Lcom/biquge/ebook/app/ui/view/BookMenuPopupView;

    .line 3
    iput-object v1, v0, Lcom/biquge/ebook/app/ui/view/BookMenuPopupView;->menuRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 4
    iput-object v1, v0, Lcom/biquge/ebook/app/ui/view/BookMenuPopupView;->headView:Lcom/biquge/ebook/app/ui/view/CoverImageView;

    .line 5
    iput-object v1, v0, Lcom/biquge/ebook/app/ui/view/BookMenuPopupView;->nameTxt:Landroid/widget/TextView;

    .line 6
    iput-object v1, v0, Lcom/biquge/ebook/app/ui/view/BookMenuPopupView;->authorTxt:Landroid/widget/TextView;

    .line 7
    iput-object v1, v0, Lcom/biquge/ebook/app/ui/view/BookMenuPopupView;->newChapterTxt:Landroid/widget/TextView;

    .line 8
    iput-object v1, v0, Lcom/biquge/ebook/app/ui/view/BookMenuPopupView;->detailTxt:Landroid/widget/TextView;

    .line 9
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/view/BookMenuPopupView_ViewBinding;->if:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 10
    iput-object v1, p0, Lcom/biquge/ebook/app/ui/view/BookMenuPopupView_ViewBinding;->if:Landroid/view/View;

    .line 11
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/view/BookMenuPopupView_ViewBinding;->for:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 12
    iput-object v1, p0, Lcom/biquge/ebook/app/ui/view/BookMenuPopupView_ViewBinding;->for:Landroid/view/View;

    return-void

    .line 13
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
