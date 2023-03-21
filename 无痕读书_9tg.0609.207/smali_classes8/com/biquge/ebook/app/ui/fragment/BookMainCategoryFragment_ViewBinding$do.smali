.class public Lcom/biquge/ebook/app/ui/fragment/BookMainCategoryFragment_ViewBinding$do;
.super Lbutterknife/internal/DebouncingOnClickListener;
.source "BookMainCategoryFragment_ViewBinding.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/biquge/ebook/app/ui/fragment/BookMainCategoryFragment_ViewBinding;-><init>(Lcom/biquge/ebook/app/ui/fragment/BookMainCategoryFragment;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic do:Lcom/biquge/ebook/app/ui/fragment/BookMainCategoryFragment;


# direct methods
.method public constructor <init>(Lcom/biquge/ebook/app/ui/fragment/BookMainCategoryFragment_ViewBinding;Lcom/biquge/ebook/app/ui/fragment/BookMainCategoryFragment;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/biquge/ebook/app/ui/fragment/BookMainCategoryFragment_ViewBinding$do;->do:Lcom/biquge/ebook/app/ui/fragment/BookMainCategoryFragment;

    invoke-direct {p0}, Lbutterknife/internal/DebouncingOnClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public doClick(Landroid/view/View;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/fragment/BookMainCategoryFragment_ViewBinding$do;->do:Lcom/biquge/ebook/app/ui/fragment/BookMainCategoryFragment;

    invoke-virtual {p1}, Lcom/biquge/ebook/app/ui/fragment/BookMainCategoryFragment;->menuClick()V

    return-void
.end method
