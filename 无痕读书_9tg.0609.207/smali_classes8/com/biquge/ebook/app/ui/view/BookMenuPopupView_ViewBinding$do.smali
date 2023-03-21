.class public Lcom/biquge/ebook/app/ui/view/BookMenuPopupView_ViewBinding$do;
.super Lbutterknife/internal/DebouncingOnClickListener;
.source "BookMenuPopupView_ViewBinding.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/biquge/ebook/app/ui/view/BookMenuPopupView_ViewBinding;-><init>(Lcom/biquge/ebook/app/ui/view/BookMenuPopupView;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic do:Lcom/biquge/ebook/app/ui/view/BookMenuPopupView;


# direct methods
.method public constructor <init>(Lcom/biquge/ebook/app/ui/view/BookMenuPopupView_ViewBinding;Lcom/biquge/ebook/app/ui/view/BookMenuPopupView;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/biquge/ebook/app/ui/view/BookMenuPopupView_ViewBinding$do;->do:Lcom/biquge/ebook/app/ui/view/BookMenuPopupView;

    invoke-direct {p0}, Lbutterknife/internal/DebouncingOnClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public doClick(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/view/BookMenuPopupView_ViewBinding$do;->do:Lcom/biquge/ebook/app/ui/view/BookMenuPopupView;

    invoke-virtual {v0, p1}, Lcom/biquge/ebook/app/ui/view/BookMenuPopupView;->menuClick(Landroid/view/View;)V

    return-void
.end method
